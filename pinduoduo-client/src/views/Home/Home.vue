<template>
    <div>
       <div class="flex-top">
           <LyTab :selectedId="selectedId"
                  :items="items"
                  :options="options"
                  @change="handleChange"
           />
       </div>
        <router-view/>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                selectedId: 0,
                items: [
                    {label: '热门'},
                    {label: '女装'},
                    {label: '百货'},
                    {label: '内衣'},
                    {label: '鞋包'},
                    {label: '母婴'},
                    {label: '手机'},
                    {label: '电器'},
                    {label: '男装'},
                ],
                options: {
                    activeColor: '#1d98bd'// 可在这里指定labelKey为你数据里文字对应的字段名
                },
                selected: [
                    'hot',
                    'box',
                    'dress',
                    'Ele',
                    'Food',
                    'general',
                    'man',
                    'mbaby',
                    'shirt'
                ]
            }
        },
        methods: {
            handleChange(item, index) {
                this.$router.replace(`/home/${this.selected[index]}`)
            }
        }
    }


</script>
<style>
.flex-top {
    position: fixed;
    top: 0;
    background: white;
    z-index: 9999;
}
</style>
