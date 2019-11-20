<style scoped>
  .header,.footer{
    width:100%;
    height:90px;
    position:fixed;
    top:0;
    z-index:-1;
  }
  .header{
    background:url(../../assets/icon/timghead.png) no-repeat;
    background-size:100% auto;
    opacity:.8;
  }
  .section1 {
    padding-bottom :20px;
    border-bottom: 1px solid #ccc;
    justify-content: space-between;
    margin-top:52px;
  }
  .section1:after{
    content:"";
    display:block;
    clear:both;
  }
  .section1  > img {
    width: 10vh;
    margin:0 5%;
    border-radius: 50%;
    float:left;
  }
  .section1 > div:last-child {
    width: 65%;
    text-align: left;
    float:left;
    
  }
  .section1 > div:last-child > p:first-child {
    margin-bottom: 0;
    font-size: 2.7vh;
    font-weight: 600;
    color: #333;
    margin:1.5vh 0;

  }
  .section1 > div:last-child > p:last-child {
    font-size: 2vh;
    margin:1vh 0;
  }
  ul>li{
    text-align:center;
  }


  .section2 > ul {
    padding-left: 0;
    list-style:none;
    display: flex;
    justify-content: space-around;
  }
  .section2 p{
    margin:5px 0;
    font-size:2.3vh;
  }
  .section2 > ul {
    margin-bottom: 0px;
    margin-top:15px;
  }
  .section2 > ul:last-child > li > img {
    width: 25%;
  }
  .section3{
    margin-top:15px;
  }
  .section3 > p {
    margin-left: 5%;
    text-align: left;
    font-size:2.8vh;
  }

  .list {
    padding:0 5%;
    justify-content: left;
    display: flex;
    margin-bottom: 10px;
    align-items: center;
  }
  .list > img {
    width:20%;
    justify-content: space-between;
  }
  .list > img + div {
    width: 70%;
    padding-left: 5%;
    font-size:2.2vh;
  }
  .list > img + div :after{
    content:"";
    display:block;
    clear:both;
  }
  .list > div > div:last-child {
    width: 10em;
    padding-top: 8px;
    margin-bottom: 2px;
    display: flex;
    justify-content: space-between;
  }
  .list > div > div:last-child >span{
    display:flex;
    align-items:center;
  }
  .list > div > div:last-child >span:first-child>img{
    width:2.8vh ;
    font-size:2.2vh;
  }
  .list > div > div:last-child >span:last-child>img{
    width:3.3vh ;
    font-size:2.2vh;    
  }
  .list>div>div:first-child{
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
  }
/*  未登录的界面*/
  .none{
    display:none;
  }
</style>
<template>
  <div>
    <div class="header"></div>
    <div>
      <div class="section1" >
        <img @click="userDetail" src="../../assets/icon/login.png"  v-if="bol1" />
        <img @click="userDetail" :src="`http://127.0.0.1:4000/${list[0].headimage}`"  v-else />        
        <div v-if="bol2">
          <p @click="userDetail">点击登录</p>
          <p @click="userDetail">据说登录的人做饭更好吃</p>
        </div>
        <div v-else>
          <p @click="userDetail">{{list[0].uname}}</p>
          <p @click="userDetail">{{list[0].autograph}}</p>
        </div>
      </div>  
      <div class="section2">
        <ul>
          <li>
            <p v-if="bol1">0</p>            
            <p v-else>{{(list[0].look)?(list[0].look):0}}</p>
            <p>浏览</p>
          </li>
          <li @click="gz">
            <p v-if="bol1">0</p>            
            <p v-else>{{follower}}</p>
            <p>粉丝</p>
          </li>
          <li @click="gz">
            <p v-if="bol1">0</p>            
            <p v-else>{{follow}}</p>
            <p>关注</p>
          </li>
          <li>
            <p>0</p>
            <p>作品</p>
          </li>
        </ul>
        <ul>
          <li>
            <img :src="require('@/assets/img/03.png')" alt />
            <p>收藏</p>
          </li>
          <li @click="fabu">
            <img :src="require('@/assets/img/04.png')" alt />
            <p>发布</p>
          </li>
          <li>
            <img :src="require('@/assets/img/05.png')" alt />
            <p>草稿</p>
          </li>
          <li>
            <img :src="require('@/assets/img/06.png')" alt />
            <p>菜篮</p>
          </li>
        </ul>
      </div>
    </div>

    <div v-show="bol" class="section3">
      <p>我的足迹</p>
      <div class="list">
        <img :src="require('@/assets/img/26.png')" alt />
        <div>
          <div>用电饭锅就能做出如此娇艳欲滴的,真的非常美味！非常美味！非常美味！非常美味！非常美味！</div>
          <div>
            <span> 
              <img :src="require('@/assets/img/07.png')" alt />
              <span>1000</span>
            </span>
            <span>
              <img :src="require('@/assets/img/09.png')" alt />
              <span>1000</span>
            </span> 
          </div>
        </div>
      </div>
    </div>
    <div section4>
      <img src="">
    </div>
    
    <div class="footer"></div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      listuse:[],
      listlvtu:[],
      bol:true,
      bol1:true,
      bol2:true,
      list:[],
      follow:"",
      follower:""

    }
  },
  created(){
    this.user();
    this.count(`follow`);
    this.count(`follower`);
  },  
  methods:{

    login(){
      this.$router.push("/Login")
    },
    // 查询关注或粉丝的数量
    count(e){
      var url="count";
      var obj={bool:e};
      this.axios.get(url,{params:obj})
      .then(res=>{
        var result= JSON.stringify(res.data.data[0]);
        result= JSON.parse(result);
        for(var key in result){
          var result=result[key]
        }
        if(e=="follow"){
          this.follow=result;
        }else{
          this.follower=result;
        }
      })

    },
    // 用于判断是否登录了
    user(){
      var url="user";
      this.axios.get(url)
      .then(res=>{
        if(res.data.code==1){
          this.list=res.data.data;
          if(!this.list[0].headimage){
            this.list[0].headimage="./img/head/3.jpg"
          }
          if(!this.list[0].autograph){
            this.list[0].autograph="快快编辑你充满个性的签名"
          } 
            this.bol2=false
            this.bol1=false
        }
        console.log(this.list)
      });
    },
    // 查询关注或粉丝
    gz(){
      var url="user";
      this.axios.get(url)
      .then(res=>{
        if(res.data.code==-1){
          this.$router.push("/login");
          return;
        }else{
          this.$router.push("/follow");
        }
      });
    },
    // 跳转到发布内容见面
    fabu(){
      var url="user";
      this.axios.get(url)
      .then(res=>{
        if(res.data.code==-1){
          this.$router.push("/login");
          return;
        }else{
          this.$router.push("/weibu")
        }
      });
    },
    // 跳转到用户信息也
    userDetail(){
      var url="user";
      this.axios.get(url)
      .then(res=>{
        if(res.data.code==-1){
            this.$router.push("/login");
            return;
        }else{
          this.$router.push("/user")
        }
      });
    }
  },
}
</script>