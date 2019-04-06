<template>
    <div class="login">
        <img :src="icon" alt="">
        <input type="text" placeholder="请输入用户名"
               v-model="username">
        <input type="password" placeholder="请输入密码"
               v-model="password">
        <button @click="login">登陆</button>
    </div>
</template>

<script>
    import {userLogin} from '../../axios/index'
    import {Toast} from 'mint-ui';

    export default {
        name: "Login",
        data() {
            return {
                username: '',
                password: '',
		icon:require('../../assets/logo.png')
            }
        },
        methods: {
            async login() {
                let {username, password} = this;
                let result = await userLogin({username, password})
                let {data} = result;
                if (data.code) {
                    Toast({
                        message: data.message,
                        position: 'bottom',
                        duration: 5000
                    })
                } else {
                    //如果成功了保存用户信息并且跳转路径
                    this.$store.dispatch('getUserInfo', data.data);
                    this.$router.replace('/me')
                }
            }
        },
    }
</script>

<style scoped lang='less'>
    .login {
        width: 100%;
        background: #f5f5f5;
        position: relative;
        top: 50%;
        transform: translateY(-50%);
        text-align: center;
        img {
            width: 80%;

        }
        input {
            line-height: 30px;
            background: white !important;
            text-align: center;
            width: 100%;
            margin: 5px 0;
        }
        button {
            line-height: 30px;
            width: 100%;
            background: white;
        }
    }
</style>