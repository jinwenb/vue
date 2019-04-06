<template>
    <div class="swiper-container">
        <div class="swiper-wrapper" v-if="homecasual.length>0">
            <div class="swiper-slide" v-for="(casual,index) in homecasual" :key="index">
                <img :src="casual.imgurl" alt="">
            </div>
        </div>
        <!-- 如果需要分页器 -->
        <div class="swiper-pagination"></div>
    </div>
</template>

<script>

    import Swiper from 'swiper'
    import 'swiper/dist/css/swiper.min.css'
    import {mapState} from 'vuex'

    export default {
        name: "Swipe",
        data() {
            return {}
        },
        mounted() {

        },
        computed: {
            ...mapState(['homecasual'])
        },
        watch: {
            homecasual() {
                this.$nextTick(() => {
                    new Swiper('.swiper-container', {
                        loop: true, // 循环模式选项
                        autoplay: true,
                        // 如果需要分页器
                        pagination: {
                            el: '.swiper-pagination',
                        },
                        // 如果需要滚动条
                        scrollbar: {
                            el: '.swiper-scrollbar',
                        },
                    })
                })

            }
        }
    }
</script>

<style scoped lang='less'>
    .swiper-container {
        margin-top: 50px;
        img {
            width: 100%;
        }
    }
</style>