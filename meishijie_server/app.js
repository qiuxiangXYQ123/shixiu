//app.js 服务器端程序
//1:下载三个模块 
//  cors            完成跨域处理
//  express-session session对象
//  mysql           数据库驱动
//  express         web服务器
//下载命令在线  
//npm i cors express-session express  mysql


// 上传的模块
const fs = require('fs');
const multer  = require('multer');

//2:将以上四个模块引入到当程序
const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const session = require("express-session");
//3:创建数据库连接池(池 提高效率)
var pool = mysql.createPool({
  host: "w.rdc.sae.sina.com.cn", //数据库地址
  user: "122l04llkw",      //数据库用户名
  password: "zz2mkzi3h3h2iw30m0jkzj05xhljk204x5wwy4k3",      //数据库密码
  port: 3306,      //数据库端口
  database: "app_msuipai",//库名
  connectionLimit: 15//15连接
})
//4:配置跨域模块
//  允许哪个程序跨域访问服务器
//  脚手架:5050 允许5050访问我
//  服务器:4000 你
var server = express();
server.use(cors({
  //允许程序列表
  origin: ["http://127.0.0.1:5150", "http://localhost:5050","*"],
  credentials: true//每次请求需要验证
}))
//5:配置session模块
server.use(session({
  secret: "128位字符串",//安全字符串
  resave: true,//请求时更新数据
  saveUninitialized: true//保存初始数据
}))
//6:配置项目静态目录 public
server.use(express.static("public"))
//7:创建express对象绑定3000端口


//创建目录  
var createFolder = function(folder){
  try{
      fs.accessSync(folder); 
  }catch(e){
      fs.mkdirSync(folder);
  }  
};

var uploadFolder = './upload';

createFolder(uploadFolder);

// 通过 filename 属性定制
var storage = multer.diskStorage({
    //目标:目录
    destination: function (req, file, cb) {
        cb(null, uploadFolder);    // 保存的路径，备注：需要自己创建
    },
    filename: function (req, file, cb) {
        // 将保存文件名设置为 字段名 + 时间戳，比如 logo-1478521468943
        var idx = file.originalname.lastIndexOf('.');
        var suff = file.originalname.substring(idx);
        cb(null, file.fieldname+"-"+Date.now()+suff);  
    }
});

// 通过 storage 选项来对 上传行为 进行定制化
var upload = multer({ storage: storage })

// 单图上传
server.post('/upload', upload.single('avatar'), function(req, res, next){
  var file = req.file;
  res.send({code: '1',msg:"上传成功"});
  console.log(file)
});

server.get('/form', function(req, res, next){
    var form = fs.readFileSync('./form.html', {encoding: 'utf8'});
    res.send(form);
});


server.listen(5050);









//8:功能一:完成用户登录
server.get("/login", (req, res) => {
  //(1)获取脚手架参数 uname upwd
  var phone = req.query.phone;
  var upwd = req.query.upwd;
  //(2)创建sql语句查询
  var sql = "SELECT uid FROM user WHERE  phone= ? AND upwd = ?";
  //(3)执行sql语句
  pool.query(sql, [phone, upwd], (err, result) => {
    if (err) throw err;
    //(4)获取执行结果
    //(5)判断查询是否成功 result.length
    if (result.length == 0) {
      res.send({ code: -1, msg: "用户名或密码有误" })
    } else {
      // 保存用户id在session对象中
      result = JSON.stringify(result);
      result = JSON.parse(result);
      req.session.uid=result[0].uid
      res.send({ code: 1, msg: "登录成功" })
    }
  })
})

// 功能二
server.get("/res", (req, res) => {
  //(1)获取脚手架参数 uname upwd
  var obj=req.query;
  console.log(obj)
  //(2)创建sql语句查询
  var sql = "INSERT INTO user SET ?";
  //(3)执行sql语句
  pool.query(sql, [obj], (err, result) => {
    if (err) throw err;
    //(4)获取执行结果
    //(5)判断查询是否成功 result.length
    if (result.affectedRows<0) {
      res.send({ code: -1, msg: "注册失败" })
    } else {
      // 保存用户id在session对象中
      res.send({ code: 1, msg: "注册成功" })
    }
  })
})

//#检测
//(1)查询数据库是否有xz_login
//   USE xz;
//   SELECT * FROM xz_login;
//(2)启动服务器
//   node app.js
//(3)打开浏览器在地址栏输入按回
//   http://127.0.0.1:3000/login?uname=tom&upwd=123
//   http://127.0.0.1:3000/login?uname=tom&upwd=122   
//app.js 复9~73   


// 功能三 查询关注
server.get("/follow", (req, res) => {
  var uid = req.session.uid;
  var bool=req.query.bool
  if(!uid){
    res.send({code:-1,msg:"请登录"});
    return;
  }
  // 获取页面显示的条数
  var pno = req.query.pno;
  var ps=10;
  //3:设置默认值 pno=1 
  if(!pno){pno=1}
  //4:计算第一问号值
  var off = (pno-1)*ps;
  //5:对pageSize转int
  pno = parseInt(pno); 
  //(2)创建sql语句查询
  if(bool=="follow"){
    var sql = "SELECT * FROM user WHERE uid IN (SELECT u_ta FROM user_follow WHERE uid = ?) LIMIT ?,?"; 
  }else{
    var sql = "SELECT * FROM user WHERE uid IN (SELECT u_ta FROM user_follower WHERE uid = ?) LIMIT ?,?"; 
  }
  //(3)执行sql语句
  pool.query(sql, [uid,off,ps], (err, result) => {
    if (err) throw err;
    //(4)获取执行结果
    //(5)判断是否关注了其他人
    if (result.length == 0) {
      res.send({code:0,msg:"暂无对象",data:result})
    } else {

      res.send({code:1,msg:"获取成功",data:result})
    }
  })
})

