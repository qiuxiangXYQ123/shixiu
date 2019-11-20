<template>
  <div>
    <mt-navbar v-model="active">
      <span>发布</span>
      <mt-tab-item id="tab1">菜谱</mt-tab-item>
      <mt-tab-item id="tab2">文章</mt-tab-item>
      <mt-tab-item id="tab3">食秀</mt-tab-item>
      <mt-tab-item id="tab4">评论</mt-tab-item>
      <a href="javscript:;"><img width="30" src="@/assets/img/del_icon.png" alt=""></a>
    </mt-navbar>
    <mt-tab-container v-model="active">
      <mt-tab-container-item id="tab1"><span>据说创作菜谱的人工资都涨了79%</span>
      <mt-button @click="goMenu">开始发布菜品</mt-button>
      </mt-tab-container-item>
      <mt-tab-container-item id="tab2"><span>我就是因为写了一篇文章被美食杰发现的</span><mt-button>开始写文章</mt-button></mt-tab-container-item>
      <mt-tab-container-item id="tab3"><span>把作品分享出来的人都特别美</span><br><mt-button>开始发布作品</mt-button></mt-tab-container-item>
      <mt-tab-container-item id="tab4">空空如有</mt-tab-container-item>
    </mt-tab-container>
  </div>
</template>
<script>
  export default{
    data(){
      return{
        active:"tab1"
      }
    },
    methods:{
      handle(event){
        var id=event.target.dataset.id;
        this.active=id;
      },
      goMenu(){
        this.$router.push("/Menu")
      }
    }
  }
</script>
<style scoped>
  .mint-navbar >>> span{
    font-size:1.5rem;
    font-weight: 550;
    margin-top:5px;
    
  }
  .mint-navbar >>> img{
    margin-top:10px;
  }
  .mint-navbar .mint-tab-item.is-selected{
    color:#ff3232;
    border-bottom:1.5px solid #ff3232
  }
  .mint-tab-item-label{
    font-size:2rem;
  }
  .mint-tab-container-item{
    margin-top:250px;
  }
  .mint-button--default {
    color:#fff;
    background-color:#ff3232;
    margin-top:10px;
  }
</style>
