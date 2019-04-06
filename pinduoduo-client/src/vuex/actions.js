import {
    getHomeCasual,
    getHomeNav,
    getHomeShopList,
    getRecommendShopList,
    getSearchShopList,
    getCartShopList
} from '../axios/index'
import {
    GET_HOMECASUAL,
    GET_RECOMMEND_SHOP_LIST,
    GET_HOMENAV,
    GET_HOMESHOPLIST,
    GET_SEARCH_LIST,
    GET_USER_INFO,
    GET_CART_SHOP_LIST
} from './mutations-types'

export default {
    //请求首页轮播图
    async reqHomecasual({commit}) {
        // await getHomeCasual();
        let result = await getHomeCasual();
        commit(GET_HOMECASUAL, {homecasual: result.data})
    },
    //获取首页navbar
    async reqHomeNav({commit}) {
        let result = await getHomeNav();
        commit(GET_HOMENAV, {homenav: result.data})
    },
    //获取首页商品详情列表
    async reqHomeShopList({commit}) {
        let result = await getHomeShopList();
        commit(GET_HOMESHOPLIST, {homeShopList: result.data})
    },
    //获取详情商品详情列表
    async reqRecommendShopList({commit}, {pageSize, pageNumber, callback}) {
        let result = await getRecommendShopList({pageSize, pageNumber});
        commit(GET_RECOMMEND_SHOP_LIST, {recommendList: result.data})
        callback && callback()
    },
    //获取搜索页面数据
    async reqSearch({commit}) {
        let result = await getSearchShopList();
        commit(GET_SEARCH_LIST, {searchs: result.data.data})
    },
    //保存用户信息
    getUserInfo({commit},data){
        commit(GET_USER_INFO, {userInfo: data})
    },
    //cartShopList
    //保存购物车商品的信息
    async reqCartShopList({commit}){
      let result =   await getCartShopList();
        let data = result.data;
        commit(GET_CART_SHOP_LIST,{cartShopList:data.data})
    }
}