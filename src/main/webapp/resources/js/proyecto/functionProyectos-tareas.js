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
		lnG: "",
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
		getNombre(id,fecha,ln){
		console.log("ID DE LA CARD:" +id);
		proyecto.selecTaskID = id;
		proyecto.selectUser();
		proyecto.lnG = ln;
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
				     proyecto.selectedUsers = proyecto.selectedUsers.substring(0, proyecto.selectedUsers.length - 1);
				    
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
		   proyecto.editTotalUser();
		},
		deleteUsersTask(){
		  var dat = {cardIds: proyecto.selecTaskID,
					 userIdsToUnassign: proyecto.selectedUsers};
		  $.ajax({
						        type: "POST",
						        contentType : "application/json",
	                            dataType : 'json',
						        url: '/persona/api/v1/deleteUserCard',
						        data: JSON.stringify(dat),
						        success: function(result) {
						           console.log("se guardo la informacion de deleteUsers");
						        },
						        error: function(xhr,status,error){
							       
						        }
		  });
		  setTimeout(function(){
				    if($(".select-usuarios" ).val()!=""){
				      proyecto.addUsersTask();
				    }else{
				      location.reload();
				    }
		   },3000);
		},
		addUsersTask(){
		  var dat = {cardIds: proyecto.selecTaskID,
					 userIdsToAssign: ($(".select-usuarios" ).val().toString()).substring(0, $(".select-usuarios" ).val().toString() - 1)};
					 
		  $.ajax({
						        type: "POST",
						        contentType : "application/json",
	                            dataType : 'json',
						        url: '/persona/api/v1/addUserCard',
						        data: JSON.stringify(dat),
						        success: function(result) {
						           console.log("se guardo la información de addUsers");
						        },
						        error: function(xhr,status,error){
							       
						        }
		  });
		  setTimeout(function(){
				      location.reload();
		   },3000);
		},
		finalTask(){
		   var dat = {};
			 if(parseInt(proyecto.lnG) == parseInt(proyecto.laneTask)){
			    console.log("Esta Completada");
			    $("#checkTask-"+proyecto.selecTaskID).prop("checked", false); 
		              dat = {id: proyecto.selecTaskID,
					    value: parseInt(proyecto.lnG)-1};
					    proyecto.lnG = parseInt(proyecto.lnG)-1;
			    
			 }else{
			    console.log("No Esta Completada");
			    $("#checkTask-"+proyecto.selecTaskID).prop("checked", true); 
		              dat = {id: proyecto.selecTaskID,
					    value: parseInt(proyecto.lnG)};
					    proyecto.lnG = parseInt(proyecto.lnG);
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
		editTaskLane(id,ln){
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
				    proyecto.finalTaskCheck(id,ln);
		        },
		        error: function(xhr,status,error){
			       
		        }
		    });
		},
		finalTaskCheck(id,ln){
		   var dat = {};
			 if(parseInt(ln) == parseInt(proyecto.laneTask)){
			    console.log("Esta Completada: " +proyecto.selecTaskID + "  value: " + parseInt(proyecto.selecTaskID)-2);
			    $("#checkTask-"+id).prop("checked", false); 
		              dat = {id: id,
					    value: parseInt(ln)-2};
			    
			 }else{
			    $("#checkTask-"+id).prop("checked", true); 
		              dat = {id: id,
					    value: parseInt(ln)};
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
		    
		},
		addTask(id){
		   console.log($("#inputAddTask-"+id).val());
		   var dat = {id: id,
					    title: $("#inputAddTask-"+id).val()};
		        $.ajax({
								        type: "POST",
								        contentType : "application/json",
			                            dataType : 'json',
								        url: '/persona/api/v1/addTask',
								        data: JSON.stringify(dat),
								        success: function(result) {
								           console.log("se guardo la información");
								        },
								        error: function(xhr,status,error){
									       
								        }
					   });
			   $("#inputAddTask-"+id).val("");
			   setTimeout(function(){
			        
				    location.reload();
				},3000);
		},
		addTaskTemp(){
			 console.log(id);
				  console.log($("#inputAddTask-"+id).val());
				  //collapse
				  
				 var divtask= '<div class="row m-0 w-100 bb-gray hover-bg-muted smoth"><div class="col-6 p-0 px-3 py-1 hover-show-child"><div class="d-inline-block custom-control custom-checkbox check-task"><h6></h6> <input type="checkbox" id="checkTask-'
				 +'id de la task'
				 +'" class="custom-control-input"> <label for="checkTask-'
				 +'id de la task'
				 +'" class="custom-control-label medium main small pt-1">'
				 +'detalle de la lask'
				 +'</label></div> <span class="js-show-details hide hover-content-child smoth float-right pt-2 medium main smallest">'
				 +'Detalles <img src="/resources/assets/icons/generales/chev_right.svg"></span></div> <div class="col-3 p-0 px-3 py-1 bl-gray"><span class="medium main small">TBD</span></div> <div class="col-3 p-0 px-3 py-1 bl-gray"></div></div>';
				 $("#inputContainerTask-"+id).before(divtask);
				 
		},
		editTotalUser(){
		console.log($(".select-usuarios").val()!= proyecto.selectedUsers);
			if($(".select-usuarios").val()!= proyecto.selectedUsers){
			   if(proyecto.selectedUsers!=""){
			      proyecto.deleteUsersTask();
			   }else{
			      proyecto.addUsersTask();
			   }
			    
			}
		
		}
	}
});

$(document).ready(function () {
 
});

