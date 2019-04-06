<template>
    <div class="search-nav">
        <span>
            <img src="../images/search.png" alt="">
            <input type="text" ref="input" placeholder="请输入关键字">
        <button @click="ToggleSearchNav(false)">取消</button>
        </span>
        <div class="hot-container">
            <img class="hot" src="../images/hot.png" alt="">
            热门搜索
        </div>
        <ul>
            <li>男装体恤</li>
            <li>男装体恤</li>
            <li>男装体恤</li>
            <li>男装体恤</li>
            <li>男装体恤</li>
            <li>男装体恤</li>
            <li>男装体恤</li>
            <li>男装体恤</li>
        </ul>
    </div>
</template>

<script>
    export default {
        name: "SearchNav",
        props:{
            ToggleSearchNav:{
                type:Function
            }
        },
        mounted(){
            this.$refs.input.focus()
        }
    }
</script>

<style scoped lang='less'>
.search-nav {
    position: fixed;
    background: white;
    height: 100%;
    z-index: 999;
    width: 100%;
    top: 0;
    color: #58595b;
    font-weight: bold;
    ul {
        display: flex;
        flex-wrap: wrap;
        li {
            line-height: 32px;
            background: #ededed;
            width: 28%;
            display: flex;
            justify-content: center;
            border-radius: 10px;
            box-sizing: border-box;
            margin:2%;
            font-size: 12px;
        }
    }
    .hot-container {
        display: flex;
        align-items: center;
        margin: 10px;
        .hot {
            width: 16px;
            height: 18px;
            margin-right: 5px;
        }
    }

    span {
        display: flex;
        width: 80%;
        position: relative;
        transform: translateX(10%);
        border-radius: 10px;
        justify-content: center;
        height: 36px;
        align-items: center;
        margin-top: 15px;
        background: #ededed;
        img {
            width: 24px;
            height: 24px;
        }
        button{
            background: transparent;
            border: none;
        }
        input {
            border: none;
            outline: none;
            background: transparent;

        }

    }
}
</style>