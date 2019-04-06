<template>
    <div class="user-container">
        <div v-if="!userInfo.id">
            <Selected/>
        </div>
        <div v-else class="container" style="text-align: center">
            <span class="username">{{userInfo.username}}
            </span>
            <hr>
            <ul class="order">
                <li>
                    <div class="title">
                        <span>我的订单</span>
                        <span>查看全部</span>
                    </div>
                    <ul>
                        <li>
                            <i class="iconfont icon-icon_discovery"></i>
                            待付款
                        </li>
                        <li>
                            <i class="iconfont icon-icon_discovery"></i>
                            带分享
                        </li>
                        <li>
                            <i class="iconfont icon-icon_discovery"></i>
                            代收获
                        </li>
                        <li>
                            <i class="iconfont icon-icon_discovery"></i>
                            待评价
                        </li>

                    </ul>
                </li>
                <li>
                    <ul>
                        <li>
                            <i class="iconfont icon-icon_discovery"></i>
                            待付款
                        </li>
                        <li>
                            <i class="iconfont icon-icon_discovery"></i>
                            带分享
                        </li>
                        <li>
                            <i class="iconfont icon-icon_discovery"></i>
                            代收获
                        </li>
                        <li @click="SetUp">
                            <i class="iconfont icon-icon_discovery"></i>
                            设置
                        </li>

                    </ul>
                </li>
            </ul>
        </div>
    </div>
</template>

<script>
    import {mapState} from 'vuex'
    import Selected from './Selected'

    export default {
        name: "User",
        data() {
            return {}
        },
        methods: {
            SetUp(){
               this.$router.push(`/userInfo`)
            }
        },
        components: {Selected},
        computed: {
            ...mapState([
                'userInfo'
            ])
        }
    }
</script>

<style scoped lang='less'>
    .container {
        background: #f5f5f5;
        width: 100%;
        .username {
            display: flex;
            text-align: center;
            line-height: 30px;
            align-items: center;
            justify-content: center;
            span {
                margin-left: 30%;
                font-size: 20px;
                cursor: pointer;
            }
        }
        .order {
            width: 100%;
            background: white;
            li {
                margin-bottom: 20px;
                div {
                    display: flex;
                    justify-content: space-between;
                    padding: 10px;
                }
                ul {
                    display: flex;
                    li {
                        i {
                            color: red;
                            margin-bottom: 5px;
                        }
                        width: 25%;
                        display: flex;
                        flex-direction: column;
                        align-items: center;
                        justify-content: center;

                    }
                }
            }
        }
    }

</style>