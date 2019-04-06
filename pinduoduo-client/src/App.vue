<template>
    <div id="app">
        <keep-alive>
            <router-view/>
        </keep-alive>

        <nav-bar v-if="$route.meta.tabBarShow"/>
    </div>
</template>
<script>
    import NavBar from './components/NavBar/NavBar'
    import {getUserInfo} from './axios/index'


    export default {
        components: {
            NavBar
        },
        async created() {
            //实现自动登陆
            let result = await getUserInfo();
            let {data} = result;
            if (!result.code) {
                //如果成功了就保存用户信息
                this.$store.dispatch('getUserInfo', data)
            }
        }
    }
</script>
<style lang="less">
    #app {
        width: 100%;
        height: 100%;
        background: #f4f4f4;
    }

</style>
