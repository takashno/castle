<template>
<main class="col-md-10" style="padding:0px;border-left:1px solid gray;">
  <div class="row">
      <div class="col-md-12">
          <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                  <li class="breadcrumb-item active" aria-current="page">HOME</li>
              </ol>
          </nav>
      </div>
  </div>
  <article class="row" style="padding: 30px 10px 30px 10px;">
    <section class="col-md-12">
        <h4>New Learning Program</h4>
        <div class="row">
            <div class="col">
                <table class="table table-sm table-striped">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Category</th>
                        <th>Tags</th>
                    </tr>

                    </thead>
                    <tbody>
                    <tr>
                        <td><a href="#">ラムダ式</a></td>
                        <td>プログラミング</td>
                        <td>Java,Java8,Stream</td>
                    </tr>
                    <tr>
                        <td><a href="#">サーバーレスアーキテクチャ</a></td>
                        <td>システム</td>
                        <td>AWS,Lambda,APIGateway</td>
                    </tr>
                    <tr>
                        <td><a href="contents001.html">マイクロサービスアーキテクチャ</a></td>
                        <td>システム</td>
                        <td>REST,MSA,SpringBoot</td>
                    </tr>
                    <tr>
                        <td><a href="#">DIコンテナ</a></td>
                        <td>フレームワーク</td>
                        <td>SpringFramework,DI</td>
                    </tr>
                    <tr>
                        <td><a href="#">GCアルゴリズム</a></td>
                        <td>プログラミング</td>
                        <td>GC,Java,G1GC,CSMC</td>
                    </tr>
                    </tbody>
                </table>
                <a class="btn btn-info" href="#" role="button">More...</a>
            </div>
        </div>
    </section>
    <section class="col-md-12" style="margin-top:30px;">
        <h4>Popular Program</h4>
        <div class="row">
            <div class="col">
                <table class="table table-sm table-striped">
                    <thead>
                    <tr>
                        <th>プログラム</th>
                        <th>ジャンル</th>
                        <th>タグ</th>
                    </tr>

                    </thead>
                    <tbody>
                    <tr>
                        <td><a href="#">ラムダ式</a></td>
                        <td>プログラミング</td>
                        <td>Java,Java8,Stream</td>
                    </tr>
                    <tr>
                        <td><a href="#">サーバーレスアーキテクチャ</a></td>
                        <td>システム</td>
                        <td>AWS,Lambda,APIGateway</td>
                    </tr>
                    <tr>
                        <td><a href="contents001.html">マイクロサービスアーキテクチャ</a></td>
                        <td>システム</td>
                        <td>REST,MSA,SpringBoot</td>
                    </tr>
                    <tr>
                        <td><a href="#">DIコンテナ</a></td>
                        <td>フレームワーク</td>
                        <td>SpringFramework,DI</td>
                    </tr>
                    <tr>
                        <td><a href="#">GCアルゴリズム</a></td>
                        <td>プログラミング</td>
                        <td>GC,Java,G1GC,CSMC</td>
                    </tr>
                    </tbody>
                </table>
                <a class="btn btn-info" href="#" role="button">More...</a>
                <div v-for="result in results">
                    <div class="card">
                        <div class="card-divider">
                            {{ result.programName }}
                        </div>
                        <div class="card-section">
                            <p>{{ result.programId }}.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
  </article>
</main>
</template>

<script>
import axios from 'axios'

export default {
  name: 'Home',
  data: {
    results: []
  },
  mounted () {
    var config = {
      headers: { 'Content-Type': 'application/json', 'Accept': 'application/json' }
    }
    axios.get('http://localhost:8082/api/v1.0.0/learnings/programs/new', config)
      .then(response => { this.results = response.data })
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
