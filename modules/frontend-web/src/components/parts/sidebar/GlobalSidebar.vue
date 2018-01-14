<template>
  <aside class="col-md-2" style="padding:0px">
      <div id="accordion">
          <div class="menu_default" v-bind:class="getMenuStyle('home')">
              <div class="card-header" role="tab" id="heading_home">
                  <router-link to="/" class="link_normal" v-bind:class="getLinkStyle('home')">
                      <i class="fas fa-home"></i>&nbsp;HOME
                  </router-link>
              </div>
          </div>
          <div class="menu_default" v-bind:class="getMenuStyle('profile')">
              <div class="card-header" role="tab" id="heading_profile">
                  <a href="#collapseTwo" class="link_normal" v-bind:class="getLinkStyle('profile')">
                      <i class="fas fa-user-circle"></i>&nbsp;Profile
                  </a>
              </div>
          </div>
          <div class="menu_default" v-bind:class="getMenuStyle('skill')">
              <div class="card-header" role="tab" id="heading_skill">
                  <a class="collapsed link_normal" v-bind:class="getLinkStyle('skill')" data-toggle="collapse" href="#collapse_skill" role="button" aria-expanded="false" aria-controls="collapse_skill">
                      <i class="fas fa-globe"></i>&nbsp;Skill
                  </a>
              </div>
              <div id="collapse_skill" class="collapse link_normal" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                  <div class="card-header" role="tab">
                      <a href="#collapseThree" class="link_normal">
                          &nbsp;&nbsp;&nbsp;&nbsp;<i class="fab fa-connectdevelop"></i>&nbsp;Map
                      </a>
                  </div>
              </div>
          </div>
          <div class="menu_default" v-bind:class="getMenuStyle('learning')">
              <div class="card-header" id="heading_learning">
                  <a class="collapsed link_normal" data-toggle="collapse" href="#collapse_learning" role="button" aria-expanded="false" aria-controls="collapse_learning">
                      <i class="fas fa-graduation-cap"></i>&nbsp;Learning
                  </a>
              </div>
              <div id="collapse_learning" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                  <div class="card-header" role="tab">
                      <a href="#collapseThree" class="link_normal">
                          &nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-list"></i>&nbsp;Category
                      </a>
                  </div>
                  <div class="card-header">
                      <a href="#collapseThree" class="link_normal">
                          &nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-pencil-alt"></i>&nbsp;Attendance&nbsp;List
                      </a>
                  </div>
                  <div class="card-header" role="tab">
                      <a href="#collapseThree" class="link_normal">
                          &nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-question-circle"></i>&nbsp;QA&nbsp;List
                      </a>
                  </div>
              </div>
          </div>
          <div class="menu_default" v-bind:class="getMenuStyle('knowledge')">
              <div class="card-header" role="tab" id="heading_knowledge">
                  <a class="collapsed link_normal" data-toggle="collapse" href="#collapse_knowledge" role="button" aria-expanded="false" aria-controls="collapse_knowledge">
                      <i class="fas fa-database"></i>&nbsp;Knowledge
                  </a>
              </div>
              <div id="collapse_knowledge" class="collapse menu_normal" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                  <div class="card-header">
                      <a href="#collapseThree" class="link_normal">
                          &nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-list"></i>&nbsp;Category
                      </a>
                  </div>
                  <div class="card-header">
                      <a href="#collapseThree" class="link_normal">
                          &nbsp;&nbsp;&nbsp;&nbsp;<i class="far fa-edit"></i>&nbsp;New&nbsp;Knowledge
                      </a>
                  </div>
                  <div class="card-header" role="tab">
                      <a href="#collapseThree" class="link_normal">
                          &nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-question-circle"></i>&nbsp;QA&nbsp;List
                      </a>
                  </div>
              </div>
          </div>
          <div class="menu_default" v-bind:class="getMenuStyle('training')">
              <div class="card-header" id="heading_training">
                  <a class="collapsed link_normal" v-bind:class="getLinkStyle('training')" data-toggle="collapse" href="#collapse_training" role="button" aria-expanded="false" aria-controls="collapse_training">
                      <i class="fas fa-child"></i>&nbsp;Training
                  </a>
              </div>
              <div id="collapse_training" class="collapse menu_normal" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                  <div class="card-header">
                      <router-link to="/training/new_report" class="link_normal">&nbsp;&nbsp;&nbsp;&nbsp;<i class="far fa-edit"></i>&nbsp;New&nbsp;Report</router-link>
                  </div>
                  <div class="card-header" role="tab">
                      <a href="#collapseThree" class="link_normal">
                          &nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-list"></i>&nbsp;Report&nbsp;List
                      </a>
                  </div>
              </div>
          </div>
          <div class="menu_default" v-bind:class="getMenuStyle('sample')">
              <div class="card-header" id="heading_sample">
                  <a class="collapsed link_normal" v-bind:class="getLinkStyle('sample')" data-toggle="collapse" href="#collapse_sample" role="button" aria-expanded="false" aria-controls="collapse_sample">
                      <i class="fas fa-exclamation-triangle"></i>&nbsp;Dev&nbsp;Sample
                  </a>
              </div>
              <div id="collapse_sample" class="collapse menu_normal" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                  <div class="card-header">
                      <router-link to="/sample/form_post" class="link_normal">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-exclamation-triangle"></i>&nbsp;Form&nbsp;Post</router-link>
                  </div>
              </div>
          </div>
      </div>
  </aside>
</template>

<script>
export default {
  name: 'GlobalSidebar',
  methods: {
    getMenuStyle: function (target) {
      if (this.$store.state.menu === target) {
        return 'menu_active'
      } else {
        return ''
      }
    },
    getLinkStyle: function (target) {
      if (this.$store.state.menu === target) {
        return 'link_active'
      } else {
        return ''
      }
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
card.rounded-0.border-0.menu_default {}
.menu_normal {
  background: white;
}
.menu_active {
  background: #17a2b8;
}
.link_normal {
  text-decoration: none;
  color: #464e66;
}
.link_active {
  text-decoration: none;
  color: white;
}
</style>
