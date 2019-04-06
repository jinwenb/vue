<template>

    <ul class="shoplist" v-if="homeShopList.length>0">
        <li v-for="ShopList in homeShopList" :key="ShopList.id">
            <div class="shop-left">
                <img
                        :src="ShopList.thumb_url"
                        alt=""></div>
            <div>
                <div class="container">
                    <p>{{ShopList.goods_name}}</p>
                    <div class="container-bottom">
                        <span class="price">${{ShopList.price}}</span>
                        <span class="title">{{ShopList.sales_tip}}</span>
                        <span class="container-img">
                            <img src="http://t20img.yangkeduo.com/a/419613b5ef00a31c07f398f4a9e0939705b1f53f-1554122716?imageMogr2/sharpen/1%7CimageView2/2/w/50/q/70/format/webp"
                                 alt="">
                            <img src="http://t20img.yangkeduo.com/a/419613b5ef00a31c07f398f4a9e0939705b1f53f-1554122716?imageMogr2/sharpen/1%7CimageView2/2/w/50/q/70/format/webp"
                                 alt="">
                        </span>
                    </div>
                </div>
            </div>
        </li>
    </ul>
</template>

<script>
    import {mapState} from 'vuex'

    export default {
        name: "shopList",
        data() {
            return {}
        },
        methods: {},
        components: {},
        computed: {
            ...mapState(['homeShopList'])
        }
    }
</script>

<style scoped lang='less'>
    .shoplist {
        margin-bottom: 75px;
        li {
            display: flex;
            font-size: 12px;
            margin-bottom: 5px;
            background: white;
            height: 156px;
            .shop-left {
                img {
                    width: 156px;
                    height: 156px;
                }

            }
            div:nth-of-type(2) {
                padding-left: 10px;
                position: relative;
                bottom: 0;
                padding-top: 12px;
                box-sizing: border-box;
                height: 100%;
                p {
                    line-height: 22px;
                    height: 44px;
                    overflow: hidden;
                    font-weight: 400;
                    font-size: 14px;
                }
                .container-bottom {
                    display: flex;
                    position: absolute;
                    align-items: center;
                    justify-items: center;
                    font-size: 12px;
                    bottom: 0;
                    .price {
                        color: red;
                        flex: 1;
                        font-size: 18px;
                        font-weight: bold;
                        margin-right: 2px;
                    }
                    .title {
                        flex: 2;
                    }
                    .container-img {
                        flex: 1;
                        img {
                            border-radius: 50%;
                            width: 30%;
                        }
                    }
                }
            }
        }
    }
</style>