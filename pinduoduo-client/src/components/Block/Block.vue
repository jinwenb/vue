<template>
        <div class="container">
        <span>
            <i v-if="icon" :class="icon"></i>
            <span v-if="title" style="margin-left: 20px">查看信息</span>
        </span>
            <span @click="handleClick(title)">&gt;</span>
        </div>
</template>

<script>
    export default {
        name: "block",
        data() {
            return {}
        },
        methods: {},
        components: {},
        props: {
            icon: {type: String},
            title: {type: String},
            handleClick: {
                type: Function, default: () => {
                }
            }
        }
    }
</script>

<style scoped lang='less'>
    .container {
        width: 100%;
        background: white;
        line-height: 30px;
        display: flex;
        justify-content: space-between;
        span {
            padding-left: 30px;
        }
        span:last-child {
            cursor: pointer;
        }
        button {
            border: none;
        }
    }
</style>