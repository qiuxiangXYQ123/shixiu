
<template>
    <div>
        div
        <div style="height:100px;">
            <mt-swipe :auto="0" :show-indicators="false">
                <mt-swipe-item class="red">1</mt-swipe-item>
                <mt-swipe-item class="blue">2</mt-swipe-item>
                <mt-swipe-item class="green">3</mt-swipe-item>
            </mt-swipe>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
           list:[],
           uid:1,
        }
    },
    methods:{
        //查询所有的用户
        // loadMore(){
        //     //查询关注的用户
        //     var url="user"
        //     var obj={uid:this.uid,pno:this.pno}
        //     this.axios.get(url,{params:obj})
        //     .then(res=>{
        //         var rows=this.list.concat(res.data.data);
        //         this.list=rows;
        //         //  console.log(this.list)               
        //     })
        // }
    }
}
</script>
<style scoped>
#auto{
    height:100%;
    overflow:auto;
}
.mint-swipe{
    width:100%
}
.red,.green,.blue{
    width:100%;
    height:100px;
}
.red{
    background:red;
}
.blue{
    background:blue
}
.green{
    background:green;
}
</style>