<template>
    <div class="nav-bar">
        <ul>
            <li>
                <img :src="$route.path.includes('/home')?navBar[0].selected:navBar[0].default" alt="">
                <router-link to="/home" :class="{'activeLink':$route.path.includes('/home')}">首页</router-link>
            </li>
            <li><img :src="$route.path.includes('/recommend')?navBar[1].selected:navBar[1].default" alt="">
                <router-link to="/recommend" :class="{'activeLink':$route.path.includes('/recommend')}">推荐</router-link>
            </li>
            <li><img :src="$route.path.includes('/search')?navBar[2].selected:navBar[2].default" alt="">
                <router-link to="/search" :class="{'activeLink':$route.path.includes('/search')}">搜索</router-link>
            </li>
            <li>
                <img :src="$route.path.includes('/chat')?navBar[3].selected:navBar[3].default" alt="">
                <router-link to="/chat" :class="{'activeLink':$route.path.includes('/chat')}">商品</router-link>
            </li>
            <li><img :src="$route.path.includes('/me')?navBar[4].selected:navBar[4].default" alt="">
                <router-link to="/me" :class="{'activeLink':$route.path.includes('/me')}">我的</router-link>
            </li>
        </ul>
    </div>
</template>

<script>

    export default {
        name: "NavBar",
        data() {
            return {
                navBar: [
                    {
                        default: require('../../assets/img/icon_home.png'),
                        selected: require('../../assets/img/icon_home_selected.png'),
                    },
                    {
                        default: require('../../assets/img/icon_intro.png'),
                        selected: require('../../assets/img/icon_intro_selected.png'),
                    },
                    {
                        default: require('../../assets/img/icon_search.png'),
                        selected: require('../../assets/img/icon_search_selected.png'),
                    },
                    {
                        default: require('../../assets/img/icon_chat.png'),
                        selected: require('../../assets/img/icon_chat_selected.png'),

                    },
                    {
                        default: require('../../assets/img/icon_mine.png'),
                        selected: require('../../assets/img/icon_mine_selected.png'),
                    },
                ]
            }
        },
    }
</script>

<style scoped lang='less'>
    .activeLink {
        color: #e44449;
    }

    .nav-bar {
        background: white;
        position: fixed;
        bottom: 0;
        z-index: 999;
        width: 100%;
        ul {
            display: flex;
            width: 100%;
            li {
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                box-sizing: border-box;
                flex: 1;
                img {
                    width: 25%;
                    margin-bottom: 2px;
                    padding-top: 5px;
                }
                a {
                    color: #878787;
                }
            }
        }
    }

</style>