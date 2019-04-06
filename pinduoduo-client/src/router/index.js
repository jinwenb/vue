import Vue from 'vue'
import Router from 'vue-router'
import Home from '../views/Home/Home.vue'
import Hot from '../views/Home/children/Hot/Hot'
import Box from '../views/Home/children/Box'
import Dress from '../views/Home/children/Dress'
import Ele from '../views/Home/children/Ele'
import Food from '../views/Home/children/Food'
import General from '../views/Home/children/General'
import Man from '../views/Home/children/Man'
import Mbaby from '../views/Home/children/Mbaby'
import Shirt from '../views/Home/children/Shirt'

Vue.use(Router);

export default new Router({
    routes: [
        {
            path: '/home',
            component: Home,
            children: [
                {
                    path: 'hot',
                    component: Hot,
                    meta: {tabBarShow: true}
                },
                {
                    path: 'box',
                    component: Box
                },
                {
                    path: 'dress',
                    component: Dress
                },
                {
                    path: 'Ele',
                    component: Ele
                },
                {
                    path: 'Food',
                    component: Food
                },
                {
                    path: 'general',
                    component: General
                },
                {
                    path: 'man',
                    component: Man
                },
                {
                    path: 'mbaby',
                    component: Mbaby
                },
                {
                    path: 'shirt',
                    component: Shirt
                },
                {
                    path: '/',
                    redirect: 'hot'
                }

            ]
        },
        {
            path: '/chat',
            name: 'chat',
            component: () => import('../views/Chat/Chat.vue'),
            meta: {tabBarShow: true}
        },
        {
            path: '/me',
            name: 'me',
            component: () => import(  '../views/Me/Me.vue')
        },
        {
            path: '/recommend',
            name: 'recommend',
            component: () => import('../views/Recommend/Recommend.vue'),
            meta: {tabBarShow: true}
        },
        {
            path: '/search',
            name: 'search',
            component: () => import('../views/Search/Search.vue'),
            meta: {tabBarShow: true}
        },
        {
            path: '/login',
            component: () => import('../views/Login/Login.vue')
        },
        {
            path: '/register',
            component: () => import('../views/Register/Register.vue')
        },
        {
            path: '/userinfo',
            component: () => import('../views/UserInfo/UserInfo')
        },
        {
            path: '/',
            redirect: '/home'
        }

    ]
})
