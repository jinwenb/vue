<template>
    <div class="search-main" @click="ToggleSearchNav(true)">
        <div class="search-main-container">
            <img src="../images/search.png" alt="">
            <input type="text" placeholder="男装体恤"
            >
        </div>
    </div>
</template>

<script>
    export default {
        name: "SearchTop",
        props: {
            ToggleSearchNav: {
                type: Function
            }
        }
    }
</script>

<style scoped lang='less'>
    .search-main {
        width: 100%;
        background: white;
        height: 50px;
        z-index: 998;
        position: fixed;
        top: 0;
        left: 0;
        .search-main-container {
            display: flex;
            left: 0;
            justify-content: center;
            align-items: center;
            width: 90%;
            height: 38px;
            border-radius: 10px;
            position: relative;
            background: #ededed;
            margin-top: 5px;
            transform: translateX(5%);
            img {
                width: 14px;
                height: 14px;
                position: absolute;
                left: 40%;
            }
            input {
                text-align: center;
                padding-left: 20px;
                margin-left: 15px;
                width: 80%;
                font-weight: bold;
                border: none;
                outline: none;
                background: transparent;
            }
        }
    }

</style>