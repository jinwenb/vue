<template>
    <div class="search">
        <SearchoTop :ToggleSearchNav="ToggleSearchNav"/>
        <div class="search-container">
            <div class="search-container-menu">
                <ul v-if="searchs">
                    <li v-for="(search,index) in searchs"
                        :key="search.id"
                        :class="{menu_selected:current_index===index}"

                        @click="toRightElement(index)"
                        ref="leftMenu"
                    >
                        {{search.name}}
                    </li>
                </ul>
            </div>
            <div class="search-container-list">
                <ul class="search-container-list-container"
                    ref="scrollRight"
                    v-if="searchs.length>0">
                    <li class="search-container-list-item" v-for="searchList in searchs" :key="searchList.id">
                        <div class="search-item-top">
                            <span>{{searchList.name}}</span>
                            <span>查看更多</span>
                        </div>
                        <div v-if="searchList.category">
                            <ul class="categorys">
                                <li v-for="(categorys,index) in searchList.category" :key="index">
                                    <img :src="categorys.icon" alt="">
                                </li>
                            </ul>
                        </div>
                        <ul class="search-item-container">
                            <li v-for="(searchListItem,index) in searchList.items" :key="index">
                                <img :src="searchListItem.icon"
                                     alt="">
                                <span>{{searchListItem.title}}</span>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <SearchNav v-if="searchNav" :ToggleSearchNav="ToggleSearchNav"/>
    </div>
</template>

<script>
    import {mapState} from 'vuex'
    import SearchoTop from './children/SearchTop'
    import SearchNav from './children/SearchNav'
    import BScroll from 'better-scroll'


    export default {
        name: "Search",
        data() {
            return {
                //记录滚动的时候对应的左边要加的索引
                scrollArr: [],
                //得到滚动的时候的高度
                scrollHeight: 0,
                //搜索框的显示隐藏
                searchNav: false
            }
        },

        components: {
            SearchoTop,
            SearchNav
        },
        mounted() {
            //请求搜索的接口
            this.$store.dispatch('reqSearch')
        },
        computed: {
            ...mapState(['searchs']),
            //算出每次滑动的位置  左边的menu该那个高亮显示
            current_index() {
                const {scrollArr, scrollHeight} = this;
                return scrollArr.findIndex((height, index) => {
                    //每次进来的时候都让左边菜单跳到相应的位置
                    this.goLeftMenu(index);
                    return scrollHeight >= height && scrollHeight < scrollArr[index + 1]
                })
            }
        },
        watch: {
            searchs() {
                this.$nextTick(() => {
                    //绑定滑动事件
                    this._initScroll();
                    //获取元素的高度
                    //获取每个li的高度
                    this._GetListScrollHeight()
                })
            }
        },
        methods: {
            //初始化滑动
            _initScroll() {
                this.leftScroll = new BScroll('.search-container-menu', {
                    probeType: 3,
                    click: true
                });
                this.rightScroll = new BScroll('.search-container-list',
                    {
                        probeType: 3,
                        click: true
                    });
                this.rightScroll.on('scroll', ({y}) => {
                    this.scrollHeight = Math.abs(y)
                    //每次滑动的时候都跳到对应的位置
                })
                this.leftScroll.on('scroll', () => {
                    this.leftScroll.refresh()
                })
                this.leftScroll.on('scrollEnd', () => {
                    this.leftScroll.refresh()
                })
            },
            _GetListScrollHeight() {
                let temp = [];
                let top = 0;
                temp.push(top);
                Array.from(this.$refs.scrollRight.children).forEach(ele => {
                    top += ele.clientHeight;
                    temp.push(top)
                });
                this.scrollArr = temp;
            },
            //让点击的时候右边的元素跳入到对应的位置
            toRightElement(index) {
                const {scrollArr} = this;
                this.rightScroll.scrollTo(0, -scrollArr[index], 200)
            },
            //实现联动
            goLeftMenu(index) {
                this.leftScroll.scrollToElement(this.$refs.leftMenu[index], 200, 0, -100)
            },
            //切换nav的隐藏和显示
            ToggleSearchNav(flag) {
                this.searchNav = flag
            }
        },
    }
</script>

<style scoped lang='less'>
    .search {
        background: #f5f5f5;
        width: 100%;
        height: 100%;
        /*overflow: hidden;*/
    }

    .search-container {
        padding-bottom: 75px;
        display: flex;
        height: 100%;
        margin-top: 50px;
        overflow: hidden;
        background: white;
        .search-container-menu {
            padding-bottom: 75px;
            width: 90px;
            height: 100%;
            overflow: hidden;
            background: white;
            ul {
                background: white;
                .menu_selected {
                    color: #cd9693
                }
                .menu_selected::before {
                    content: "";
                    height: 30px;
                    background: orange;
                    width: 2px;
                    position: absolute;
                    left: 5px;
                }
                li {
                    position: relative;
                    background: #fafafa;
                    line-height: 60px;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    color: black;
                    font-weight: lighter;
                }
            }
        }
        .search-container-list {
            padding-bottom:75px;
            flex: 1;
            height: 100%;
            overflow: hidden;
            // background: #ffffff;
            .search-container-list-container {
                margin-bottom:75px;
            //  margin-bottom: 75px;
                width: 100%;
                color: black;
                //  background: #ffffff;
                .search-container-list-item {
                    background: white;
                    width: 100%;
                    .categorys {
                        display: flex;
                        flex-wrap: wrap;
                        margin: 10px 0;
                        li {
                            width: 33%;
                            justify-content: center;
                            align-items: center;
                            display: flex;
                            img {
                                width: 70%;
                            }
                        }
                    }
                    .search-item-top {
                        background: #ffffff;
                        display: flex;
                        justify-content: space-between;
                        font-size: 12px;
                        padding: 0 10px;
                        color: #747474;
                        font-weight: bold;
                        line-height: 40px;
                    }
                    .search-item-container {
                        display: flex;
                        flex-wrap: wrap;
                        width: 100%;
                        li {
                            width: 33%;
                            display: flex;
                            align-items: center;
                            justify-content: center;
                            flex-direction: column;
                            background: white;
                            color: #747474;
                            font-weight: bold;
                            margin-bottom: 10px;

                            img {
                                width: 33%;
                            }
                        }

                    }
                }
            }
        }
    }
</style>