// 功能三 查询粉丝


// 查询关注或粉丝的数量
server.get("/count",(req,res)=>{
  var uid=req.session.uid;
  var bool=req.query.bool;
  if(bool=="follow"){
    var sql = "SELECT COUNT(*) FROM user_follow WHERE uid =?";
  }else{
    var sql = "SELECT COUNT(*) FROM user_follower WHERE uid =?";    
  }
  //(3)执行sql语句
  pool.query(sql, [uid], (err, result) => {
    if (err) throw err;
    //(4)获取执行结果
    //(5)判断是否关注了其他人
    if (result.length==0) {
      res.send({code:0,msg:"查询失败"})
    } else {
      res.send({code:0,msg:"查询成功",data:result})
    }
  })
})




// 功能四  添加关注
server.get("/addgz", (req, res) => {
  //获取uid
  var uid=req.session.uid
  var u_ta=req.query.u_ta;
  //(2)创建sql语句插入
  var sql = "INSERT INTO user_follow SET uid=?,u_ta=?";
  //(3)执行sql语句
  pool.query(sql, [uid,u_ta], (err, result) => {
    if (err) throw err;
    //(4)获取执行结果
    //(5)判断是否关注了其他人
    if (result.affectedRows<0) {
      res.send({code:0,msg:"添加失败"})
    } else {
      res.send({code:0,msg:"添加成功",data:result})
    }
  })
})

// 功能四  删除关注
server.get("/removegz", (req, res) => {
  //(1)获取其uid
  var uid = req.session.uid;
  var u_ta = req.query.u_ta;
  //(2)创建sql语句查询
  var sql = "DELETE FROM user_follow WHERE uid=? AND u_ta=?";
  //(3)执行sql语句
  pool.query(sql, [uid,u_ta], (err, result) => {
    if (err) throw err;
    //(4)获取执行结果
    //(5)判断是否关注了其他人
    if (result.affectedRows<0) {
      res.send({code:0,msg:"删除失败"})
    } else {
      res.send({code:0,msg:"删除成功"})
    }
  })
})

//  功能五 查询用户详情
server.get("/user", (req, res) => {
  //(1)获取其uid
  var uid = req.session.uid;  
  if(!uid){
    res.send({code:-1,msg:"请登录"});
    return;
  }
  //(2)创建sql语句查询
  var sql = "SELECT * FROM user WHERE uid=?";
  //(3)执行sql语句
  pool.query(sql, [uid], (err, result) => {
    if (err) throw err;
    //(4)获取执行结果
    //(5)判断是否关注了其他人
    if (result.length==0) {
      res.send({code:0,msg:"查询失败"})
    } else {
      res.send({code:1,msg:"查询成功",data:result})
    }
  })
})



// 功能六  查询旅途美食表
server.get("/z_lvtu",(req,res)=>{
  var classl=req.query.classl;
  if(classl=="all"){
    var sql="SELECT * FROM z_lvtu ORDER BY look DESC"
    pool.query(sql,(err,result)=>{
      if(err) throw err;
      if(result.length==0){
        res.send({code:0,msg:"查询失败"})
      }else{
        res.send({code:0,msg:"查询成功",data:result})
      }
    })    
  }else{
    var sql="SELECT * FROM z_lvtu WHERE classl=?  ORDER BY look DESC"
    pool.query(sql,[classl],(err,result)=>{
      if(err) throw err;
      if(result.length==0){
        res.send({code:0,msg:"查询失败"})
      }else{
        res.send({code:0,msg:"查询成功",data:result})
      }
    })
  }
})

// 功能六  查询旅途美食表
server.get("/zao",(req,res)=>{
  var class2=req.query.class2;
  if(class2=="all"){
    var sql="SELECT * FROM z_lvtu ORDER BY time DESC"
    pool.query(sql,(err,result)=>{
      if(err) throw err;
      if(result.length==0){
        res.send({code:0,msg:"查询失败"})
      }else{
        res.send({code:0,msg:"查询成功",data:result})
      }
    })    
  }else{
    var sql="SELECT * FROM z_lvtu WHERE class2=?  ORDER BY time DESC"
    pool.query(sql,[class2],(err,result)=>{
      if(err) throw err;
      if(result.length==0){
        res.send({code:0,msg:"查询失败"})
      }else{
        res.send({code:1,msg:"查询成功",data:result})
      }
    })
  }
})

// 功能七 搜索查询
server.get("/search",(req,res)=>{
  var titile=req.query.input;
  
  var sql=`SELECT * FROM z_lvtu WHERE titile LIKE "%${titile}%"`;
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    if(result.length==0){
      res.send({code:0,msg:"查询失败"})
    }else{
      res.send({code:1,msg:"查询成功",data:result})
    }
  })
})

// 功能八 查询美食详情
server.get("/detail",(req,res)=>{
  var z_lvid=req.query.obj;
  var sql=`SELECT * FROM z_lvtu WHERE z_lvid=?`;
  pool.query(sql,[z_lvid],(err,result)=>{
    if(err) throw err;
    if(result.length==0){
      res.send({code:0,msg:"查询失败"})
    }else{
      res.send({code:1,msg:"查询成功",data:result})
    }
  })
})