import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import MintUI from 'mint-ui'
import 'mint-ui/lib/style.css'
import './assets/css/my-mint.scss'


Vue.use(MintUI)

import axios from "axios"
axios.defaults.baseURL="http://127.0.0.1:4000/";
axios.defaults.withCredentials=true
Vue.prototype.axios=axios;



new Vue({
  router,
  render: h => h(App),
  store
}).$mount('#app')
