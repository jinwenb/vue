<template>
    <a class="recommend-item">
        <img :src="shopList.thumb_url" alt="">
        <p class="title">{{shopList.goods_name}}</p>
        <div class="recommend-menu">
            <span class="price">{{shopList.price}}</span>
            <span class="recommend-menu-title">
                      {{shopList.sales_tip}}
                  </span>
            <button @click="handleClick(shopList)">拼单</button>
        </div>
    </a>
</template>

<script>
    export default {
        name: "index",
        props: {
            shopList: {type: Object},
            handleClick: {
                type: Function, default: () => {
                }
            }
        }
    }
</script>

<style scoped lang='less'>
    .recommend-item:nth-of-type(2n-1) {
        margin-right: 1%;
    }

    .recommend-item {
        width: 49%;
        font-size: 12px;
        display: flex;
        flex-wrap: wrap;
        margin-bottom: 5px;
        padding-left: 5px;
        box-sizing: border-box;
        margin-top: 5px;
        background: white;
        img {
            width: 100%;
        }
        .title {
            line-height: 22px;
            height: 44px;
            margin: 5px 0;
            color: #656565;
            overflow: hidden;
            padding: 5px;
        }
        .recommend-menu {
            display: flex;
            align-items: center;
            width: 100%;
            .price {
                flex: 1;
                color: #e54f46;
            }
            .recommend-menu-title {
                flex: 3;
                color: #c6c6c6;
            }
            button {
                flex: 1;
                background: white;
                height: 30px;
                border: none;
            }
        }
    }
</style>