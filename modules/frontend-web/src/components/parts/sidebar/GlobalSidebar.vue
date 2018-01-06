<template>
  <aside class="col-md-2" style="padding:0px">
      <div id="accordion">
          <div class="card rounded-0 border-0" style="background:#17a2b8;">
              <div class="card-header" role="tab" id="headingOne">
                  <router-link to="/" style="text-decoration:none;color:white;" v-if="$store.state.menu === 'home'">
                      <i class="fas fa-home"></i>&nbsp;HOME
                  </router-link>
              </div>
          </div>
          <div class="card rounded-0 border-0" style="background:white;">
              <div class="card-header" role="tab" id="headingTwo">
                  <a href="#collapseTwo" style="text-decoration:none;">
                      <i class="fas fa-user-circle"></i>&nbsp;Profile
                  </a>
              </div>
          </div>
          <div class="card rounded-0 border-0" style="background:white;">
              <div class="card-header" role="tab" id="headingThree">
                  <a class="collapsed" style="text-decoration:none;" data-toggle="collapse" href="#collapseThree" role="button" aria-expanded="false" aria-controls="collapseThree">
                      <i class="fas fa-globe"></i>&nbsp;Skill
                  </a>
              </div>
              <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                  <div class="card-header" role="tab">
                      <a href="#collapseThree" style="text-decoration:none;">
                          &nbsp;&nbsp;&nbsp;&nbsp;<i class="fab fa-connectdevelop"></i>&nbsp;Map
                      </a>
                  </div>
              </div>
          </div>
          <div class="card rounded-0 border-0" style="background:white;">
              <div class="card-header" id="heading_study">
                  <a class="collapsed" style="text-decoration:none;" data-toggle="collapse" href="#collapse_study" role="button" aria-expanded="false" aria-controls="collapse_study">
                      <i class="fas fa-graduation-cap"></i>&nbsp;Learning
                  </a>
              </div>
              <div id="collapse_study" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                  <div class="card-header" role="tab">
                      <a href="#collapseThree" style="text-decoration:none;">
                          &nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-list"></i>&nbsp;Category
                      </a>
                  </div>
                  <div class="card-header">
                      <a href="#collapseThree" style="text-decoration:none;">
                          &nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-pencil-alt"></i>&nbsp;Attendance&nbsp;List
                      </a>
                  </div>
                  <div class="card-header" role="tab">
                      <a href="#collapseThree" style="text-decoration:none;">
                          &nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-question-circle"></i>&nbsp;QA&nbsp;List
                      </a>
                  </div>
              </div>
          </div>
          <div class="card rounded-0 border-0" style="background:white;">
              <div class="card-header" role="tab" id="heading_knowledge">
                  <a class="collapsed" style="text-decoration:none;" data-toggle="collapse" href="#collapse_knowledge" role="button" aria-expanded="false" aria-controls="collapse_knowledge">
                      <i class="fas fa-database"></i>&nbsp;Knowledge
                  </a>
              </div>
              <div id="collapse_knowledge" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                  <div class="card-header">
                      <a href="#collapseThree" style="text-decoration:none;">
                          &nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-list"></i>&nbsp;Category
                      </a>
                  </div>
                  <div class="card-header">
                      <a href="#collapseThree" style="text-decoration:none;">
                          &nbsp;&nbsp;&nbsp;&nbsp;<i class="far fa-edit"></i>&nbsp;New&nbsp;Knowledge
                      </a>
                  </div>
                  <div class="card-header" role="tab">
                      <a href="#collapseThree" style="text-decoration:none;">
                          &nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-question-circle"></i>&nbsp;QA&nbsp;List
                      </a>
                  </div>
              </div>
          </div>
          <div class="card rounded-0 border-0" style="background:white;">
              <div class="card-header" id="heading_ojt">
                  <a class="collapsed" style="text-decoration:none;" data-toggle="collapse" href="#collapse_ojt" role="button" aria-expanded="false" aria-controls="collapse_ojt">
                      <i class="fas fa-child"></i>&nbsp;Training
                  </a>
              </div>
              <div id="collapse_ojt" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                  <div class="card-header">
                      <router-link to="/training/new_report" style="text-decoration:none;">&nbsp;&nbsp;&nbsp;&nbsp;<i class="far fa-edit"></i>&nbsp;New&nbsp;Report</router-link>
                  </div>
                  <div class="card-header" role="tab">
                      <a href="#collapseThree" style="text-decoration:none;">
                          &nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-list"></i>&nbsp;Report&nbsp;List
                      </a>
                  </div>
              </div>
          </div>
      </div>
  </aside>
</template>

<script>
export default {
  name: 'GlobalSidebar'
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
