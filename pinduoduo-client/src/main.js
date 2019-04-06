import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './vuex/store'
import './assets/css/result.css'
import './assets/font_1097567_fghfiyj3lfm/demo.css'
import './assets/font_1097567_fghfiyj3lfm/iconfont.css'
// 主页home 的头顶插件
import LyTab from 'ly-tab'
Vue.use(LyTab);
Vue.config.productionTip = false;

new Vue({
    router,
    render: h => h(App),
    store
}).$mount('#app')
