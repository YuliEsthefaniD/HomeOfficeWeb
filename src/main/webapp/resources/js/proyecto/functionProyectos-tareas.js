var proyecto = new Vue({
	el: '#container',
	data:{
		nombreBoard:"",
		usuarioTask:[],
		desTask:"",
		fechaTask:"",
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
		],
		commentsTask: [],
		optionsUsers:[],
		selectedUsers:"",
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
				        	var userD= result.users;
				        	for(i in userD){
				        	  proyecto.optionsUsers.push({
						         id: userD[i].id,
								 text: userD[i].fullName
						     })
				        	}
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
		getNombre(id,fecha){
		console.log(id);
		proyecto.selectUser();
          $.ajax({
		        type: "GET",
		        url: '/cliente/leankit/card/'+id,	    
		        success: function(result) {
		            console.log(result);
		            console.log(result.description);
		            proyecto.nombreCard = result.title; 
		            proyecto.fechaTask = fecha;
		        	var userAsig = result.assignedUsers; 
		        	proyecto.usuarioTask.splice(0);
		        	proyecto.desTask = result.description;
		        	proyecto.selectedUsers = "";
		        	$(".select-usuarios" ).val("");
		        	for(i in userAsig){
			           proyecto.usuarioTask.push({
					         id: userAsig[i].id,
							 fullName: userAsig[i].fullName,
							 emailAddress: userAsig[i].emailAddress,
							 avatar: userAsig[i].avatar
					     })
					   proyecto.selectedUsers= proyecto.selectedUsers + userAsig[i].id + ",";   
					   
				    } 
				    if(userAsig.length>0){
				       $('.select-usuarios').val(proyecto.selectedUsers.split(",")).trigger('change.select2'); 
				    }
				    
			        
				    proyecto.getComments(id);
		        },
		        error: function(xhr,status,error){
			       
		        }
		    });
		 
		},
		getComments(id){
			$.ajax({
				        type: "GET",
				        url: '/cliente/leankit/cardcomments/'+id,	        
				        success: function(result) {
				        	console.log(result); 
				        	var arrComments = result.comments;
				        	proyecto.commentsTask.splice(0);
				        	for(i in arrComments){
					           proyecto.commentsTask.push({
							         user: arrComments[i].createdBy.fullName,
									 fecha: arrComments[i].createdOn,
									 description: arrComments[i].text,
									 avatar: "https://totalplay.leankit.com"+arrComments[i].createdBy.avatar,
							     })
								    
						    } 
				        },
				        error: function(xhr,status,error){
					       
				        }
				    });
		},
		selectUsers(){
		    $('#inputTecnologias')
			      .select2({ 
			      	data: _this.optionsTecnologias
			       })
			       .on('select2:select', function () {   
				     _this.validSesion();
	                 _this.getTecHer();
			          
		      });
		},
		setCurrency(currency) {
	        console.log(currency.id);
		    if (!currency.id) { return currency.text; }
			var $currency = $('<img class="w-30px rounded-circle border border-light shadow mr-3" src="https://totalplay.leankit.com/avatar/show/1553404660/?s=25">' + '<span class="semibold main small">'+ currency.text + '</span>');
			
							
		return $currency;
		},
		selectUser(){
           function setCurrency (currency) {
		      console.log(currency.id);
			  if (!currency.id) { return currency.text; }
				var $currency = $('<img class="w-30px rounded-circle border border-light shadow mr-3" src="https://totalplay.leankit.com/avatar/show/'+currency.id+'/?s=25">' + '<span class="semibold main small">'+ currency.text + '</span>');					
				return $currency;
			};
		   $(".select-usuarios" ).select2({
		        data: proyecto.optionsUsers,
				templateSelection: setCurrency,
				templateResult: setCurrency,
			}); 
		}
		
	}
});

$(document).ready(function () {
    
    
});

