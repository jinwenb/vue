<template>
    <div style="margin-top: 30px;background: #f5f5f5;color: #cccccc">
        <Block
                :icon="'iconfont icon-icon_discovery'"
                :title="'设置'"
                :handleClick="handleClick"
        />
        <Block :icon="'iconfont icon-icon_discovery'"
               :handleClick="handleClick"
               :title="'设置'"/>
        <Block :icon="'iconfont icon-icon_discovery'"
               :handleClick="handleClick"
               :title="'设置'"/>
        <button @click="destroy">退出登陆</button>
    </div>
</template>

<script>
    import Block from '../../components/Block/Block'
    import {destroyCookie} from '../../axios'
    import {MessageBox} from 'mint-ui'
    import 'mint-ui/lib/message-box/style.css'

    export default {
        name: "UserInfo",
        data() {
            return {}
        },
        methods: {
            async destroy() {
                // this.$router.replace('/home')
                //  let result =  await destroyCookie();
                MessageBox.confirm('确定执行此操作?', '确认', '退出').then(async () => {
                    let result = await destroyCookie();
                    this.$router.replace('/home')
                    this.$store.dispatch('getUserInfo', {
                        message: result.data.message
                    })
                })


            },
            handleClick() {
                this.$router.back()
            }
        },
        components: {
            Block
        }
    }
</script>

<style scoped lang='less'>
    button {
        background: white;
        width: 100%;
        margin-top: 20px;
        line-height: 40px;
    }
</style>