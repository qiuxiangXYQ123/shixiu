<style scoped>
    .imghead{
        border-radius:50%;        
        width:50px;
        margin-left:5%;
        margin-right:5%;        
        float:left;
        z-index:0;
    }
    .pitem{
        float:left;
        width:50%;
        z-index:0;
    }
    .pitem>p{
        margin: 5px 0 ;
        overflow: hidden;
        text-overflow:ellipsis;
        white-space: nowrap;
        font-size:16px;
        z-index:0;
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
        font-size:14px;
        padding:3px 7px;
        margin-top:17px;
        outline:0;
    }
    .btnred{
        border-color:#ff3232;
        color:#ff3232
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
        z-index:2;
    }
    .wu>img{
        width:100%;
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
        <p>暂无关注对象欧~~</p>
        <img src="../../assets/image/timg.jpg">
    </div>
    <div   v-else>
        <div class="tiao" v-for="(item,i) of list" :key="i" @click="select" :data-uid="item.uid">
            <img :data-uid="item.uid" class="imghead" :src="`http://127.0.0.1:4000/${item.headimage}`">
            <div :data-uid="item.uid" class="pitem">
                <p :data-uid="item.uid">{{item.uname}}</p>
                <p :data-uid="item.uid">{{item.autograph}}</p>
            </div>
                <button class="gzbtn" @click="gz" :data-uta="item.uid">已关注</button>
        </div>
       

    </div>
    
</template>
<script>
// const postDta=JSON.stringify(this.formCustomer)
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
        this.loadMore(`follow`);
        var windowHeight=window.screen.availHeight;
        var lineHeight=52+660*this.pno;
        console.log(windowHeight)        
        if(lineHeight<=windowHeight){
            this.pno++;
            this.loadMore(`follow`);
        }
        var _this=this
        window.addEventListener("scroll",function(){
            var windowHeight=window.screen.availHeight;            
            var lineHeight=52+660*_this.pno;
            var scrollTop=document.documentElement.scrollTop;
            if(scrollTop+windowHeight>=lineHeight){
                _this.pno++;   
                _this.loadMore(`follow`); // 执行增加页面数据操作
            } 
        });
    },
    methods:{
        //滚动后加载更多数据
        loadMore(e){
            //查询关注的用户
            var url="follow"
            var obj={pno:this.pno,bool:e}
            this.axios.get(url,{params:obj})
            .then(res=>{
                var rows=this.list.concat(res.data.data);
                this.list=rows;
                if(this.list.length==0){
                    this.bol=true;
                    return;
                }else{
                    this.bol=false;
                }
            })
        },
        //添加关注或删除关注
        gz(e){
            var event=e.target;
            var u_ta=event.dataset.uta
            console.log(u_ta)
            if(event.innerHTML=="已关注"){
                event.innerHTML="关注" 
                event.classList.add('btnred')
                var url="removegz"
                var obj={u_ta}
            }else{
                event.innerHTML="已关注"
                event.classList.remove('btnred')
                var url="addgz"
                var obj={u_ta}
            }
            this.axios.get(url,{params:obj})
            .then(res=>{
                console.log(res.data.msg)
            })
        },
        //用来做关注或粉丝跳转
        select(e){
            
            console.log(e.target.dataset.uid)
            // if(){

                // this.$router.push("/")   
            // }
  
        }
    
    },
}
</script>