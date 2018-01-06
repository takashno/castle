var globalData = {
  activeMenu : "home"
}


// footer component
Vue.component('global-footer', {
  template : '<footer class="footer"><div class="container"><span>Copyright &copy; 2017-2018 t-zomu.com All Rights Reserved.</span></div></footer>'
})

Vue.component('global-header', {
  template : ''

})


new Vue({
  el: '#app',
  data: {
    global : globalData
  }
});



