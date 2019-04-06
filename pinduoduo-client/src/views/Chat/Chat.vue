<template>
    <div>

        <div class="cart-container" v-if="cartShopList.length>0">
            <ul class="cart-list">
                <li class="cart-list-item" v-for="ShopList in cartShopList" :key="ShopList.id">
                    <div>
                        <img :src='ShopList.thumb_url'
                             alt="">
                    </div>
                    <div class="list-item-container">
                        <p class="list-item-title">
                            {{ShopList.goods_name}}
                        </p>
                        <div class="cart-list-item-bottom">
                            <span class="price">${{ShopList.price/100}}</span>
                            <span class="title">已经{{ShopList.by_count}}件</span>
                            <span class="cart-list-item-img">
        <img src="http://t20img.yangkeduo.com/a/4681a66f9337c773e2e8b42a4f1519b8aa97eba9-1528627013?imageMogr2/sharpen/1%7CimageView2/2/w/58/q/70/format/webp"
             alt="">
        <img src="http://t20img.yangkeduo.com/a/4681a66f9337c773e2e8b42a4f1519b8aa97eba9-1528627013?imageMogr2/sharpen/1%7CimageView2/2/w/58/q/70/format/webp"
             alt="">
        </span>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div v-else></div>
    </div>
</template>

<script>
    import {mapState} from 'vuex'

    export default {
        name: "Chat",
        mounted() {
            //发送请求购物车的接口的异步action
            this.$store.dispatch('reqCartShopList')
        },
        computed: {
            ...mapState(['cartShopList'])
        }
    }
</script>

<style scoped lang='less'>
    .cart-container {
        margin-bottom: 75px;
        padding: 0 10px;
        .cart-list {
            .cart-list-item {
                margin-top: 10px;
                background: white;
                display: flex;
                margin-bottom: 10px;
                padding-bottom: 10px;
                position: relative;
                div:first-child {
                    flex: 2;
                    img {
                        width: 148px;
                        height: 148px;
                    }
                }
                .list-item-container {
                    flex: 3;

                    position: relative;
                    .list-item-title {
                        line-height: 22px;
                        height: 44px;
                        overflow: hidden;
                        color: #151516;
                        margin-top: 10px;
                        padding-left: 10px;
                        -webkit-box-sizing: border-box;
                        -moz-box-sizing: border-box;
                        box-sizing: border-box;
                    }
                    .cart-list-item-bottom {
                        padding-left: 10px;
                        box-sizing: border-box;
                        font-size: 12px;
                        position: absolute;
                        bottom: 5px;
                        display: flex;
                        align-items: center;
                        .price {
                            flex: 2;
                            color: #e02e24;
                        }
                        .title {
                            flex: 3;
                        }
                        .cart-list-item-img {
                            display: flex;
                            align-items: center;
                            flex: 2;
                            color: #d0d1d1;
                            img {
                                width: 40%;
                                border-radius: 50%;
                                &:last-child {
                                    margin-left: -10px;
                                }
                            }
                        }
                    }
                }

            }
        }
    }
</style>