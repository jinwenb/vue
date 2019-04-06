<template>
    <div class="recommend">
        <ul class="recommend-content" v-if="recommendList.length>0">
            <ShopList tag="li"
                      v-for="(shopList,index) in recommendList"
                      :key="index"
                      :shopList="shopList"
                      :handleClick="handleClick"
            >
            </ShopList>
        </ul>
    </div>
</template>

<script>
    import {mapState} from 'vuex'
    import ShopList from '@/components/shoplist'
    import {Indicator} from 'mint-ui'
    import Bscroll from 'better-scroll'
    import {addCartShopList} from '../../axios'

    export default {
        name: "Recommend",
        data() {
            return {
                pageSize: 1,
                pageNumber: 10
            }

        },
        components: {
            ShopList
        },
        mounted() {
            const {pageSize, pageNumber} = this;
            Indicator.open('加载中...');
            this.$store.dispatch('reqRecommendShopList', {pageSize, pageNumber, callback: () => Indicator.close()})
        },
        watch: {
            recommendList() {
                this.$nextTick(() => {
                    this.shopListScroll = new Bscroll('.recommend', {
                        probeType: 3
                    });
                    this.shopListScroll.on('touchEnd', ({y}) => {
                        //当滑倒了一定程度则继续加载数据
                        if (-(y + 20) >= -(this.shopListScroll.maxScrollY)) {
                            const {pageSize, pageNumber} = this;
                            this.pageSize = pageSize + 1;
                            Indicator.open('加载中...');
                            this.$store.dispatch('reqRecommendShopList', {
                                pageSize,
                                pageNumber,
                                callback: () => Indicator.close()
                            })

                        }
                    })
                    this.shopListScroll.on('scrollEnd', () => {
                        this.shopListScroll.refresh()
                    })
                })
            }
        },
        computed: {
            ...mapState(['recommendList'])
        },
        methods: {
            async handleClick(goods) {
                let {thumb_url, goods_name, price, short_name} = goods;
                console.log(goods);
                let goods_id = goods.id;
                await addCartShopList({thumb_url, goods_name, price, short_name, goods_id})
            }
        }
    }
</script>

<style scoped lang='less'>
    .recommend {
        background: #f4f4f4;

        width: 100%;
        margin-top: 10px;
        height: 100%;
        overflow: hidden;
        .recommend-content {
            padding-bottom: 75px;
            background: #f4f4f4;
            font-weight: bold;
            display: flex;
            flex-wrap: wrap;

        }
    }
</style>