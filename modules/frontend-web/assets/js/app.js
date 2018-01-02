// ./app.js
const vm = new Vue({
  el: '#app',
  data: {
    results: []
  },
  mounted() {
    var config = {
        headers : {"Content-Type" : "application/json", "Accept" : "application/json"}
    }
    axios.get("http://localhost:8080/api/v1.0.0/education/programs/new", config)
    .then(response => {this.results = response.data})
  }
});