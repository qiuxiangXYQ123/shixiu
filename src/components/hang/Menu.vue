<template>
  <div>
    <header>
      <div id="header_div">
        <div>
          <a href="javascript:;" style="padding-left: 0.8rem" @click="goRelease"><img src="@/assets/img/back_icon.png" alt=""></a>
        </div>
        <div>
          <span>创作菜谱</span>
        </div>
        <div>
          <span style="padding-right:0.8rem">发布</span>
        </div>
      </div>
    </header>
    <section>
      <div id="section_div1"> 
        <div>
          <img width="60px" src="@/assets/img/push_icon.png" alt="">
        </div>
          <div>
            <span>添加视频菜谱/图片菜谱</span>
          </div>
      </div>
      <div id="section_div2">
        <textarea name="text1" cols="30" placeholder="添加菜谱标题" rows="10"></textarea>
      </div>
      <div id="section_div3">
        <textarea name="text2" cols="30" rows="10" placeholder="说活这道菜背后的故事">
          
        </textarea>
      </div>
      <div id="section_div4">
        <mt-cell title="工艺 请选择" is-link>
          <img slot="icon" src="@/assets/img/fire_icon .png" width="24" height="24">
        </mt-cell>
        <mt-cell title="口味 请选择" is-link>
          <img slot="icon" src="@/assets/img/salt_icon.png" width="24" height="24">
        </mt-cell>
        <mt-cell title="时间 请选择" is-link>
          <img slot="icon" src="@/assets/img/time_icon.png" width="24" height="24">
        </mt-cell>
      </div>
      <div id="section_div5">
        <span>步骤1</span>
        <div>
          <mt-button>
            <img src="@/assets/img/delete_icon.png" width="16" height="16">
          </mt-button>
          <mt-button>
            <img src="@/assets/img/more_icon.png" width="16" height="16">
          </mt-button>
        </div>
        <div>
          <div>
            <img src="@/assets/img/push_icon.png" width="60" alt="">
            <br>
            <span>添加步骤图</span>
          </div>
        </div>
        <input type="text" name="input1" placeholder="请填写步骤描述">
              <div>
        <span>显示更多可填项</span>
        <mt-button>
            <img src="@/assets/img/down_icon.png" width="16" height="16">
        </mt-button>
      </div>
      <div>
        + 添加成品图
      </div>
      </div>
      <div id="section_div6">
          <table></table>
        <div>
          <span>烹饪小贴士</span>
          <br>
          <span>分享下你做这道菜的过程中的心得和小技巧</span>
        </div>
      </div>
      <div id="section_div7"></div>
    </section>
    <footer>
      <div id="footerDiv">
        <div class="footer_div footer_div1">
          <span>预览</span>
        </div>
        <div class="footer_div footer_div2">
          <span>发布</span>
        </div>
      </div>
    </footer>
  </div>
</template>
<script>
  export default{
    data(){
      return{
      }
    },
    methods:{
      goRelease(){
        this.$router.push("/Release")
      }
    }
  }
</script>
<style scoped>
  header{
    width:100%;
    position:fixed;
    top:0;
    background:#fff;
    z-index:1;
    border-bottom:#eee 0.1px solid;
  }
  #header_div{
    display:flex;
    width:100%;
    height:2.5rem;
    justify-content:space-between;
  }
  #header_div>div{
    line-height:2.5rem;
    font-size:1.1rem;
  }
  section{
    margin-top:2.5rem;
    width:100%;
  }
  #section_div1{
    margin-top:5.5rem;
    width:100%;
    height:8rem;
  }
  #section_div2{
    width:100%;
    height:3rem;
    text-align: left;
    color:#ccc;
  }
  #section_div2>textarea{
    width:100%;
    height:3rem;
    border:0;
    background:yellow;
    font-size:1.5rem;
    line-height:3rem;
  }
  #section_div2>textarea::placeholder{
    height:3rem;
    line-height:3rem;
    padding-left:0.5rem;
    color:#ccc;
    font-weight:600;
  }
  #section_div3{
    width:100%;
    height:5rem;
    text-align: left;
    color:#ccc;
  }
  #section_div3>textarea{
    width:100%;
    height:100%;
    border:0;
    font-size:1.2rem;
  }
  #section_div3>textarea::placeholder{
    font-size:1rem;
    color:#ccc;
    font-weight:600;
    display:inline-block;
    padding-top:0.8rem;
    padding-left:0.5rem;
  }
  #section_div4{
    text-align: left;
    color:#aaa;
  }
  #section_div5{
    width:100%;
    text-align:left;
    margin-top:1rem;
    display:flex;
    justify-content: space-between;
    flex-wrap:wrap;
  }
  #section_div5>span{
    font-size:1.2rem;
    display: inline-block;
    padding-left:0.8rem;
    padding-bottom:0.5rem;
  }
  #section_div5 div:nth-child(3){
    width:100%;
    height:10rem;
  }
  #section_div5 div:nth-child(3)>div{
    width:90%;
    height:100%;
    margin:0 auto;
    background:#ddd;
    text-align: center;
    box-sizing:border-box; 
    padding-top:2.5rem;
  }
  #section_div5 input:nth-child(4){
    width:100%;
    border:0;
    padding-top:0.5rem;
    padding-left:0.5rem;
    padding-bottom:0.5rem;
    font-size:1rem;
    border-bottom:#ddd 0.5px solid;
  }
  #section_div5 div:nth-child(5){
    width:100%;
    height:3rem;
    text-align:right;
    color:#ccc;
  }
  #section_div5 div:nth-child(6){
    width:100%;
    color:red;
    text-align: center;
    height:3rem;
  }
  #section_div6{
    width:100%;
    height:5rem;
    background: #ccc;
  }
  #section_div6 div:last-child{
    width:100%;
    height:4rem;
    background:#fff;
    text-align: left;
    margin-top:0.5rem;
    box-sizing:border-box;
    padding-top:0.8rem;
    padding-left:1rem;
  }
  #section_div6 span{
    display:inline-block;
  }
  #section_div7{
    width:100%;
    height:8rem;
  }
  footer{
    width:100%;
    position: fixed;
    bottom:0;
    z-index:1;
  }
  #footerDiv{
    display: flex;
    width:100%;
    height:50px;
  }
  .footer_div{
    width:50%;
    line-height:50px;
    color:#fff;
  }
  .footer_div1{
    color:#000;
    background:#fff;
  }
  .footer_div2{
    color:#fff;
    background:#ff3232;
  }
</style>
