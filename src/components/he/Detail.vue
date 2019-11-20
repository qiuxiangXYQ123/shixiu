<style scoped>
/*点赞 浏览*/
    .logrenlig{
      margin:0 5%;
      width:90%;
      padding:15px 0;
      box-sizing:border-box;
      font-size:14px;
      border-bottom:1px solid #cecece;
    }
    .logrenlig>p{
      margin-bottom:10px;
    }
    .logrenlig:after{
      content:"";
      display:block;
      clear:both;
    }
    .logrenlig div:nth-child(2){
      float:left; 
      display:flex;
      align-items:center;
    }
    .logrenlig div:last-child{
      float:right;
      display:flex;
      align-items:center;
    }
    .logrenlig img{
      width:22px;
      margin:0 3px 0 8px;
    }
/* 按钮样式 */
  .Logbutton{ 
    float:right;
    margin-right:10px;
    background-color:#ff3232;
    border-radius:50px;
    border:1px solid #ccc;
    color:#fff;
    padding:5px 10px;
    margin-top:10px;
    outline:0;
    font-size:14px;
  }  
  .logbao {
      width:90px;
      height:24px;
      background-color:rgba(255,25,25,.5);
      border-radius:50px;
      border:1px solid #ff3232;
      color:#FFF;
      margin-left:10px;
      text-align:center;
    }
    .logbao >p{
      float:left;
      margin-left:3px;
      margin-top:2.5px;
      width:18px;
      line-height:18px;
      background-color:rgba(255,32,32,0.6);
      border-radius:50px;
      font-size:12px;  
    }
    .logbao >span{    
      width:26px;
      line-height:26px;
      font-size:14px;   
    }
/*通用样式到时候删掉 */
  *{
    margin:0px;
    padding:0px;
  }
  .Logindiv{
    width:100%;   
  }
  .Loginimg{   
    width:100%;
    height:450px;
    overflow:hidden;
  }
  .Loginimg >img{
    width:100%;    
  }
/*浮动布局  豆妈maomao*/
  .Loginalt{
    width:95%;
    margin-left:10px;
    margin-top:10px;
  }
/*浮动布局对后面元素的影响*/
  .Loginalt:after{
    content:"";
    display:block;
    clear:both;
  }
  .Logsrc{
    width:50px;
    height:50px;
    float:left;  
  }
  .Logsrc >img{
    width:100%;
    border-radius:50%;    
  }
  .Logmao{ 
    width:150px;
    height:50px;
    margin:10px 0px 0px 10px;
    float:left; 
  }
  .Logmao >span{ 
    font-size:13px;
  }
/*宝宝筛食   和收藏大框*/
    .logshipu{
      margin-top:15px;

    }
    .logshipu:after{
      content:"";
      display:block;
      clear:both;
    }
    
    .logguan{    
      width:95%;
      padding:10px 2%;
      box-sizing:border-box;
      border:1px solid #ccc;
      margin-left:10px;
      display:flex;
      align-items:center;            
      margin-top:12px; 
      border-radius: 8px;
      background-color:#fefefe;
    }
    .logguan:after{
      content:"";
      display:block;
      clear:both;
    }
    
    .logguan >div:nth-child(1){  
      float: left;
      height:80px;
      width:80px;
      overflow:hidden;
      border-radius:5px;
      display: flex;
      align-items: center;
    }
    .logguan >div:nth-child(2){
      margin-left:10px;
    }  
    .logguan >div:nth-child(1)>img{  
      border-radius: 5px;
      width:100%;
    }
    .logguan >div:nth-child(2)>img{  
      width:15px;
      margin-top:5px;
      /*background:#ff3232;*/
    }

  .logguan >div:nth-child(3){  
      width:30px;
      height:30px;
      float:right; 
    }
    .logguan >div:nth-child(3)>img{  
      width:25px;
      height:25px;    
    }
    .logguan >div:nth-child(3)>p{  
      position:relative;
      top:-60px;
      right:-36px;
    }
    .f:after{
      content:"";
      display:block;
      clear:both;
    }
    .Loginalt{
      padding:0 10px;
      margin-bottom:20px;
      box-sizing:border-box;
    }
    .Loginalt>p{
      color:#333;
      margin-left:8px;
    }
    .pingfen{
      float:right;
      margin-left:40%;
    }

