<style scoped>
    .mint-navbar{
        padding:0 30%;
        margin-bottom:5px;
        box-shadow:0px 10px 10px #e8e8e8;
        box-sizing:border-box;
    }
    .fixed{
        background:#fff;
        z-index:10;
        position:fixed;
        top:0;
        width:100%;
    }
    .xk >>> .mint-tab-item-label{
        font-size:2.8vh;
    }
    .xk{
        color:#666
    }
    .mint-navbar .mint-tab-item.is-selected {
        border-bottom: 3px solid #ff3232 ;
        color: #ff3232 ;
        margin-bottom: -3px;    
    }
    .mint-tab-container{
        top:52px;
    }
    .xiao{
        width:20px;height:20px;
        background:url(../../assets/icon/left.png) no-repeat center;
        background-size:100%;
        position:fixed;
        top:18px;left:17px;
    }
</style>
<template>
    <div>
        <!--顶部的选项卡-->
        <div class="fixed">
        <mt-navbar v-model="selected">
            <div class="xiao" @click="back"></div>
            <mt-tab-item class="xk" id="gz">关注</mt-tab-item>
            <mt-tab-item class="xk" id="fs">粉丝</mt-tab-item>
        </mt-navbar>
        </div>
        <!--选卡中的内容-->
        <mt-tab-container v-model="selected">
            <mt-tab-container-item id="gz">
                <followsub></followsub>
            </mt-tab-container-item>
            <mt-tab-container-item id="fs">
                <followersub></followersub>
            </mt-tab-container-item>
        </mt-tab-container>
    </div>
</template>
<script>
import Followsub from './Followsub'
import Followersub from './Followersub'
export default {
    data(){
        return{
            selected:"gz",
        }
    },
    components:{
        "followsub":Followsub,
        "followersub":Followersub
    },
    methods:{
        back(){
            this.$router.go(-1);
        },

    }

}
</script>