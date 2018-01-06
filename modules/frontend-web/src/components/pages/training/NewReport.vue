<template>
<main class="col-md-10" style="padding:0px;border-left:1px solid gray;">
  <article class="row" style="padding: 30px 10px 30px 10px;">
    <section class="col-md-12">
      <h3>レポート編集</h3>
      <br/>
      <div class="alert alert-success" role="alert">
          例：処理が正常に完了した場合のメッセージ
      </div>
      <div class="alert alert-danger" role="alert">
          例：処理が異常で終了した場合のメッセージ
      </div>
      <div class="alert alert-warning" role="alert">
          例：処理が異常（警告扱い）で終了した場合のメッセージ
      </div>
      <div class="alert alert-info" role="alert">
          例：情報を通知するためのメッセージ
      </div>
      <br/>
      <form>
          <hr/>
          <h4>トレーニング情報</h4>
          <div class="row">
              <div class="col">
                  <table class="table table-sm table-striped">
                      <tbody>
                      <tr>
                          <th>対象者所属</th>
                          <td colspan="2"></td>
                      </tr>
                      <tr>
                          <th>対象者</th>
                          <td>社員番号：</td>
                          <td>氏名：</td>
                      </tr>
                      <tr>
                          <th>トレーナー</th>
                          <td>社員番号：</td>
                          <td>氏名：</td>
                      </tr>
                      <tr>
                          <th>トレーナー</th>
                          <td>社員番号：</td>
                          <td>氏名：</td>
                      </tr>
                      <tr>
                          <th>係長</th>
                          <td>社員番号：</td>
                          <td>氏名：</td>
                      </tr>
                      <tr>
                          <th>課長</th>
                          <td>社員番号：</td>
                          <td>氏名：</td>
                      </tr>
                      <tr>
                          <th>部長</th>
                          <td>社員番号：</td>
                          <td>氏名：</td>
                      </tr>
                      </tbody>
                  </table>
              </div>
          </div>

          <hr/>
          <h4>計画</h4>
          <div class="form-group">
              <label for="goal">当月計画</label>&nbsp;<i class="fa fa-question-circle" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="トレーナーと対象者で「どのようなスキル習得を目的とし、どのような作業を実施するのか」という計画を立ててください。その後、計画に対して上司を交えてレビューしましょう。(意識合わせの為)レビュー後に最終決定した計画を、この欄に記載するようにしましょう。2ヶ月目以降は、前月のOJT報告書【翌月計画】欄の写しで構いません。"></i>
              <textarea class="form-control" id="goal" rows="5"></textarea>
              <small id="goalHelp" class="form-text text-muted">
                  対象者が、当月のOJT開始時の計画を記載
              </small>
          </div>
          <div class="form-group">
              <label for="goal">当月実績</label>&nbsp;<i class="fa fa-question-circle" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="対象者が、当月に実施した作業を記載してください。出来る限り具体的な数値で記載するようにしましょう。"></i>
              <textarea class="form-control" id="goal" rows="5"></textarea>
              <small id="goalHelp" class="form-text text-muted">
                  対象者が、全体からの実績率と、コメントを記載
              </small>
          </div>
          <hr/>
          <h4>評価</h4>
          <div class="form-group">
              <label for="selfAssessment">自己評価</label>&nbsp;<i class="fa fa-question-circle" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="対象者が、当月のOJTで何が成功であったか、何が失敗であったかについて自己評価をしましょう。また、今後自分が何を重点的にするべきかを記載しましょう。"></i>
              <textarea class="form-control" id="selfAssessment" rows="5"></textarea>
              <small id="selfAssessmentHelp" class="form-text text-muted">
                  対象者が、当月のOJTに対する自分への評価・今後への改善点などを記載
              </small>
          </div>
          <h6>レーダーチャート</h6>
          <div class="form-group">
              <div class="row">
                  <div class="col">
                      <table class="table table-sm table-striped">
                          <thead class="thead-dark">
                          <tr>
                              <th scope="col">評価軸</th>
                              <th scope="col">自己評価</th>
                              <th scope="col">評価者評価</th>
                          </tr>
                          </thead>
                          <tbody>
                          <tr>
                              <td>業務全体イメージ</td>
                              <td>
                                  <select class="custom-select">
                                      <option selected></option>
                                      <option value="1">1</option>
                                      <option value="2">2</option>
                                      <option value="3">3</option>
                                      <option value="4">4</option>
                                      <option value="5">5</option>
                                  </select>
                              </td>
                              <td>
                                  <select class="custom-select">
                                      <option selected></option>
                                      <option value="1">1</option>
                                      <option value="2">2</option>
                                      <option value="3">3</option>
                                      <option value="4">4</option>
                                      <option value="5">5</option>
                                  </select>
                              </td>
                          </tr>
                          <tr>
                              <td>業務遂行の速さ</td>
                              <td>
                                  <select class="custom-select">
                                      <option selected></option>
                                      <option value="1">1</option>
                                      <option value="2">2</option>
                                      <option value="3">3</option>
                                      <option value="4">4</option>
                                      <option value="5">5</option>
                                  </select>
                              </td>
                              <td>
                                  <select class="custom-select">
                                      <option selected></option>
                                      <option value="1">1</option>
                                      <option value="2">2</option>
                                      <option value="3">3</option>
                                      <option value="4">4</option>
                                      <option value="5">5</option>
                                  </select>
                              </td>
                          </tr>
                          <tr>
                              <td>業務遂行の正確さ</td>
                              <td>
                                  <select class="custom-select">
                                      <option selected></option>
                                      <option value="1">1</option>
                                      <option value="2">2</option>
                                      <option value="3">3</option>
                                      <option value="4">4</option>
                                      <option value="5">5</option>
                                  </select>
                              </td>
                              <td>
                                  <select class="custom-select">
                                      <option selected></option>
                                      <option value="1">1</option>
                                      <option value="2">2</option>
                                      <option value="3">3</option>
                                      <option value="4">4</option>
                                      <option value="5">5</option>
                                  </select>
                              </td>
                          </tr>
                          <tr>
                              <td>指示内容の理解力</td>
                              <td>
                                  <select class="custom-select">
                                      <option selected></option>
                                      <option value="1">1</option>
                                      <option value="2">2</option>
                                      <option value="3">3</option>
                                      <option value="4">4</option>
                                      <option value="5">5</option>
                                  </select>
                              </td>
                              <td>
                                  <select class="custom-select">
                                      <option selected></option>
                                      <option value="1">1</option>
                                      <option value="2">2</option>
                                      <option value="3">3</option>
                                      <option value="4">4</option>
                                      <option value="5">5</option>
                                  </select>
                              </td>
                          </tr>
                          <tr>
                              <td>グループ内での発言</td>
                              <td>
                                  <select class="custom-select">
                                      <option selected></option>
                                      <option value="1">1</option>
                                      <option value="2">2</option>
                                      <option value="3">3</option>
                                      <option value="4">4</option>
                                      <option value="5">5</option>
                                  </select>
                              </td>
                              <td>
                                  <select class="custom-select">
                                      <option selected></option>
                                      <option value="1">1</option>
                                      <option value="2">2</option>
                                      <option value="3">3</option>
                                      <option value="4">4</option>
                                      <option value="5">5</option>
                                  </select>
                              </td>
                          </tr>
                          <tr>
                              <td>報連相の実施（作業報告）</td>
                              <td>
                                  <select class="custom-select">
                                      <option selected></option>
                                      <option value="1">1</option>
                                      <option value="2">2</option>
                                      <option value="3">3</option>
                                      <option value="4">4</option>
                                      <option value="5">5</option>
                                  </select>
                              </td>
                              <td>
                                  <select class="custom-select">
                                      <option selected></option>
                                      <option value="1">1</option>
                                      <option value="2">2</option>
                                      <option value="3">3</option>
                                      <option value="4">4</option>
                                      <option value="5">5</option>
                                  </select>
                              </td>
                          </tr>
                          <tr>
                              <td>周囲とのコミュニケーション</td>
                              <td>
                                  <select class="custom-select">
                                      <option selected></option>
                                      <option value="1">1</option>
                                      <option value="2">2</option>
                                      <option value="3">3</option>
                                      <option value="4">4</option>
                                      <option value="5">5</option>
                                  </select>
                              </td>
                              <td>
                                  <select class="custom-select">
                                      <option selected></option>
                                      <option value="1">1</option>
                                      <option value="2">2</option>
                                      <option value="3">3</option>
                                      <option value="4">4</option>
                                      <option value="5">5</option>
                                  </select>
                              </td>
                          </tr>
                          <tr>
                              <td>ビジネスマナーの遵守</td>
                              <td>
                                  <select class="custom-select">
                                      <option selected></option>
                                      <option value="1">1</option>
                                      <option value="2">2</option>
                                      <option value="3">3</option>
                                      <option value="4">4</option>
                                      <option value="5">5</option>
                                  </select>
                              </td>
                              <td>
                                  <select class="custom-select">
                                      <option selected></option>
                                      <option value="1">1</option>
                                      <option value="2">2</option>
                                      <option value="3">3</option>
                                      <option value="4">4</option>
                                      <option value="5">5</option>
                                  </select>
                              </td>
                          </tr>
                          </tbody>
                      </table>
                      <br/>
                  </div>
              </div>
          </div>
          <div class="row">
              <div class="col">
                  <canvas id="myChart"></canvas>
              </div>
          </div>
          <br/>
          <div class="form-group">
              <label for="trainerAssessment">評価者所見</label>（氏名：ほげ　太郎）&nbsp;<i class="fa fa-question-circle" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="評価者が、当月のOJTに対する対象者への評価をコメントしてください。また、評価者・対象者間の満足度のギャップに対して、何故生じたかを記載してください。OJT報告書レビュー時に、「評価者・対象者間の満足度のギャップが何故生じたか」、または「評価者(上司)は、対象者にどの程度期待しているのか」を確認するようにしてください。"></i>
              <textarea class="form-control" id="trainerAssessment" rows="5"></textarea>
              <small id="trainerAssessmentHelp" class="form-text text-muted">
                  評価者が、当月のOJTに対する対象者への評価・一般能力評価についての考察を記載
              </small>
          </div>
          <div class="form-group">
              <label for="bossAssessment">上司所見</label>（氏名：ふが　太郎）&nbsp;<i class="fa fa-question-circle" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="評価者が、当月のOJTに対する対象者への評価をコメントしてください。また、評価者・対象者間の満足度のギャップに対して、何故生じたかを記載してください。OJT報告書レビュー時に、「評価者・対象者間の満足度のギャップが何故生じたか」、または「評価者(上司)は、対象者にどの程度期待しているのか」を確認するようにしてください。"></i>
              <textarea class="form-control" id="bossAssessment" rows="5"></textarea>
              <small id="bossAssessmentHelp" class="form-text text-muted">
                  評価者が、当月のOJTに対する対象者への評価・一般能力評価についての考察を記載
              </small>
          </div>
          <hr/>
          <h4>翌月計画</h4>
          <div class="form-group">
              <label for="nextGoal">翌月計画</label>&nbsp;<i class="fa fa-question-circle" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="当月の反省点・改善点を含め、翌月の計画を記載してください。計画の立て方としては、OJT開始時と同じように、まずはトレーナーと対象者で計画を立てましょう。その後、上司を含めてレビューを実施し、最終決定した計画を記載してください。(最終月の場合は、必要ありません)"></i>
              <textarea class="form-control" id="nextGoal" rows="5"></textarea>
              <small id="nextGoalHelp" class="form-text text-muted">
                  対象者が、翌月のOJTに対しての計画を記載
              </small>
          </div>
          <hr/>
          <h4>トレーニングフォローチェック</h4>
          <div class="form-group">
              <div class="row">
                  <div class="col">
                      <table class="table table-sm table-striped">
                          <thead class="thead-dark">
                          <tr>
                              <th scope="col">チェック内容</th>
                              <th scope="col">対象者</th>
                              <th scope="col">評価者</th>
                          </tr>
                          </thead>
                          <tbody>
                          <tr>
                              <td>当月の計画に対するレビューを実施したか。</td>
                              <td>
                                  <button type="button" class="btn btn-sm btn-warning" data-toggle="button" aria-pressed="false" autocomplete="off">
                                      いいえ
                                  </button>
                              </td>
                              <td>
                                  <button type="button" class="btn btn-sm btn-warning" data-toggle="button" aria-pressed="false" autocomplete="off">
                                      いいえ
                                  </button>
                              </td>
                          </tr>
                          <tr>
                              <td>作業毎に、必ず目的の説明をしているか、または説明を聞いたか。</td>
                              <td>
                                  <button type="button" class="btn btn-sm btn-warning" data-toggle="button" aria-pressed="false" autocomplete="off">
                                      いいえ
                                  </button>
                              </td>
                              <td>
                                  <button type="button" class="btn btn-sm btn-warning" data-toggle="button" aria-pressed="false" autocomplete="off">
                                      いいえ
                                  </button>
                              </td>
                          </tr>
                          <tr>
                              <td>作業終了時に評価、及びフィードバックをしたか、されたか。</td>
                              <td>
                                  <button type="button" class="btn btn-sm btn-warning" data-toggle="button" aria-pressed="false" autocomplete="off">
                                      いいえ
                                  </button>
                              </td>
                              <td>
                                  <button type="button" class="btn btn-sm btn-warning" data-toggle="button" aria-pressed="false" autocomplete="off">
                                      いいえ
                                  </button>
                              </td>
                          </tr>
                          <tr>
                              <td>一日一度以上はコミュニケーションをとれていたか。</td>
                              <td>
                                  <button type="button" class="btn btn-sm btn-warning" data-toggle="button" aria-pressed="false" autocomplete="off">
                                      いいえ
                                  </button>
                              </td>
                              <td>
                                  <button type="button" class="btn btn-sm btn-warning" data-toggle="button" aria-pressed="false" autocomplete="off">
                                      いいえ
                                  </button>
                              </td>
                          </tr>
                          </tbody>
                      </table>
                  </div>
              </div>
          </div>
          <br/>
          <button type="submit" class="btn btn-default">キャンセル</button>&nbsp;
          <button type="submit" class="btn btn-primary">保存</button>&nbsp;
          <button type="submit" class="btn btn-success">提出</button>
      </form>
      </section>
  </article>
</main>
</template>

<script>
export default {
  name: 'Home',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
