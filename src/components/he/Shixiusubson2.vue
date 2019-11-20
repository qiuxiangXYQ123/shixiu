<style scoped>
    /* 主体内容   两个界面样式一样改一个两个都变*/
.selyulc{
  width:100%;
  margin-right:2%;
  display:flex;
  flex-direction: row;
  flex-wrap:nowrap;
  justify-content: row-reverse;
}
 .selyulc  .selyulcbli{
   width:48%;
   border-radius:15px;
   margin-left:2%;
   overflow: hidden;
   border:1px solid #ccc;
 }
 .selyulc  .selyulcbli >img{   
   width:100%;
   max-height:60%;
   
 }
 .selyulc  .selyulcbli >p{   
   width:100%;
   margin-left:5%;  
   color:#474747;
   max-height:60%;
   font-size:20px;
   font-weight:550;
 }
.selyulc  .selyulcbli >div{
  height:30px;
  line-height:30px;
  color:#474747;
  font-size:14px;
}
.selyulc  .selyulcbli >div >img{   
   width:30px;
   height:30px;
   border-radius:50%;  
   margin:0 2% 0 5%; 
   float:left;
 }
.selyulc  .selyulcbli >div >span:nth-child(3){ 
  display:inline-block;
  height:30px;
  line-height:30px;
  float:right;
  margin-right:5%;
}
/* 食杰主页面样式 */
</style>
<template>
    <div>
        <div class="selyulc">
            <div class="selyulcbli">
                <img src="../../assets/image/12.png" alt="">       
                <p>可乐鸡翅</p>
                <div>
                    <img src="../../assets/image/27.png" alt="">
                    <span>冰林儿</span>
                    <span>10月19</span>  
                </div>   
            </div>
        </div>
    </div>
</template>
<script>
    export default {
    props:{
      msgson:{default:""}
    }
}
</script>