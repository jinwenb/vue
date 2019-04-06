<template>
    <div class="hot">
        <Swipe/>
        <NavBar/>
        <ShopList/>
    </div>
</template>

<script>
    //轮播组件
    import Swipe from './Swipe'
    //
    import NavBar from './NavBar'
    //商品列表组件
    import ShopList from "./ShopList";


    export default {
        data() {
            return {}
        },
        components: {Swipe, NavBar, ShopList},
        mounted() {
            //发送请求的轮播图的action
            this.$store.dispatch('reqHomecasual');
            //发送请求navbar数据的异步action
            this.$store.dispatch('reqHomeNav');
            //发送请求商品列表的action
            this.$store.dispatch('reqHomeShopList')

        }
    }
</script>

<style>
    .hot {
        background: #f5f5f5;
        height: 100%;
    }
</style>