/* 相关推荐 */
    .Logindiv >.tuijian{
      margin:20px 0px 10px 10px;
      font-weight:550;
      color:#474747;
    }
    .Logindiv .Loginimage{
    width:95%;
    margin-left:10px;
    }
    .Logindiv .Loginimage >img{
      width:49%;  
      height:100px;
      border-radius:5px;
    }
    .Logindiv .Loginimage >img:nth-child(2){
    float:right;
    }

/* 丸子麻麻bella */
    .Logindiv .logwan{
      width:95%;
      margin:10px 0 10px 10px;
      
    }
    .Logindiv .logwan:after{
        content:"";
        display:block;
        clear:both;
      }
    .Logindiv .logwan .logwanmg{
      width:50px;
        height:50px;
        float:left;  
    }
    .Logindiv .logwan .logwanmg img{
      width:50px;
      height:50px;
      border-radius: 50%; 
      
    }
    .Logindiv .logwan .logwanla{
      width:150px;
        height:50px;
        margin:10px 0px 0px 10px;
        float:left; 
    }


/* 图片两端对齐 */
    .Logindiv .Loginimpug{
    width:95%;
    margin-left:10px;
    }
    .Logindiv .Loginimpug>img{
      width:49%;  
      height:100px;
      border-radius:5px;
    }
    .Logindiv .Loginimpug >img:nth-child(2){
    float:right;
    }
    .Logindiv .Loginimpug>div{
      margin-top:10px;
    }

/* 评论 */
    .logping{
      width:90%;
      margin:15px 5%;
    }
    .logping>p{
      margin-bottom:10px;
      font-size:16px;
    }
    .logping>p>span{
      color:#666;
      font-size:14px;
    }
    .ping{
      text-align:center;
    }
    .ping input{
      width:90%;
      background:#e8e8e8;
      margin:auto;
      border-radius:50px;
      padding:10px 20px;
      font-size:14px;
      outline:0;
      border:0;
      color:#333;
    }
    .lun>div:after{
      content:"";
      display:block;
      clear:both;
    }
    .lun{
      margin-top:15px;
      padding-bottom:15px;
      border-bottom:1px solid #cecece;
    }
    .lun img{
      width:25px;
      height:25px;
      border-radius:50%;
      float:left;
    }
    .lun>div>span{
      float:left;
      margin-top:6px;
      margin-left:10px;
      font-size:14px;
      color:#6777a2;
    }
    .lun>div>span:last-child{
      color:#000;
      float:right;
    }
    .lun>p{
      font-size:14px;
      margin-left:33px;
      margin-top:6px;
      color:#666;
    }
    .pinglun{
      font-size:14px;
      margin-top:10px;
      height:20px;
      color:#666
    }
    .pinglun:after{
      content:"";
      display:block;
      clear:both;
    }
    .pinglun>img{
      float:right;
      width:14px;
      vertical-align:middle;    
    }
    .pinglun>span{
    vertical-align:middle;
      
    }
.Logindiv{
  background:#e8e8e8;
}
.fenye{
  background:#fff;
  padding:0 0 10px;
  margin-bottom:10px;
}
/* 顶部导航栏  */
  #detail{
    top:0px;
    position:fixed;
    background:rgba(250,250,250,.7);
    width:100%;
    padding:10px 10px;
    text-align:center;
    box-sizing:border-box;
  }
  #detail>img{
    width:20px;
    vertical-align:middle;
    float:left;
  }
  #detail>span{
    vertical-align:middle;
  }
  .fenye>img{
    width:100%;
  }
</style>

