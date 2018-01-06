import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/home/Home'
import NewReport from '@/components/training/NewReport'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/training/new_report',
      name: 'NewReport',
      component: NewReport
    }
  ]
})
