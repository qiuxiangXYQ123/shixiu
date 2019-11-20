<style>

/* 第三个界面食杰布局  下的子面版*/
#shijie{
  width:100%;
  
  overflow:auto;
}
#shijie .ribang{
  width:200%;  
  margin-left:1%; 
  margin-top:15px;  
}
.ribang1,.ribang2,.ribang3{
  float:left;
}
/* 第一个导航界面布局*/
  #shijie .ribang .ribang1{
    width:30%;  
    border:1px solid #ccc;
    border-radius: 5%;
    position:relative;
    overflow: hidden;
  }
  #shijie .ribang .ribang1 >img{
    width:100%;  
  }
  #shijie .ribang .ribang1 >p{
    position:absolute;
    top:15px;
    left:15px;
    color:#fff;
    font-weight:550;
  }
  #shijie .ribang .ribang1 >span{
    display: inline-block;
    font-size:18px;
    font-weight:550;  
    position:relative;
    margin-left:10px;
    margin-top:10px;
  }
  #shijie .ribang .ribang1 span>hr{
    width:43px;
    height:6px;
    background-color:rgba(253, 146, 6,.5);
    border:none;
    position:absolute;
    top:3px;
    left:0px;
  }
  #shijie .ribang .ribang1 >div{
    width:100%;
    margin:10px 0 10px 10px;
    position: relative;
    font-size:13px;
  }
  #shijie .ribang .ribang1 >div >img{
    width:30px;
    height:30px;
    border-radius: 50%;
    
  }
  #shijie .ribang .ribang1 >div >span{
    position:absolute;
    top:6px;
    left:40px;
  }
  #shijie .ribang .ribang1 div>p{
    position:absolute;
    top:-10px;
    right:30px;
  }
  #shijie .ribang .ribang1 div>p >span{
    font-size:18px;
    color:rgb(253, 146, 6);
    font-weight:550;
  }
/* 第二个导航界面布局*/
  #shijie .ribang .ribang2{
    width:30%;
    border:1px solid #ccc;
    overflow: hidden;
    margin:0 1% 0;
    border-radius: 5%;  
    position:relative;
  }
  #shijie .ribang .ribang2 >img{
    width:100%; 
  }
  #shijie .ribang .ribang2 >p{
    position:absolute;
    top:15px;
    left:15px;
    color:#fff;
    font-weight:550;
  }
  #shijie .ribang .ribang2 >span{
    display: inline-block;
    font-size:18px;
    font-weight:550;  
    position:relative;
    margin-left:10px;
    margin-top:10px;
  }
  #shijie .ribang .ribang2 span>hr{
    width:43px;
    height:6px;
    background-color:rgba(253, 146, 6,.5);
    border:none;
    position:absolute;
    top:3px;
    left:0px;
  }
  #shijie .ribang .ribang2>div{
    width:100%;
    margin:10px 0 10px 10px;
    position: relative;
    font-size:13px;
  }
  #shijie .ribang .ribang2 >div >img{
    width:30px;
    height:30px;
    border-radius: 50%;
    margin-right:10px;
  }
  #shijie .ribang .ribang2 div>p{
    position:absolute;
    top:-10px;
    right:30px;
  }
  #shijie .ribang .ribang2 div>p >span{
    font-size:18px;
    color:rgb(253, 146, 6);
    font-weight:550;
  }

/* 第三个导航界面布局*/
  #shijie .ribang .ribang3{
    width:30%;
    height:600px;
    height:300px;
    border:1px solid #ccc; 
    overflow: hidden;
    border-radius:5%; 
    position:relative;
  }
  #shijie .ribang .ribang3 >img{
    width:100%; 
    height:100%; 
  }
  #shijie .ribang .ribang3 >span{
    width:100%; 
    height:100%; 
    position:absolute;
    top:15px;
    left:15px;
    color:#fff;
    font-size: 18px;
  }
  #shijie .ribang .ribang3 >p{
    width:10px;
    position:absolute;
    top:50px;
    left:50px;
    color:#fff;
    font-size: 18px;
  }
  .ribang:after{
    content:"";
    display:block;
    clear:both;
  }
  .paihang{
    margin-bottom:110px;
  }
</style>
<template>
<div>
  <div id="shijie">
    <div class="ribang">
      <div class="ribang1">
          <img src="../../assets/image/28.png" alt="">
          <p>菜谱日榜</p>
          <span><hr>NO.1&nbsp;香蕉巧克力...</span>        
          <div>
              <img src="../../assets/image/28.png" alt="">
              <span>day917</span>
              <p>浏览&nbsp;<span>31.3k</span></p>
          </div>
      </div>
      <div class="ribang2">
          <img src="../../assets/image/2.png" alt="">
          <p>菜谱月榜</p>
          <span><hr>NO.1&nbsp;豆妈maomao</span>        
          <div>
              <img src="../../assets/image/29.png" alt="">
              <img src="../../assets/image/30.png" alt="">
              <img src="../../assets/image/31.png" alt="">
              <p>作品&nbsp;<span>37</span></p>
          </div>
      </div>
      <div class="ribang3" @click="fabu">
          <img src="../../assets/image/31.png" alt="">
          <span>打榜美食王</span>
          <p>下一个就是你</p>
      </div>         
    </div>
  </div>
  <div class="paihang">
    <mei></mei>
  </div>
</div>
</template>
<script>
import Mei from '../zhang/Mei.vue'
export default {
  methods: {
    fabu(){
      this.$router.push("/weibu")
    }
  },
  components:{
    "mei":Mei
  }
}
</script>