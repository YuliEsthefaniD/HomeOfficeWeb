
$(function () {
	 let headers = new Headers();
      headers.append('Access-Control-Allow-Origin', 'http://localhost:8080');
      headers.append('Access-Control-Allow-Credentials', 'true');
	  $.ajax({
		  url: 'https:simplewire.leankit.com/io/board',
		  method: 'GET',
		  contentType: 'application/json; charset=utf-8',
		  beforeSend(request) {
		    request.setRequestHeader('Authorization', `Bearer 7ab95f234576eb58a3b24df617969359629acaf2a8517bf1c03712f05394d7fc664f9fe6a193afd56f6d15b7eb151df4e667c91617e177486c3cf65d25feb140`);
		  },
		  success(data, text) {
		    console.log(data);
		  },
		  error(request, status, error) {
		    console.log(error)
		  }
		});
		
	  //fetch('https:simplewire.leankit.com/io/board')
		//  .then(response => response.json())
		//  .then(data => console.log(data));
})