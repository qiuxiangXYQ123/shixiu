
<template>
    <div class="parent">
        <div class="guan" @click="back"><span><img :src="require('../../assets/img/guanbi.png')" alt=""></span></div>
        <div class="nei">
            <p>生活不只诗和远方，还有眼前的肉和汤</p>
        </div>
        <div class="tu">
            <div>
                <img :src="require('../../assets/img/meishi1.png')" alt="">
                <p class="wen">传菜谱</p>
            </div>
            <div @click="shai">     
                <img :src="require('../../assets/img/meishi2.png')" alt="">
                <p class="wen">晒美食</p>
            </div>
            <div>
                <img :src="require('../../assets/img/meishi3.png')" alt="">
                <p class="wen">写图文</p>
            </div>
        </div>
    </div>
</template>


<script>
import Shai from "./Shai"
export default {
    data(){
        return{

        }
    },
    components:{
        "shai":Shai
    },
    methods: {
        back(){
            javascript:history.back(-1);
            
        },
        shai(){
            this.$router.push("/shai")
        }
    },
}
</script>


<style scoped>
/* 父元素 */
.parent{
    width:100%;
    height:100%;
}
/* 关闭 */
.guan{
    width:100%;
    height:50px;
    display:flex;
    padding:8px;
    box-sizing:border-box;
}
.nei{
    width:100%;
    height:35vh;
    display:flex;
    flex-wrap:wrap;
     align-content: flex-start;
     padding:8px;
     box-sizing:border-box;
     margin-top:10px;

}
/* 内容 */
.nei>p{
    font-size:30px;
    font-weight: 500;
    margin:0;
    text-align: center;
}
.tu{
    width:100%;
    display:flex;
    justify-content: space-around;
    padding:8px;
    box-sizing:border-box;
}
.tu>div{
    width:33.33%;
    text-align:center;
}
 .tu img{
     width:70px;
 }
 .tu .wen{
     font-size:12px;
     margin-top:5px;
 }
</style>


