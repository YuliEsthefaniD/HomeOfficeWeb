var proyecto = new Vue({
	el: '#container',
	data:{
		dat:"hola",
		boards:[],
		cardName:[
			{
		        id: "1539067075",
		        nombre: "Mejoras en Estado de Cuenta Tablero equipo",
		        unidad: "TotalPlay Residencial",
		        fase: "Scope",
		        manager: "Abril Lopez"
		    }
		]
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
				        	console.log(result.boards);
				        	for(i in result.boards){
		                       proyecto.boards.push({
							        id: result.boards[i].id,
							        nombre: result.boards[i].title,
							        unidad: "TotalPlay Residencial",
							        fase: "Scope",
							        manager: "Abril Lopez"
							    })
	                        }
				        },
				        error: function(xhr,status,error){
					       
				        }
				    });
		}
	    
	}
});

$(document).ready(function () {
	
});
