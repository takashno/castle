<template>
<main class="col-md-10" style="padding:0px;border-left:1px solid gray;">
  <article class="row" style="padding: 30px 10px 30px 10px;">
    <section class="col-md-12">
      <h3>フォームサンプル</h3>
      <p>
        自分でバリデーションを頑張る場合の実装。<br/>
        シンプルなフォームに対するバリデーションと送信処理の実装サンプル。<br/>
        HTML5のバリデーションは無効。<br/>
        computed および methods を利用して入力チェックをリアルタイムに行なっている。<br/>
        <br/>
        問題を感じている箇所
        <ul>
        <li>入力すら始めていないのに、CSSの制御上エラーのように見える</li>
        <li>バリデーションロジックをScriptに書くのが面倒</li>
        <li>できることを考えるとHTML5のバリデーションで構わない気がしてくる</li>
        <li>複数のバリデーションとエラーだった場合の画面のエラー表示のマッピングが取れない？全部出すしかない？</li>
        </ul>
      </p>
      <form novalidate style="padding: 30px;">
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="inputText">テキスト(text)</label><span style="color:red;">*</span>
            <input
              id="inputText"
              type="text"
              class="form-control"
              placeholder="テキスト"
              v-model="edit.inputText"
              :class="errorClassObject('inputText')">
            <div class="invalid-feedback">
              テキストは入力必須です。<br/>
              10文字以内で入力してください。
            </div>
          </div>
        </div>
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="inputEmail">メールアドレス(email)</label>
            <input type="email" class="form-control" id="inputEmail" placeholder="メールアドレス">
          </div>
        </div>
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="inputPassword">パスワード(password)</label>
            <input type="password" class="form-control" id="inputPassword" placeholder="パスワード">
          </div>
        </div>
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="inputState">プルダウン(select)</label>
            <select id="inputState" class="form-control">
              <option selected>Choose...</option>
              <option>A</option>
              <option>B</option>
              <option>C</option>
            </select>
          </div>
        </div>
        <div class="form-row">
          <div class="form-group">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" id="gridCheck">
              <label class="form-check-label" for="gridCheck">チェックボックス(checkbox)</label>
            </div>
          </div>
        </div>
        <div class="form-row">
          <div class="form-group">
          <div class="form-check">
            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
            <label class="form-check-label" for="gridRadios1">
              ラジオボタン1(radio)
            </label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
            <label class="form-check-label" for="gridRadios2">
              ラジオボタン2(radio)
            </label>
          </div>
          <div class="form-check disabled">
            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option3" disabled>
            <label class="form-check-label" for="gridRadios3">
              ラジオボタン3(radio)
            </label>
          </div>
          </div>
        </div>
        <div class="form-row">
          <button
          @click="doSubmit"
          :disabled="isValid == false"
          type="submit"
          class="btn btn-primary">送信(submit)</button>
        </div>
      </form>
      </section>
  </article>
</main>
</template>

<script>
export default {
  name: 'FormPost001',
  data () {
    return {
      edit: {
        inputText: ''
      }
    }
  },
  computed: {
    validation () {
      const edit = this.edit
      return {
        inputText: (!!edit.inputText && edit.inputText.length <= 10)
      }
    },
    isValid () {
      const validation = this.validation
      return Object
        .keys(validation)
        .every(function (key) {
          return validation[key]
        })
    }
  },
  methods: {
    errorClassObject (key) {
      return {
        'is-invalid': (this.validation[key] === false)
      }
    },
    doSubmit () {
      // omitted;
    }
  },
  mounted () {
    this.$store.state.menu = 'sample'
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
