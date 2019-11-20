<style scoped>
p{margin:0;}
#sousuo {
  width: 100%;
  height: 100vh;
  z-index: 10;
  position: fixed;
  background: #fff;
  padding: 3%;
  box-sizing: border-box;
}
#sousuo > p,
#sousuo > span {
  font-size: 3vh;
  color: #666;
  margin: 1vh 0 1vh;
}
#sousuo > span {
  float: left;
}
#sousuo > #biaoqian + span {
  float: right;
  font-size: 2.3vh;
}
#soutext {
  width: 80%;
  display: block;
  margin:auto;
  padding: 2% 5%;
  box-sizing: border-box;
  border-radius: 52px;
  background: 0;
  outline: 0;
  border: 1px solid #999;
}
.seach>img{
    position: absolute;
    top:1vh;
    width:18px;
    height:18px;
}
.resou {
  width: 100%;
  height: 30vh;
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  margin-bottom: 3vh;
}
.resou > div {
  width: 30%;
  height: 50%;
  position: relative;
  margin-bottom: 15px;
}
.resou > div > img {
  width: 100%;
  height: 100%;
}
.resou > div > div {
  background: rgba(0, 0, 0, 0.3);
  color: #fff;
  text-align: center;
  position: absolute;
  width: 100%;
  height: 100%;
  margin: 0;
  bottom: 0;
  display: table-cell;
  vertical-align: middle;
  box-sizing: border-box;
  padding-top: 50%;
}
#biaoqian {
  float: left;
  width: 100%;
  padding: 0 1%;
}
#biaoqian > span {
  border: 1px solid #999;
  border-radius: 5px;
  padding: 2px 5px;
  color: #fff;
  background: #7c7e7a;
  display: inline-block;
  margin:.5vh;
}
.seach {
  position: relative;
}
.qing {
  position: absolute;
  right: 6.8vh;
  top: 1vh;
  border-radius: 50%;
  background: #eee;
  width: 20px;
  height: 20px;
  color: #666;
  line-height: 20px;
  text-align: center;
}
.qing+div{
    position: absolute;
    right:0;
    top:1vh;
}
#guo{
    width:100%;
    background: #fff;
    transition: .5s;
}
#guo p{
    padding:2vh 5vh; 
    box-sizing: border-box;
    border-bottom:.1px solid #eee;
}
.wu{
    text-align: center;
}
</style>
<template>
  <div v-show="sousuo" id="sousuo">
    <!--美食热搜-->
    <div class="seach">
        <img src="../../assets/icon/leftback.png" @click="back">
      <input type="text" placeholder="请输入内容" v-model="input" id="soutext" />
      <div @click="cancal" class="qing">X</div>
      <div @click="search">搜索</div>
    </div>
    <div id="guo">
        <!-- 搜索没有结果时 -->
        <p class="wu" v-if="show">--暂无搜索结果--</p>
        <!-- 有结果时 -->
        <div class="you" @click="jump" v-else>
            <p v-for="(item,i) of result" :key="i">{{item.titile}}</p>
        </div>
    </div>

    <p style="margin-top:3vh">热门搜索</p>
    <div class="resou">
      <div>
        <img src="../../assets/img/1 (7).png" />
        <div>#蛋挞</div>
      </div>
      <div>
        <img src="../../assets/img/2 (6).png" />
        <div>#手抓羊肉</div>
      </div>
      <div>
        <img src="../../assets/img/2 (7).png" />
        <div>#红烧鲤鱼</div>
      </div>
      <div>
        <img src="../../assets/img/1 (3).png" />
        <div>#草莓蛋糕</div>
      </div>
      <div>
        <img src="../../assets/img/3 (10).png" />
        <div>#螃蟹</div>
      </div>
      <div>
        <img src="../../assets/img/1 (1).png" />
        <div>#蝴蝶兰</div>
      </div>
    </div>
    <!-- 搜索记录 -->
    <span>搜索历史</span>
    <div id="biaoqian">
      <span v-for="(item,i) of biaoqian" :key="i">{{item}}</span>
    </div>
    <span>清除</span>
  </div>
</template>
<script>
export default {
  data() {
    return {
      sousuo: true,
      input: "",
      result: "",
      show: false,
      biaoqian:["红烧肉"]
    };
  },
  methods: {
    cancal() {
      this.input = "";
    },
    search() {
      var input = this.input;
      if (input !== "") {
        this.axios.get("search", { params: { input } }).then(res => {
          // console.log(res);
          if (res.data.code > 0) {
            this.result = res.data.data;
            this.show = false;
          } else {
            this.result = [];
            this.show = true;
          }
        });
      } else {
          this.result=[];
          this.show=false;
      }
    },
    jump(e){
        var event=e.target
        this.biaoqian.push(event.innerHTML)
    },
    search(){
        this,search()
    },
    back(){
        this.$router.go(-1);
    }
  },
  watch: {
    input() {
      this.search();
    }
  }
};
</script>