<template>
  <div>
   <!--顶部图片-->
    
    <div class="Logindiv" v-if="list.length">
      <div id="detail">
        <img src="../../assets/icon/leftback.png" @click="back">
        <span>美食详情</span>
      </div>
      <div class="fenye">
        <!--轮播图片-->
        <img :src="`http://127.0.0.1:4000/${list[0].shoupic}`" alt="">
        <!--用户信息-->
        <div class="Loginalt">  
          <div class="f">
            <div class="Logsrc">
              <img src="../../assets/image/2.png" alt="">
            </div>
            <div class="Logmao">
              <p>豆妈maomao</p>
              <span>{{list[0].time}}</span>
            </div>       
            <button class="Logbutton">+关注</button>               
          </div>    
          <p>{{list[0].titile}}</p>
        </div>
        <!--宝宝筛食 和 收藏框-->
        <div class="logshipu">
          <div class="logbao">
            <p>#</p>          
            <span>宝宝筛食</span>
          </div>
          <div class="logguan">          
              <div>
                <img :src="`http://127.0.0.1:4000/${list[0].shoupic}`" alt="">
              </div>

              <div>
                <p>{{list[0].titile}}</p>
                <!--五星好评--> 
                <img src="../../assets/image/6.png" alt=""> 
                <img src="../../assets/image/6.png" alt=""> 
                <img src="../../assets/image/6.png" alt=""> 
                <img src="../../assets/image/6.png" alt=""> 
                <img src="../../assets/image/6.png" alt=""> 
              </div> 0
              <div class="pingfen">4.5</div>
          </div>
        </div>
        <!--点赞 浏览 收藏  --> 
        <div class="logrenlig">
            <p>
              浏览
              <span>{{list[0].look}}</span>
            </p>
            <div>
              <img src="../../assets/image/9.png" alt="">
              <span>0</span>   
            </div>       
            <div>
              <img src="../../assets/image/4.png" alt="">
              <span>0</span>
              <img src="../../assets/image/6.png" alt="">
              <span>0</span>
              <img src="../../assets/image/5.png" alt="">
              <span>0</span>
            </div>
        </div>
        <!--评论-->
        <div class="logping">
          <p>
            评论
            <span>(
              <span>1</span>
            )</span>
          </p>
          <div class="ping">
              <input type="text" placeholder="快来写下你的评论吧...">
          </div>
          <div class="lun">
            <div>
              <img src="../../assets/img/25.png">
              <span>裘乡</span>
              <span>10月24日</span>
            </div>
            <p>色香味俱全 大佬啊</p>
          </div>
          <div class="pinglun">
            <span>查看所有评论</span>
            <img src="../../assets/icon/right.png">
          </div>
        </div>
      </div>
      
      <!--相关推荐--> 
      <div class="fenye">
        <!--丸子麻麻bella--> 
        <div class="tuijian">相关推荐</div>
        <div class="logwan">
          <div class="logwanmg">
            <img src="../../assets/image/10.png" alt="">
          </div>
          <div class="logwanla">
            <p>丸子麻麻bella</p>
            <span>10月01</span>
          </div>     
          <button class="Logbutton">+关注</button>      
        </div>
        <!--相同样式引的上面布局-->
        <div class="Loginimpug">
          <img src="../../assets/image/11.png" alt="">
          <img src="../../assets/image/12.png" alt=""> 
          <div>超低卡燕麦坚果脆饼，好吃不胖还可以根据自己的口味加蔓越莓、葡萄干</div>       
        </div> 
      
        <!--相同样式引的上面布局-->
        <div class="logshipu">       
          <div class="logbao">
            <p>#</p>          
            <span>宝宝筛食</span>
          </div>
        </div>
              <!--点赞 浏览 收藏  --> 
        <div class="logrenlig">
            <p>
              浏览
              <span>260</span>
            </p>
            <div>
              <img src="../../assets/image/9.png" alt="">
              <span>0</span>   
            </div>       
            <div>
              <img src="../../assets/image/4.png" alt="">
              <span>0</span>
              <img src="../../assets/image/6.png" alt="">
              <span>0</span>
              <img src="../../assets/image/5.png" alt="">
              <span>0</span>
            </div>
        </div>
    </div>    
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      zlvid:1,
      list:[]
    }
  },
  created(){
    this.detail()
  },
  methods: {
    back(){
      this.$router.go(-1)
    },
    detail(){
      var url="detail"
      var obj=this.$route.params.z_lvid
      console.log(obj)
      this.axios.get(url,{params:{obj}})
      .then(res=>{
          this.list=res.data.data;
          var a=this.list[0].time;
          var now=new Date(a)
          var year = now.getFullYear(); //获取年份
          var month = now.getMonth()+1; //获取月份 月份要+1
          var date = now.getDate(); //获取日期
          var time=year+"年"+month+"月"+date+"日";
          this.list[0].time=time
      })   
    },
  },
  props:["z_lvid"]
}
</script>