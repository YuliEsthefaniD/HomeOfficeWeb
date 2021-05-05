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
		selecTaskID: "",
		laneTask:"",
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
				        url: '/cliente/leankit/boardId/'+$("#boardID").val(),	        
				        success: function(result) {
				        
				        	console.log(result.title);
				        	proyecto.nombreBoard = result.title; 
				        	var userD= result.users;
				        	console.log("usuarios Board:" + result.users);
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
		proyecto.selecTaskID = id;
		proyecto.selectUser();
          $.ajax({
		        type: "GET",
		        url: '/cliente/leankit/card/'+id,	    
		        success: function(result) {
		            console.log(result);
		            console.log(result.description);
		            proyecto.nombreCard = result.title; 
		            proyecto.fechaTask = fecha;
		            console.log("lane de task: " + result.lane.id);
		            proyecto.laneTask = result.lane.id;
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
				     var el = document.getElementById("detallesTask");
			         console.log("contenido del div:   " + el.innerHTML);
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
		},
		editDetallesTask(){
		console.log("usuarios antes seleccionados: " + proyecto.selectedUsers.split(",") )
		console.log("usuarios seleccionados: "
		+$(".select-usuarios" ).val());
		var re = /<div>/g;
		var re2 =/<\/div>/g;	
		if(proyecto.desTask==null){proyecto.desTask=""};
		console.log(proyecto.desTask!=$("#detallesTask").html().replace(re, '<p>').replace(re2, '</p>'));
		console.log(proyecto.desTask);  
		console.log($("#detallesTask").html().replace(re, '<p>').replace(re2, '</p>'));   
		   if(proyecto.desTask!=$("#detallesTask").html().replace(re, '<p>').replace(re2, '</p>')){
			   var dat = {id: proyecto.selecTaskID,
						        value: $("#detallesTask").html().replace(re, '<p>').replace(re2, '</p>')};
				$.ajax({
						        type: "PATCH",
						        contentType : "application/json",
	                            dataType : 'json',
						        url: '/persona/api/v1/editCardTitle',
						        data: JSON.stringify(dat),
						        success: function(result) {
						           console.log("se guardo la información");
						        },
						        error: function(xhr,status,error){
							       
						        }
				    });
		   }
		   proyecto.addCommentsTask($(".text-comments-task").val());
		},
		deleteUsersTask(){
		  var dat = {id: proyecto.selecTaskID,
					 value: proyecto.selectedUsers.split(",")};
		  $.ajax({
						        type: "PATCH",
						        contentType : "application/json",
	                            dataType : 'json',
						        url: '/persona/api/v1/editCardTitle',
						        data: JSON.stringify(dat),
						        success: function(result) {
						           console.log("se guardo la informacion de deleteUsers");
						        },
						        error: function(xhr,status,error){
							       
						        }
		  });
		},
		addUsersTask(){
		  var dat = {id: proyecto.selecTaskID,
					 value: $(".select-usuarios" ).val()};
		  $.ajax({
						        type: "PATCH",
						        contentType : "application/json",
	                            dataType : 'json',
						        url: '/persona/api/v1/editCardTitle',
						        data: JSON.stringify(dat),
						        success: function(result) {
						           console.log("se guardo la información de addUsers");
						        },
						        error: function(xhr,status,error){
							       
						        }
		  });
		},
		finalTask(){
		   var dat = {};
			 if((parseInt(proyecto.selecTaskID)-1) == parseInt(proyecto.laneTask)){
			    console.log("Esta Completada");
			    $("#checkTask-"+proyecto.selecTaskID).prop("checked", false); 
		              dat = {id: proyecto.selecTaskID,
					    value: parseInt(proyecto.selecTaskID)-2};
			    
			 }else{
			    console.log("Esta Completada");
			    $("#checkTask-"+proyecto.selecTaskID).prop("checked", true); 
		              dat = {id: proyecto.selecTaskID,
					    value: parseInt(proyecto.selecTaskID)-1};
			 }
			 $.ajax({
						        type: "PATCH",
						        contentType : "application/json",
	                            dataType : 'json',
						        url: '/persona/api/v1/lane',
						        data: JSON.stringify(dat),
						        success: function(result) {
						           console.log("se guardo la información");
						        },
						        error: function(xhr,status,error){
							       
						        }
			   });
		},
		editTaskLane(id){
		$.ajax({
		        type: "GET",
		        url: '/cliente/leankit/card/'+id,	    
		        success: function(result) {
		            console.log(result);
		            console.log(result.description);
		            proyecto.nombreCard = result.title; 
		            console.log("lane de task: " + result.lane.id);
		            proyecto.laneTask = result.lane.id;
		        	var userAsig = result.assignedUsers; 
		        	proyecto.usuarioTask.splice(0);
		        	proyecto.desTask = result.description;
		        	proyecto.selectedUsers = "";
		        	$(".select-usuarios" ).val("");
				    proyecto.finalTaskCheck(id);
		        },
		        error: function(xhr,status,error){
			       
		        }
		    });
		},
		finalTaskCheck(id){
		   var dat = {};
			 if((parseInt(id)-1) == parseInt(proyecto.laneTask)){
			    console.log("Esta Completada: " +proyecto.selecTaskID + "  value: " + parseInt(proyecto.selecTaskID)-2);
			    $("#checkTask-"+id).prop("checked", false); 
		              dat = {id: id,
					    value: parseInt(id)-2};
			    
			 }else{
			    $("#checkTask-"+id).prop("checked", true); 
		              dat = {id: id,
					    value: parseInt(id)-1};
			 }
			 $.ajax({
						        type: "PATCH",
						        contentType : "application/json",
	                            dataType : 'json',
						        url: '/persona/api/v1/lane',
						        data: JSON.stringify(dat),
						        success: function(result) {
						           console.log("se guardo la información");
						        },
						        error: function(xhr,status,error){
							       
						        }
			   });
		},
		addCommentsTask(comment){
			if(comment!=""){
			var dat = {id: proyecto.selecTaskID,
					    text: comment};
				    $.ajax({
								        type: "POST",
								        contentType : "application/json",
			                            dataType : 'json',
								        url: '/persona/api/v1/addComment',
								        data: JSON.stringify(dat),
								        success: function(result) {
								           console.log("se guardo la información");
								        },
								        error: function(xhr,status,error){
									       
								        }
					   });
			}
			$(".text-comments-task").val("");
		    
		}
	}
});

$(document).ready(function () {
 
});

