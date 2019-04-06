<template>
    <div class="me-container">
        <div v-if="!userInfo.id">
            <Selected/>
        </div>
        <div v-else>
           <User/>
        </div>
    </div>
</template>

<script>
    import {mapState} from 'vuex'
    import Selected from './Selected'
    import User from './User'

    export default {
        name: "Me",
        data() {
            return {}
        },
        methods: {
            selectLogin(slelected) {
                this.$router.push(slelected)
            }
        },
        components: {
            Selected,
            User
        },
        computed: {
            ...mapState(['userInfo'])
        }

    }
</script>

<style scoped lang='less'>
    .me-container {
        width: 100%;
        height: 100%;
        position: fixed;
        top: 0;
        z-index: 9999;
        background: #f5f5f5;

    }
</style>