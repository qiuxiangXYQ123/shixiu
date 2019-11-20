import Vue from 'vue'
import Router from 'vue-router'
import HOME from "./components/HOME.vue"
import Follow from "./components/user/Follow.vue"
import Detail from "./components/he/Detail.vue"
import Shai from "./components/zhang/Shai.vue"
import Weibu from "./components/zhang/Weibu.vue"
import Login from "./components/views/Login.vue"
import Res from "./components/views/Res.vue"
import search from "./components/user/search.vue"

import Personal from "./components/views/Personal.vue"
import Zhu from "./components/zhang/Zhu.vue"
import Shixiu from "./components/he/Shixiu.vue"
import Sou from "./components/user/Sou.vue"







import HelloContainer from "./components/HelloWorld.vue"


 

Vue.use(Router)

export default new Router({
    //http://127.0.0.1:3001/#/Exam02
  //path:组件路径 components组件名
  mode:"history",
  routes: [
    {path:'/Follow',component:Follow},
    {path:'/HOME',component:HOME,children:[
      {path:'/Personal',component:Personal},
      {path:'/Zhu',component:Zhu},
      {path:'/Shixiu',component:Shixiu}, 
    ]},
    {path:'/Shai',component:Shai},
    {path:'/Weibu',component:Weibu},
    {path:'/Zhu',component:Zhu},
    {path:'/Detail/:z_lvid',component:Detail,props:true},
    {path:'/Login',component:Login},
    {path:'/Res',component:Res},
    {path:'/search',component:search},
    {path:'/Sou',component:Sou},
    {path:'*',redirect:"Zhu"},
    

    
    
    
    
    

    
  ]
})
