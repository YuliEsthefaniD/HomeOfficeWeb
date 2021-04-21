var proyecto = new Vue({
	el: '#container',
	data:{
		nombreBoard:"",
		boards:[],
		nombreCard:"",
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
		this.getInfoProjectos();
	},
	methods: {
		getInfoProjectos(){
			$.ajax({
				        type: "GET",
				        url: '/cliente/leankit/boardId',	        
				        success: function(result) {
				        	console.log(result.title);
				        	proyecto.nombreBoard = result.title; 
				        },
				        error: function(xhr,status,error){
					       
				        }
				    });
		},
		getTareas(){
			$.ajax({
				        type: "GET",
				        url: '/cliente/leankit/taskId',	        
				        success: function(result) {
				        	console.log(result); 
				        },
				        error: function(xhr,status,error){
					       
				        }
				    });
		},
		getCards(){
			$.ajax({
				        type: "GET",
				        url: '/cliente/leankit/cardId',	        
				        success: function(result) {
				        	console.log(result); 
				        },
				        error: function(xhr,status,error){
					       
				        }
				    });
		},
		getNombre(nom){
			proyecto.nombreCard = nom;
			console.log(nom);
		},
	    
	}
});

$(document).ready(function () {
});

