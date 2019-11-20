<style scoped>
    .imghead{
        border-radius:50%;        
        width:50px;
        margin-left:5%;
        margin-right:5%;
        float:left;
        
    }
    .pitem{
        float:left;
        width:70%;

    }
    .pitem>p{
        margin: 5px 0 ;
        overflow: hidden;
        text-overflow:ellipsis;
        white-space: nowrap;
        font-size:16px;
    }
    .pitem>p:last-child{
        color:#aaa;
        font-size:14px;
    }
    .gzbtn{
        float:right;
        margin-right:10px;
        border-radius:50px;
        background:0;
        border:1px solid #ccc;
        color:#aaa;
        padding:5px 10px;
        margin-top:8px;
        outline:0;
    }
    .tiao:after{
        content:"";
        display:block;
        clear:both;
    }
    .tiao{
        border-top:1px solid #eee;
        border-bottom:1px solid #eee;        
        padding:7px 10px;
    }
    .wu>img{
        width:90%;
        margin-left:5%;
        position:fixed;
        top:50vh;
    }
    .wu>p{
        text-align:center;
        color:#aaa;
        font-size:2.5vh;
        margin-top:7vh;
    }
</style>
<!--关注的子组件-->
<template>
    <div class="wu" v-if="bol">
        <p>暂无粉丝欧~~</p>
        <img src="../../assets/image/timg (1).jpg">
    </div>
    <div v-else>
        <div class="tiao" v-for="(item,i) of list" :key="i" @click="select(item.uid)">
            <img class="imghead" :src='`http://127.0.0.1:4000/${item.headimage}`'>
            <div class="pitem">
                <p>{{item.uname}}</p>
                <p>{{item.autograph}}</p>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            list:[],
            pno:1,
            bol:true
        }
    },
    created(){
            //默认第一页时 ；
        this.loadMore(`follower`);
        var windowHeight=window.screen.availHeight;
        var lineHeight=52+660*this.pno;
        console.log(windowHeight)        
        if(lineHeight<=windowHeight){
            this.pno++;
            this.loadMore(`follower`);
            
        }
        var _this=this
        window.addEventListener("scroll",function(){
            var windowHeight=window.screen.availHeight;            
            var lineHeight=52+660*_this.pno;
            var scrollTop=document.documentElement.scrollTop;
            if(scrollTop+windowHeight>=lineHeight){
                console.log(_this.pno)
                _this.pno++;   
                _this.loadMore(`follower`); // 执行增加页面数据操作
            } 
        });


    },
    methods:{
        loadMore(e){
            //查询粉丝的用户
            var url="follow"
            var obj={pno:this.pno,bool:e}
            console.log(obj)
            this.axios.get(url,{params:obj})
            .then(res=>{
                var rows=this.list.concat(res.data.data);
                this.list=rows;
                if(this.list.length==0){
                    this.bol=true;
                    return;
                }else{
                    this.bol=false  ;
                }
            })
        },
        //用来做关注或粉丝跳转
        select(e){
            console.log(e)
  
        }
    }
}
</script>