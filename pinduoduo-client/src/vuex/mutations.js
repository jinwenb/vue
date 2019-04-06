import {
    GET_HOMECASUAL,
    GET_HOMENAV, GET_SEARCH_LIST,
    GET_HOMESHOPLIST,
    GET_RECOMMEND_SHOP_LIST,
    GET_USER_INFO,
    GET_CART_SHOP_LIST
} from './mutations-types'

export default {
    //首页轮播图
    [GET_HOMECASUAL](state, {homecasual}) {
        state.homecasual = homecasual
    },
    //获取navbar
    [GET_HOMENAV](state, {homenav}) {
        state.homenav = homenav
    },
    //获取首页商品列表
    [GET_HOMESHOPLIST](state, {homeShopList}) {
        state.homeShopList = homeShopList
    },
    //获取推荐列表的数据
    [GET_RECOMMEND_SHOP_LIST](state, {recommendList}) {
        state.recommendList = [...state.recommendList, ...recommendList]
    },
    //获取搜索列表的数据
    [GET_SEARCH_LIST](state, {searchs}) {
        state.searchs = searchs
    },
    //保存用户信息的函数
    [GET_USER_INFO](state, {userInfo}) {
        state.userInfo = userInfo
    },
    //请求购物车的商品的函数
    [GET_CART_SHOP_LIST](state, {cartShopList}) {
        state.cartShopList = cartShopList;
    }
}