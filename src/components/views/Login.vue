<style  scoped>
/*唯一父元素*/
.all {
  width: 100%;
  height:100vh;
  background-image: linear-gradient(to bottom right, #bdf1fd, #48bad6);
}
.all >>> .mint-cell-text{
  color:#333;
}
.all:before {
  content: "";
  display: table;
}
a {
  text-decoration: none;
}
.section {
  width: 100%;
  height: 25vh;
  /* padding: 1em; */
  overflow: hidden;
  position: absolute;
  right: 0;
  top: 0;
    background-image: linear-gradient(to bottom right, #bdf8fd, #48bad6);

  text-align: center;
  color: #fff;
  border-bottom-left-radius: 75%;
}
.section > p:first-child {
  font-family: STHupo;
  font-size: 2.5em;
  margin-bottom: 0;
}
.section > p:last-child {
  text-align: right;
  font-family: STLiti;
  padding-right: 1em;
}
/*中部登录框*/

.section1 {
  width: 88%;
  margin: auto;
  margin-top: 33vh;
 
}

.section1 > p {
  margin-bottom: 0;
  text-align: left;
}
.section1 > p >>> .mint-cell:last-child {
  border-radius: 50px;
  overflow: hidden;
}
.section1>>>.mint-cell{
  min-height:7vh
}
.section1 > p >>> .mint-field .mint-cell-title {
  width: 3em;
  
}
.section1 > p >>> .mint-button--primary {
  border-radius: 1em;
}
.section1 > p:last-child {
  text-align: right;
}

/*尾部信息框*/

.section2 {
  width:100%;
  text-align:center;
  position:fixed;
  bottom:3vh;
}
.section2 > p {
  font-size: 0.875em;
  /* color: #888; */
}
.section2 a {
  color: #ea6618;
}
.res{
  color:#333;
}
.back{
  position:fixed;
  left:3vh;
  top:3vh;
  z-index:10;
  width:3vh;
  opacity:.8;
}
</style>
<template>
  <div class="all">
    <img class="back" @click="back" src="../../assets/icon/leftback.png">
    <div class="section">
      <p>美食杰</p>
      <p>和你的胃做好朋友</p>
    </div>
    <div class="section1">
      

      <p>
        <mt-field
          label="+86"
          placeholder="请输入手机号"
          type="tel"
          v-model="phone"
          :attr="{autofocus:true}"
        ></mt-field>
      </p>
      <p>
        <mt-field label="密码" placeholder="请输入密码" type="upwd" v-model="upwd"></mt-field>
      </p>
      <p>
        <mt-button type="primary" size="large" @click="login">登 录</mt-button>
      </p>
      <p>
        <router-link class="res" to="/Res">注册</router-link>
      </p>
    </div>
    <div class="section2">
      <p>
        登录表示同意
        <router-link to>美食杰用户协议</router-link>和
        <router-link to>隐私政策</router-link>
      </p>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      phone: "",
      upwd: ""
    };
  },
  methods: {
    back(){
      this.$router.go(-1);
    },
    login(){
      //功能：完成用户登录功能
      var ph=this.phone;
      var up=this.upwd;

      
      var url="login"
      var obj={phone:ph,upwd:up};
      this.axios.get(
          url,
          {params:obj}).then(res=>{
          console.log(res.data.code);
          if(res.data.code<0){
              this.$messagebox("消息","用户名或密码有误");
          }else{
              this.$router.push("/home")
              this.$toast("登录成功")
          }
          })
      }
    }
  }

</script>
