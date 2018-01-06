<template comments>
  <div id="app">
    <!-- 共通ヘッダ -->
    <global-header></global-header>

    <div class="container-fluid">
        <div class="row" style="height:100%;">
            <!-- 共通サイドバー -->
            <global-sidebar></global-sidebar>
            <!-- メインんコンテンツ -->
            <router-view/>
            </main>
        </div>
    </div>

    <!-- 共通フッター -->
    <global-footer></global-footer>

  </div>
</template>

<script>
import GlobalHeader from '@/components/parts/header/GlobalHeader.vue'
import GlobalSidebar from '@/components/parts/sidebar/GlobalSidebar.vue'
import GlobalFooter from '@/components/parts/footer/GlobalFooter.vue'

export default {
  name: 'app',
  components: {
    GlobalHeader,
    GlobalSidebar,
    GlobalFooter
  }
}
</script>

<style>
  .tooltip-inner {
      max-width: 500px;
      text-align: left;
  }
</style>
