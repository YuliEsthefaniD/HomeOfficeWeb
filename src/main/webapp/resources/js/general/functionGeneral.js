var general = new Vue({
	el: '#container',
	data:{
		boards:[],
		boardsTotal:[],
	},
	created() {
    },
    mounted(){
		this.getProyectos();
	},
	methods: {
		getProyectos(){
			$.ajax({
				        type: "GET",
				        url: '/cliente/leankit/board',	        
				        success: function(result) {
					        if(result.boards.length<=9){
						         for(i in result.boards){
			                         general.boards.push({
									        id: result.boards[i].id,
									        nombre: result.boards[i].title
									  })
									  general.boardsTotal.push({
									        id: result.boards[i].id,
									        nombre: result.boards[i].title
									  })
			                       }
								
					        }else{
						      for(i in result.boards){
							      if(i>9){
								      general.boards.push({
									        id: result.boards[i].id,
									        nombre: result.boards[i].title
									  })
							      }
		                          general.boardsTotal.push({
								        id: result.boards[i].id,
								        nombre: result.boards[i].title
								  })
		                       }
					        }
				        	console.log(result.boards);
				        	
				        },
				        error: function(xhr,status,error){
					       
				        }
				    });
		}
	    
	}
});

$(document).ready(function () {
	
});
