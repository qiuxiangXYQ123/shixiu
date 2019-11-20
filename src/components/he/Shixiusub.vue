<style scoped>
/*页面布局   弹性 */
#shixiu{
  width:100%;
    overflow:auto;  
}
/* 页面内部布局样式 */
 .seleblic{
    width:200%; 
    margin-bottom:5px; 
    z-index:10;
  }  

 .seleblic .seleblic2{
    width:14%;
    float:left;
    margin:0 1%;
    position:relative;
    padding:10px 0;
  }
  .mint-navbar .mint-tab-item.is-selected{
    border:0;
  }
  .seleblic2>>>.mint-tab-item-label{
    box-shadow:10px 5px 5px #aca4a4;
  }
  .seleblic .seleblic2 p{
    display:block;
    width:60%;
    position:absolute;
    left: 50%; 
    margin-left: -30%;
    top:50px;
    color:#fff;
    padding-bottom:10px;
    border-bottom:2px solid #fff; 
    text-align:center; 
  }
  .seleblic2  img{
    width:100%;
    border-radius:5px; 
    height:80px;      
  } 
 .fixed{
   position:fixed;
   top:56px;
   z-index:10;
 }
.fi{
  margin-top:105px;
  
}
</style>  
<template>
  <div>
  <div class="fixed">
  <!-- 第一个页面 -->
    <div id="shixiu">
      <mt-navbar class="seleblic" v-model="selected">
        <mt-tab-item class="seleblic2" id="d1">
          <img src="../../assets/image/24.png" alt="">
          <p>每日分享</p>
        </mt-tab-item>
        <mt-tab-item class="seleblic2" id="d2">
          <img src="../../assets/image/25.png" alt="">
          <p>热门话题</p>
        </mt-tab-item>  
        <mt-tab-item class="seleblic2" id="d3">
          <img src="../../assets/image/25.png" alt="">
          <p>热门话题</p>
        </mt-tab-item>    
        <mt-tab-item class="seleblic2" id="d4">
          <img src="../../assets/image/25.png" alt="">
          <p>热门话题</p>
        </mt-tab-item>
        <mt-tab-item class="seleblic2" id="d5">
          <img src="../../assets/image/25.png" alt="">
          <p>热门话题</p>
        </mt-tab-item>
        <mt-tab-item class="seleblic2" id="d6">
          <img src="../../assets/image/25.png" alt="">
          <p>热门话题</p>
        </mt-tab-item>
      </mt-navbar>     
    </div>   
  </div>
      <mt-tab-container class="fi" v-model="selected">
          <mt-tab-container-item id="d1">
            <shixiusubson></shixiusubson>
          </mt-tab-container-item>
          <mt-tab-container-item id="d2">
            <shixiusubson2></shixiusubson2>
          </mt-tab-container-item>
      </mt-tab-container>
  </div>
</template>

<script>
import Shixiusubson from './Shixiusubson'
import Shixiusubson2 from './Shixiusubson2'
export default {
  data(){
    return{
      selected:"d1"
    }
  },
    props:{
      msg:{default:""}
    },
    components:{
    "shixiusubson":Shixiusubson,
    "shixiusubson2":Shixiusubson2,
    },
    
}
</script>
