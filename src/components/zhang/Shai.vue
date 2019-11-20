<template>
    <div>
        <!-- 头部 -->
        <div class="header">
            <img src="../../assets/img/xiaoyu.png" alt="" @click="back">
            <span style="font-size:18px;">晒美食</span>
            <button size="normal" color="#ff3232" >发布</button>
        </div>
        <!-- 发表内容 -->
        <div class="fa">
            <textarea cols="30" rows="5" placeholder="此刻，你想说点什么......"></textarea>
        </div>
        <!-- 上传图片 -->
        <van-uploader class="chuan" v-model="fileList" multiple :max-count="4"
        :before-read="beforeRead" :after-read="afterRead"/>

        <!--话题榜-->
        <div class="hua">
            <div class="tu">
                <img src="../../assets/img/tu1.png" alt="">
                <div>
                    <p>添加话题</p>
                    <p>选择话题会跟多人关注你哦~</p>
                </div>
            </div>
            <div class="span">
                <span>请选择</span>
                <span>></span>
            </div>
        </div>
        <!-- 菜谱榜 -->
        <div class="cai">
            <div class="tu">
                <img src="../../assets/img/tu2.png" alt="">
                <div>
                    <p>关联菜谱</p>
                    <p>是照着哪个菜谱做的？</p>
                </div>
            </div>
            <div class="span">
                <span>请选择</span>
                <span>></span>
            </div>
        </div>
    </div>
</template>




<script>

import Vue from 'vue';
import { Uploader } from 'vant';
Vue.use(Uploader);

export default {
    data() {
        return {
            fileList: [],
            files:[]
        }
    },
    methods: {
        back(){
            this.$router.go(-1);
        },
        afterRead(file) {
            // 此时可以自行将文件上传至服务器
            var item = {
                name: file.file.name,
                uploadPercentage: 0
            };
            this.files.push(item);
            var fd = new FormData();
            fd.append('avatar', file.file);
            // 发送请求
            this.axios.post("/upload",fd,{
            onUploadProgress: (progressEvent) => {
            //这里要用箭头函数
            //不然这个this的指向会有问题
            item.uploadPercentage=parseInt((progressEvent.loaded/progressEvent.total)*100);
            }
            }).then(res=>{
           
            });
            
            },
        // 返回布尔值
        beforeRead(file) {
            if (file.type !== 'image/jpeg') {
                console.log('请上传 jpg 格式图片');
                return false;
            }
            return true;
        },
        // 返回 Promise
        asyncBeforeRead(file) {
            return new Promise((resolve, reject) => {
                if (file.type !== 'image/jpeg' || file.type !== 'image/png') {
                    console.log('请上传 正确 格式图片');
                    reject();
                } else {
                    resolve();
                }
            });
        }
    },
}
</script>





<style scoped>
/* 头部 */
.chuan >>> .van-uploader__upload{
    border-color:#aaa;
    background:#efefef;
}
.header{
    display:flex;
    justify-content: space-between;
    align-items:center;
    width:100%;
    padding:10px 0;
    height:35px;

    box-shadow:0px 5px 20px #e8e8e8;
    z-index:10;
}
/* 返回图片 */
.header>img{
    width:20px;
    height:20px;
    margin-left:3%;
}
.header>span{
    padding:4px;
}
.header>button{
    border-radius:20px;
    border:0;
    background:#ff3232;
    color:#fff;
    padding:3px 10px;
    font-size:14px;
    margin-right:3%;
    outline:0;
}
/* 发布按钮 */
.header>>>.mint-badge.is-size-normal {
    font-size:14px;
    height:16px;
    width:40px;
    margin-top:4px;
    margin-right:4px;
    line-height: 17px;
}
/* 发表内容 */
.fa{
    margin-top:10px;
}
.fa>textarea {
    font-size:16px;
    width:100%;
    height:150px;
    border:0;
    outline:0;
    background:0;
    padding:10px 20px;
    box-sizing:border-box;
}
/* 上传图片 */
.chuan>div>img{
    width:100%;
    margin-left:14%;
}
.chuan>div{
    width:22%;
}
.chuan{
    margin:0 0 5px 10px;;
}
/* 话题 */
.hua,.cai{
    box-sizing:border-box;
    display:flex;
    justify-content: space-between;
    padding:15px 10px;
    border-top:1px solid #e8e8e8;
    border-bottom:1px solid #e8e8e8;
    width:100%;
    
}
/* 菜谱 */

/* 小图片 */
.tu{
    width:75%;
    display:flex;
    justify-content: flex-start;
    padding-left:8px;
}
.tu>img{
    width:18px;height:18px;
    /* margin-top:5px; */
}
.tu>div{
    width:100%;
    margin-left:10px;
}
/* p标签内容 */
.tu>div>p:first-child{
    font-size:16px;
    font-weight: 600;
    width:100%;
    margin:0;
    color:#444
}
.tu>div>p:nth-child(2){
    margin-top:10px;
    margin-bottom:0;
    font-size:14px;
    color:#999
}
/* 请选择 */
.span{
font-size:16px;
padding-right:8px;
color:#999
}
.span>span{
    margin-left:5px;
}
</style>
















