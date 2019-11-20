<style scoped>
    /* 主体内容   两个界面样式一样改一个两个都变*/
/*
.selyulc{
  width:100%;
  display:flex;
  flex-direction: row;
  flex-wrap:wrap;
  justify-content: row-reverse;
}
 .selyulc  .selyulcbli{
   width:46%;
   border-radius:15px;
   margin:10px 2%;
   overflow: hidden;
   border:1px solid #ccc;
   box-sizing:border-box;
   float:left;
 }
 */
 .selyulc  .selyulcbli >img{   
   width:100%;
 }
 .selyulc  .selyulcbli >p{   
   width:100%;
   color:#474747;
   font-size:18px;
   font-weight:550;
   margin:10px 0 10px 5%;
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


.selyulc{
    margin:0 auto;
    width:100%;
    column-count: 2;  /* 设置总列数 */
    column-gap: 15px; /* 列与列之间的像素 */
    column-fill: auto; /* 按顺序对列进行填充 */
    box-sizing: border-box;
    padding:0 2%;
    margin-bottom:110px;

}

.selyulcbli{
    float:left;
    width:100%;
    break-inside: avoid;
    border-radius:10px;
    box-sizing: border-box;
   border:1px solid #aaa;
   overflow:hidden;
   padding-bottom:10px;
   margin-bottom:10px;
    
}


/* 食杰主页面样式 */
</style>
<template>
    <div>
        <div class="selyulc">
            <div class="selyulcbli" @click="select">
                <img src="../../assets/image/26.png" alt="">       
                <p>可乐鸡翅</p>
                <div>
                    <img src="../../assets/image/27.png" alt="">
                    <span>冰林儿</span>
                    <span>10月19</span>  
                </div>   
            </div>

            <div class="selyulcbli">
                <img src="../../assets/image/12.png" alt="">       
                <p>可乐鸡翅</p>
                <div>
                    <img src="../../assets/image/20.png" alt="">
                    <span>冰林儿</span>
                    <span>10月19</span>  
                </div>   
            </div>
            <div class="selyulcbli">
                <img src="../../assets/image/11.png" alt="">       
                <p>可乐鸡翅</p>
                <div>
                    <img src="../../assets/image/27.png" alt="">
                    <span>冰林儿</span>
                    <span>10月19</span>  
                </div>   
            </div>
            <div class="selyulcbli">
                <img src="../../assets/image/7.png" alt="">       
                <p>可乐鸡翅</p>
                <div>
                    <img src="../../assets/image/27.png" alt="">
                    <span>冰林儿</span>
                    <span>10月19</span>  
                </div>   
            </div>
            <div class="selyulcbli">
                <img src="../../assets/image/26.png" alt="">       
                <p>可乐鸡翅</p>
                <div>
                    <img src="../../assets/image/27.png" alt="">
                    <span>冰林儿</span>
                    <span>10月19</span>  
                </div>   
            </div>
            <div class="selyulcbli">
                <img src="../../assets/image/26.png" alt="">       
                <p>可乐鸡翅</p>
                <div>
                    <img src="../../assets/image/27.png" alt="">
                    <span>冰林儿</span>
                    <span>10月19</span>  
                </div>   
            </div>
            <div class="selyulcbli">
                <img src="../../assets/image/26.png" alt="">       
                <p>可乐鸡翅</p>
                <div>
                    <img src="../../assets/image/27.png" alt="">
                    <span>冰林儿</span>
                    <span>10月19</span>  
                </div>   
            </div>
            <div class="selyulcbli">
                <img src="../../assets/image/26.png" alt="">       
                <p>可乐鸡翅</p>
                <div>
                    <img src="../../assets/image/27.png" alt="">
                    <span>冰林儿</span>
                    <span>10月19</span>  
                </div>   
            </div>
            <div class="selyulcbli">
                <img src="../../assets/image/26.png" alt="">       
                <p>可乐鸡翅</p>
                <div>
                    <img src="../../assets/image/27.png" alt="">
                    <span>冰林儿</span>
                    <span>10月19</span>  
                </div>   
            </div>
            <div class="selyulcbli">
                <img src="../../assets/image/26.png" alt="">       
                <p>可乐鸡翅</p>
                <div>
                    <img src="../../assets/image/27.png" alt="">
                    <span>冰林儿</span>
                    <span>10月19</span>  
                </div>   
            </div>
            <div class="selyulcbli">
                <img src="../../assets/image/26.png" alt="">       
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
    },
    methods: {
        select(){
            this.$router.push("/detail")
        }
    },
}
</script>