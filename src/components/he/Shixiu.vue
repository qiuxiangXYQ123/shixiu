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
        font-size:18px;
        display: line;
    }
    .mint-navbar .mint-tab-item.is-selected {
        border-bottom: 3px solid #ff3232 ;
        color: #ff3232 ;
        margin-bottom: -3px;    
    }
    .mint-tab-container{
        top:52px;

    }

</style>
<template>
    <div>
        <!--顶部的选项卡-->
        <div class="fixed">
        <mt-navbar v-model="selected">
            <mt-tab-item class="xk" id="gz">食秀</mt-tab-item>
            <mt-tab-item class="xk" id="fs">食杰</mt-tab-item>
        </mt-navbar>
        </div>
        <!--选卡中的内容-->
        <mt-tab-container v-model="selected">
            <mt-tab-container-item id="gz">
              <shixiusub></shixiusub>
            </mt-tab-container-item>
            <mt-tab-container-item id="fs">
              <shijie></shijie>
            </mt-tab-container-item>
        </mt-tab-container>
    </div>
</template>
<script>
import Shixiusub from './Shixiusub'
import Shijie from './Shijie'

export default {
    data(){
        return{
            selected:"gz",
        }
    },
    components:{
        "shixiusub":Shixiusub,
        "shijie":Shijie
    },
    methods:{
        back(){
            this.$router.go(-1);
        },

    }

}
</script>