<style scoped>
    
    .qie{
        height:8vh;
        position:fixed;
        bottom:-1px;
        display:flex;
        justify-content:space-around;
        width:100%;
        color:#333;
        background:#fff;
        padding-top:10px;
    }
    .qie>a{
        width:33.333%;
        height:100%;
        text-align:center;
    }
    .qie span{
        color:#333;
    }
    .red{
        color:#ff3232
    }
</style>
<template>
<div>
        <router-view></router-view>
    <div class="qie">
        <router-link to="/zhu" id="shilv" @click.native="changeState(0)">
            <tabbaricon
            :normalImage="require('../assets/icon/shilv (1).png')"
            :selectedImage="require('../assets/icon/shilv (2).png')"
            :focused="currentIndex[0].isSelect">
            </tabbaricon>
            食旅
        </router-link>
        <router-link to="/shixiu" id="shixiu" @click.native="changeState(1)">
            <tabbaricon
            :normalImage="require('../assets/icon/shixiu (1).png')"
            :selectedImage="require('../assets/icon/shixiu (2).png')"
            :focused="currentIndex[1].isSelect"
            >
            </tabbaricon>
            食秀
        
        </router-link>
        <router-link to="/personal" id="user" @click.native="changeState(2)">
            <tabbaricon
            :normalImage="require('../assets/icon/user (1).png')"
            :selectedImage="require('../assets/icon/user (2).png')"
            :focused="currentIndex[2].isSelect">
            </tabbaricon>
            我的
        
        </router-link>
    </div>


    
</div>
</template>
<script>
import TabBarIcon from "./TabBarIcon"




export default {
    data(){
        return{
            selected:"shilv",
            currentIndex:[
                {isSelect:true},
                {isSelect:false},
                {isSelect:false}
            ]
        }
    },
    components:{
        "tabbaricon":TabBarIcon,

    },
    methods: {
        changeState(n){
            //函数功能:将当前参数下标
            //对应数组值修改true其它修改false
            //1:创建循环,循环数组中内容
            for(var i=0;i<this.currentIndex.length;i++){
            //2:判断如果循环下标与n相等 20
                if(n==i){
                    //3:当前下标元素true 10:22
                    this.currentIndex[i].isSelect=true;
                     
                }else{
                    //4:其它元素修改false
                    this.currentIndex[i].isSelect=false;
                }
            
            }

        }
    },
}
</script>