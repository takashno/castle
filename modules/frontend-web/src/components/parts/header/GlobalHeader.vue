<template>
  <header>
      <nav class="navbar navbar-expand-lg sticky-top navbar-dark bg-dark">
          <router-link to="/" class="navbar-brand">Castle</router-link>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
              </ul>
              <form class="form-inline my-2 my-lg-0">
                  <button class="btn btn-outline-info my-2 my-sm-0" type="submit">Sign&nbsp;In</button>
              </form>
          </div>
      </nav>
  </header>
</template>

<script>
export default {
  name: 'GlobalHeader'
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
