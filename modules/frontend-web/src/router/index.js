import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/pages/home/Home'
import NewReport from '@/components/pages/training/NewReport'
import FormPost from '@/components/pages/sample/FormPost'

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
    },
    {
      path: '/sample/form_post',
      name: 'FormPost',
      component: FormPost
    }

  ]
})
