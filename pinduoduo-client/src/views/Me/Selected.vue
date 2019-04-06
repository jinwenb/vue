<template>
    <div class="container-selected">
        <img :src="icon" alt="">
        <button @click="()=>{this.$router.push('register')}">去注册</button>
        <button @click="()=>{this.$router.push('login')}">去登陆</button>
    </div>
</template>

<script>
    export default {
        name: "Selected",
        data() {
            return {
                icon:require('../../assets/logo.png')
            }
        },
        methods: {},
        components: {}
    }
</script>

<style scoped lang='less'>
    .container-selected {
        position: absolute;
        top: 50%;
        width: 100%;
        transform: translateY(-50%);
        text-align: center;
        img {
            width: 80%;
        }
        button {
            width: 100%;
            background: white;
            margin: 5px 0;
            border: none;
            line-height: 30px;
            font-weight: inherit;
        }
    }
</style>