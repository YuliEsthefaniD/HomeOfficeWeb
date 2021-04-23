<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="es">
	<head>
		<!-- Required meta tags -->
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="/resources/css/style.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700,800&display=swap" rel="stylesheet">
		<link rel="icon" type="image/png" href="/resources/assets/icons/favicon.svg">

		<title>Total Office | Proyectos</title>
	</head>

	<body>

		<div id="container" class="container-fluid">
			<div class="row pr-4">
<!-- Sidebar Navigation -->
				<nav class="sidenav col-2 h-100vh position-relative">
					<div class="text-center py-4">
						<img class="hide js-nav-desc" src="/resources/assets/icons/generales/icono_totalplay.svg">
						<img class="js-nav-desc w-125px" src="/resources/assets/img/logo_totalplay.svg">
					</div>

					<div class="text-right icon-nav-collapse smoth mb-3 mr-n3">
						<svg class="js-collapse-nav" width="29.672" height="51.287" viewBox="0 0 29.672 51.287">
							<path d="M13.487,2.561c7.544,0,16.185-9.9,16.185-9.9V43.943s-9.342-11.71-16.185-11.71C.679,32.233,0,26.194,0,18.746v-2.7C0,8.6.96,2.561,13.487,2.561Z" transform="translate(0 7.343)" fill="#fff"/>
							<g class="js-icon-nav smoth" transform="translate(4.878 16.441)">
								<line x1="4" y1="6" transform="translate(10.794 9.163)" fill="none" stroke="#1c1f36" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
								<line x2="4" y2="6" transform="translate(4.794 9.163)" fill="none" stroke="#1c1f36" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
								<line x1="4" y2="6" transform="translate(10.794 3.163)" fill="none" stroke="#1c1f36" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
								<line y1="6" x2="4" transform="translate(4.794 3.163)" fill="none" stroke="#1c1f36" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
							</g>
						</svg>
					</div>

					<a href="../general/vista-general" class="sidenav-item no-link d-block position-relative px-3 py-4">
						<img class="icon-sidenav-item hide" src="/resources/assets/icons/sidenav/vista_general_active.svg">
						<img class="icon-sidenav-item" src="/resources/assets/icons/sidenav/vista_general.svg">
						<span class="js-nav-desc ml-2 medium main">Vista general</span>
					</a>

					<a href="../proyecto/proyectos" class="sidenav-item no-link d-block position-relative px-3 py-4 component-active">
						<img class="icon-sidenav-item hide" src="/resources/assets/icons/sidenav/proyectos_active.svg">
						<img class="icon-sidenav-item" src="/resources/assets/icons/sidenav/proyectos.svg">
						<span class="js-nav-desc ml-2 medium main">Proyectos</span><span class="text-white bg-red small rounded-pill px-2 float-right medium">132</span>
					</a>

					<a href="../colaborador/colaboradores" class="sidenav-item no-link d-block position-relative px-3 py-4">
						<img class="icon-sidenav-item hide" src="/resources/assets/icons/sidenav/colaboradores_active.svg">
						<img class="icon-sidenav-item" src="/resources/assets/icons/sidenav/colaboradores.svg">
						<span class="js-nav-desc ml-2 medium main">Colaboradores</span>
					</a>

					<a href="../tarea/tareas-usuario" class="sidenav-item no-link d-block position-relative px-3 py-4">
						<img class="icon-sidenav-item hide" src="/resources/assets/icons/sidenav/tareas_active.svg">
						<img class="icon-sidenav-item" src="/resources/assets/icons/sidenav/tareas.svg">
						<span class="js-nav-desc ml-2 medium main">Tareas</span><span class="text-white bg-red small rounded-pill px-2 float-right medium">262</span>
					</a>

					<div class="notice collapse show p-4">
						<img class="zi-n1 w-100" src="/resources/assets/img/test/test_notice.svg">
						<div class="mt-n5 px-4">
							<div class="js-close-notice btn btn-primary bg-blue rounded-pill text-white w-100 medium">Entendido</div>
						</div>
					</div>

				</nav> <!-- / col-2,col-1 -->
<!-- /Sidebar Navigation -->
				<div class="col bg-white rounded-lg my-4 mr-4 p-4">
<!-- Header Navigation  -->
					<header class="row">
						<div class="col-6">
							<!-- Component View Title -->
							<h1 class="main h3 semibold m-0">Proyectos </h1>
							<p class="main">Hoy es 2 de marzo 2021</p>	
						</div>
						<div class="col-6 text-right">

							<div class="d-inline-block">
								<input class="input-search form-control d-inline-block" type="text" placeholder="Buscar">
								<img class="icon-search" src="/resources/assets/icons/generales/search.svg">
							</div>

							<div class="box-alert js-fade-toggle position-relative d-inline-block rounded-lg smoth">
								<span class="count-alert bg-red text-white small medium text-center">10</span>
								<svg width="21.875" height="27.343" viewBox="0 0 21.875 27.343">
									<path d="M1778.552-3695.992h5.469a2.742,2.742,0,0,1-2.735,2.734A2.742,2.742,0,0,1,1778.552-3695.992Zm-6.836-1.367a1.371,1.371,0,0,1-1.367-1.367,1.372,1.372,0,0,1,1.367-1.368h1.367v-9.57a8.186,8.186,0,0,1,6.152-7.929v-.957a2.048,2.048,0,0,1,2.052-2.05,2.048,2.048,0,0,1,2.05,2.05v.957a8.185,8.185,0,0,1,6.152,7.929v9.57h1.368a1.371,1.371,0,0,1,1.367,1.368,1.371,1.371,0,0,1-1.367,1.367Z" transform="translate(-1770.349 3720.601)" fill="#e1e6f3"/>
								</svg>
								<div class="hide js-fade-content position-absolute bg-white p-3 zi-1 rounded-lg border b-gray shadow r-0 mt-3 w-300px h-300px overflow-auto text-left">

									<div class="bb-gray position-relative mt-2">
										<span class="pointer-red position-absolute rounded-circle"></span>
										<p class="h6 semibold m-0 main">Venta consultiva </p>
										<p class="smallest medium main mb-1">&bull; 26 de febrero 2021 &ndash; 12:20</p>
										<div class="row mb-3">
											<img class="col-2 " src="/resources/assets/icons/actividades/comentario.svg">
											<div class="col-10 pl-0 small"><span class="semibold">Abril</span> Lopez te ha etiquetado en un comentario</div>	
										</div>
									</div>

									<div class="bb-gray position-relative mt-3">
										<span class="pointer-red position-absolute rounded-circle"></span>
										<p class="h6 semibold m-0 main">Venta consultiva </p>
										<p class="smallest medium main mb-1">&bull; 26 de febrero 2021 &ndash; 12:20</p>
										<div class="row mb-3">
											<img class="col-2 " src="/resources/assets/icons/actividades/comentario.svg">
											<div class="col-10 pl-0 small"><span class="semibold">Abril</span> Lopez te ha etiquetado en un comentario</div>	
										</div>
									</div>

									<div class="bb-gray position-relative mt-3">
										<span class="pointer-red position-absolute rounded-circle"></span>
										<p class="h6 semibold m-0 main">Venta consultiva </p>
										<p class="smallest medium main mb-1">&bull; 26 de febrero 2021 &ndash; 12:20</p>
										<div class="row mb-3">
											<img class="col-2 " src="/resources/assets/icons/actividades/comentario.svg">
											<div class="col-10 pl-0 small"><span class="semibold">Abril</span> Lopez te ha etiquetado en un comentario</div>	
										</div>
									</div>

									<div class="bb-gray position-relative mt-2">
										<span class="pointer-red position-absolute rounded-circle"></span>
										<p class="h6 semibold m-0 main">Venta consultiva </p>
										<p class="smallest medium main mb-1">&bull; 26 de febrero 2021 &ndash; 12:20</p>
										<div class="row mb-3">
											<img class="col-2 " src="/resources/assets/icons/actividades/comentario.svg">
											<div class="col-10 pl-0 small"><span class="semibold">Abril</span> Lopez te ha etiquetado en un comentario</div>	
										</div>
									</div>

									<div class="bb-gray position-relative mt-3">
										<span class="pointer-red position-absolute rounded-circle"></span>
										<p class="h6 semibold m-0 main">Venta consultiva </p>
										<p class="smallest medium main mb-1">&bull; 26 de febrero 2021 &ndash; 12:20</p>
										<div class="row mb-3">
											<img class="col-2 " src="/resources/assets/icons/actividades/comentario.svg">
											<div class="col-10 pl-0 small"><span class="semibold">Abril</span> Lopez te ha etiquetado en un comentario</div>	
										</div>
									</div>

									<div class="bb-gray position-relative mt-3">
										<span class="pointer-red position-absolute rounded-circle"></span>
										<p class="h6 semibold m-0 main">Venta consultiva </p>
										<p class="smallest medium main mb-1">&bull; 26 de febrero 2021 &ndash; 12:20</p>
										<div class="row mb-3">
											<img class="col-2 " src="/resources/assets/icons/actividades/comentario.svg">
											<div class="col-10 pl-0 small"><span class="semibold">Abril</span> Lopez te ha etiquetado en un comentario</div>	
										</div>
									</div>

								</div>
							</div>

							<div class="position-relative d-inline-block ml-2" id='dmenu'>
								<img class="hover-b-blue smoth rounded-circle border dropdown-toggle w-80" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"  src="srcAvatar">
								<div class="hide js-fade-content position-absolute bg-white p-3 pl-5 zi-1 rounded-lg border b-gray shadow r-0 mt-1 dropdown-menu dropdown-menu-right">
									<a href="../perfil/perfil" class="d-block small semibold no-link mb-2 main">Mi Perfil</a>
									<a href="../perfil/organigrama" class="d-block small semibold no-link mb-2 main">Organigrama</a>
									<a class="d-block small semibold no-link red">Cerrar sesi&oacute;n</a>
								</div>								
							</div>

						</div>
					</header>
<!-- /Header Navigation  -->

<!-- Component: Proyectos Ejemplo -->
					<div class="row">
						<div class="col-4 pt-2">
							<a href="../proyecto/proyectos" class="no-link main py-2 px-4 medium main d-inline-block ml-3">Proyectos</a>
							<span class="border border-primary border-bottom-0 rounded-top py-2 px-4 medium blue d-inline-block ml-3 small"><span class="pointer-red rounded-circle d-inline-block mr-2"></span>{{nombreBoard}}</span>
						</div>
						<div class="col text-right small">
							<span class="blue smoth d-inline-block semibold mr-3" data-toggle="modal" data-target="#modalMasInformacion">M&aacute;s informaci&oacute;n<img class="mr-1" src="/resources/assets/icons/generales/chev_right.svg"></span>
							<span class="blue smoth d-inline-block semibold mr-3" data-toggle="modal" data-target="#modalEditarProyecto"><img class="mr-1" src="/resources/assets/icons/generales/edit.svg">Editar proyecto</span>
							<div class="rounded-pill btn btn-outline-primary medium pl-3 pr-2 py-0 d-inline-block">
								<span class="d-inline-block p-0 m-0 align-middle semibold mr-2">&#43;</span>
								<span class="d-inline-block align-middle semibold small">Agregar Tarea</span>
								<div class="d-inline-block p-0 pl-2 m-0 ml-3 align-middle semibold bl-blue position-relative" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ><svg width="8" height="6" viewBox="0 0 11.175 6.585"><path d="M15.88,9.29,12,13.17,8.12,9.29A1,1,0,0,0,6.71,10.7l4.59,4.59a1,1,0,0,0,1.41,0L17.3,10.7a1,1,0,0,0,0-1.41,1.017,1.017,0,0,0-1.42,0Z" transform="translate(-6.418 -8.997)" fill="#006cff"/></svg></div>

								<div class="hide position-absolute bg-white py-2 pl-3 pr-2 zi-1 rounded-lg border b-gray shadow r-0 mt-1 dropdown-menu dropdown-menu-right text-right">
									<a href="https://calendar.google.com/calendar/u/0/r" class="d-block no-link semibold main smallest my-2">Calendar <img class="ml-2" src="/resources/assets/icons/tareas/evento.svg"></a>
									<a href="https://drive.google.com/drive/u/0/my-drive" class="d-block no-link semibold main smallest my-2">Gooogle Drive <img class="ml-2" src="/resources/assets/icons/tareas/drive.svg"></a>
								</div>
							</div>
						</div>
					</div>
					<div class="row m-0">
						<div class="col p-0 border b-gray rounded-lg">
							<div class="row m-0 bb-gray">
								<div class="col-7 p-0 px-3">
									<div class="small">
										<h5 class="main semibold m-0 pt-2">{{nombreBoard}}</h5>
										<span class="medium gray">Project Manager:</span>
										<span class="medium main mr-4">Abril L&oacute;pez:</span>
										<div class="d-inline-block"><img class="p-1" src="/resources/assets/icons/actividades/tarea_finalizada.svg"><span>Vencimiento 15&nbsp;</span><span class="">de Abril 2021</span></div>
									</div>
								</div>
								<div class="col-5 p-0 d-flex align-items-center justify-content-end">
									<div class="small">
										<span class="bg-muted p-3 rounded-lg smoth gray medium"><img class="pr-2" src="/resources/assets/icons/actividades/tarea_no_finalizada.svg">Tareas sin finalizar</span>
										<span class="medium main px-3 dropdown-toggle no-chev smoth" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ><img class="pr-2" src="/resources/assets/icons/generales/adjuntar.svg">Adjuntar enlace</span>
										<div class="hide js-fade-content position-absolute bg-white p-2 zi-1 rounded-lg border b-gray shadow r-0 mt-1 dropdown-menu dropdown-menu-right">
											<p class="main medium small m-0">Adjuntar un enlace</p>
											<div class="group-form-fieldset smoth mb-2 small">
												<label class="js-mat-label">V&iacute;nculo</label>
												<input class="js-mat-input" type="" name="" placeholder="Pegue un v&iacute;nculo aqui">
											</div>
											<div class="group-form-fieldset smoth mb-2 small">
												<label class="js-mat-label">Nombre enlace</label>
												<input class="js-mat-input" type="" name="" placeholder="Nombre del enlace">
											</div>
											<div class="btn btn-primary bg-blue rounded-pill text-white w-100 semibold smallest d-inline-block" data-toggle="modal" data-target="#modalMasInformacion">Adjuntar</div>
										</div>
									</div>
								</div>
							</div>

							<div class="row m-0 bb-gray">
								<div class="col-6 px-3 py-3">
									<h6 class="main semibold m-0">Nombre de la tarea</h6>
								</div>
								<div class="col-3 px-3 py-3 text-center bl-gray">
									<span class="medium main">Fecha de entrega</span><img class="ml-2" src="/resources/assets/icons/generales/arrange_dark.svg">
								</div>
								<div class="col-3 px-3 py-3 text-center bl-gray">
									<span class="medium main">Responsable</span><img class="ml-2" src="/resources/assets/icons/generales/arrange_dark.svg">
								</div>
							</div>

							<div class="row m-0 bb-gray">
								<c:forEach items="${cards.tarea}" var="card">	
									<div class="col-12 px-3 py-3 bb-gray">
										<div data-toggle="collapse" data-target="#collapse-<c:out value="${card.id}"/>" aria-expanded="false" aria-controls="collapse-<c:out value="${tarea.id}"/>">
											<img class="align-middle mr-2 rotate180" src="/resources/assets/icons/generales/chev_down_dark.svg">
											<span class="align-middle semibold main"><c:out value="${card.title}"/> </span>
										</div>
									</div>
										
									<div class="collapse show w-100" id="collapse-<c:out value="${card.id}"/>">
										<c:forEach items="${card.task.cards}" var="card">
										<div class="row m-0 w-100 bb-gray hover-bg-muted smoth">
											<div class="col-6 p-0 px-3 py-1 hover-show-child">
												<div class="d-inline-block custom-control custom-checkbox check-task" >
													<input type="checkbox" class="custom-control-input" id="checkTask1">
													<label class="custom-control-label medium main small pt-1" for="checkTask1"><c:out value="${card.title}"/></label>
												</div>
												<span class="js-show-details hide hover-content-child smoth float-right pt-2 medium main smallest" @click="getNombre('<c:out value="${card.title}"/>')">Detalles <img src="/resources/assets/icons/generales/chev_right.svg"></span>
											</div>
											<div class="col-3 p-0 px-3 py-1 bl-gray">
												<span class="medium main small">14 Abril</span>
											</div>
											<div class="col-3 p-0 px-3 py-1 bl-gray">
												<c:forEach items="${card.assignedUsers}" var="user">
													<div class="row">
														<img class="w-30px rounded-circle border border-light shadow mr-3" src="<c:url value="${user.avatar}"/>">
														<span style="width: 60%" class=" medium main small text-truncate"><c:out value="${user.fullName}"/></span>
													</div>
												</c:forEach>
											</div>
										</div>
										</c:forEach>
										
										<div class="row m-0 w-100 bb-gray hover-bg-muted smoth">
											<div class="col-6 p-0 px-3 py-1 hover-show-child">
												<span class="gray medium small js-next-toggle">Agregar tarea</span>
												<div class="hide js-next-content custom-control custom-checkbox check-task custom-control-inline">
													<input type="checkbox" class="custom-control-input" id="checkTaskNew">
													<label class="custom-control-label medium main small pt-1" for="checkTaskNew"></label>
													<input class="input-clear border-0 small d-inline-block w-300px" type="" name="" placeholder="Escribe el nombre de la tarea…">
												</div>
											</div>

											<div class="col-3 p-0 px-3 py-1 bl-gray">
												
											</div>
											<div class="col-3 p-0 px-3 py-1 bl-gray">
												
											</div>
										</div>
									</div>
									
																	
								</c:forEach>
							</div>

						</div>
					</div>
<!-- /Component: Proyecto Ejemplo -->
				</div> <!-- /col -->
			</div>	<!-- /row -->
			
<!-- Modal: Editar Proyecto -->
		<div class="modal fade" id="modalEditarProyecto" tabindex="-1" aria-labelledby="modalEditarProyectoLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-lg">
				<div class="modal-content border-0 px-2">
					<div class="modal-header">
						<h5 class="modal-title semibold main" id="modalEditarProyectoLabel">Editar Proyecto</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true"><img src="/resources/assets/icons/generales/close.svg"></span>
						</button>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-6">
								<div class="group-form-fieldset smoth mb-3">
									<label class="js-mat-label">Editar el proyecto</label>
									<input class="js-mat-input" type="" name="nomProyecto" placeholder="Nombre del proyecto">
								</div>
								<div class="row m-0">
									<div class="col p-0">
										<div class="group-form-fieldset smoth mb-3">
											<label class="js-mat-label">Fecha inicio</label>
											<input class="js-mat-input" type="" name="fechaInicio" placeholder="Fecha de inicio">
										</div>	
									</div>
									<div class="col p-0 pl-4">
										<div class="group-form-fieldset smoth mb-3">
											<label class="js-mat-label">Prioridad</label>
											<select class="js-mat-input">
												<option disabled selected>Prioridad</option>
												<option>1</option>
												<option>2</option>
												<option>3</option>
											</select>		
										</div>	
									</div>
								</div>
								<div class="group-form-fieldset smoth mb-3">
									<label class="js-mat-label">Unidad de negocio</label>
									<select class="js-mat-input">
										<option disabled selected>Unidad de negocio</option>
										<option>Totalplay Empresarial</option>
										<option>Totalplay Empresarial</option>
										<option>Totalplay Empresarial</option>
									</select>		
								</div>
								<div class="group-form-fieldset smoth mb-3">
									<label class="js-mat-label">ORC</label>
									<input class="js-mat-input" type="" name="ORC" placeholder="ORC">
								</div>
								<div class="group-form-fieldset smoth mb-3">
									<label class="js-mat-label">Descripci&oacute;n</label>
									<textarea class="js-mat-input" placeholder="Descripci&oacute;n" rows="4"></textarea>
								</div>
							</div>
							<div class="col-6">
								<div class="border b-gray rounded-lg h-100">
									<div class="row m-0 p-3 pb-2 bb-gray">
										<div class="col p-0 ">
											<h6 class="semibold main">Project Manager</h6>
											<img class="w-30px rounded-circle border border-light shadow-sm" src="/resources/assets/img/test/test_user_1.png">
											<span class="small medium main">Abril L&oacute;pez</span>
										</div>
										<div class="col p-0">
											<span class="blue btn p-0 float-right semibold small">Cambiar</span>
										</div>
									</div>
									<div class="row m-0 p-3 pb-2 ">
										<div class="col p-0">
											<div class="semibold main mb-3">Equipo de trabajo</div>
											<div class="h-300px overflow-auto">
												<div class="custom-control custom-checkbox mb-1">
													<input type="checkbox" class="custom-control-input" id="teamItem1">
													<label class="custom-control-label semibold main small" for="teamItem1">
														<img class="w-30px rounded-circle border border-light shadow-sm" src="/resources/assets/img/test/test_team_item_1.png">
														Karen M
													</label>
												</div>
												<div class="custom-control custom-checkbox mb-1">
													<input type="checkbox" class="custom-control-input" id="teamItem2">
													<label class="custom-control-label semibold main small" for="teamItem2">
														<img class="w-30px rounded-circle border border-light shadow-sm" src="/resources/assets/img/test/test_team_item_2.png">
														Deysi P
													</label>
												</div>
												<div class="custom-control custom-checkbox mb-1">
													<input type="checkbox" class="custom-control-input" id="teamItem3">
													<label class="custom-control-label semibold main small" for="teamItem3">
														<img class="w-30px rounded-circle border border-light shadow-sm" src="/resources/assets/img/test/test_team_item_3.png">
														Beto L
													</label>
												</div>
												<div class="custom-control custom-checkbox mb-1">
													<input type="checkbox" class="custom-control-input" id="teamItem4">
													<label class="custom-control-label semibold main small" for="teamItem4">
														<img class="w-30px rounded-circle border border-light shadow-sm" src="/resources/assets/img/test/test_team_item_4.png">
														Raul C
													</label>
												</div>
												<div class="custom-control custom-checkbox mb-1">
													<input type="checkbox" class="custom-control-input" id="teamItem5">
													<label class="custom-control-label semibold main small" for="teamItem5">
														<img class="w-30px rounded-circle border border-light shadow-sm" src="/resources/assets/img/test/test_team_item_5.png">
														Juan Carlos
													</label>
												</div>
												<div class="custom-control custom-checkbox mb-1">
													<input type="checkbox" class="custom-control-input" id="teamItem6">
													<label class="custom-control-label semibold main small" for="teamItem6">
														<img class="w-30px rounded-circle border border-light shadow-sm" src="/resources/assets/img/test/test_team_item_6.png">
														Reynaldo E
													</label>
												</div>
												<div class="custom-control custom-checkbox mb-1">
													<input type="checkbox" class="custom-control-input" id="teamItem7">
													<label class="custom-control-label semibold main small" for="teamItem7">
														<img class="w-30px rounded-circle border border-light shadow-sm" src="/resources/assets/img/test/test_team_item_7.png">
														Rodrigo O
													</label>
												</div>
												<div class="custom-control custom-checkbox mb-1">
													<input type="checkbox" class="custom-control-input" id="teamItem8">
													<label class="custom-control-label semibold main small" for="teamItem8">
														<img class="w-30px rounded-circle border border-light shadow-sm" src="/resources/assets/img/test/test_team_item_8.png">
														Arturo C
													</label>
												</div>
												<div class="custom-control custom-checkbox mb-1">
													<input type="checkbox" class="custom-control-input" id="teamItem9">
													<label class="custom-control-label semibold main small" for="teamItem9">
														<img class="w-30px rounded-circle border border-light shadow-sm" src="/resources/assets/img/test/test_team_item_9.png">
														Brianda H
													</label>
												</div>	
												<div class="custom-control custom-checkbox mb-1">
													<input type="checkbox" class="custom-control-input" id="teamItem10">
													<label class="custom-control-label semibold main small" for="teamItem10">
														<img class="w-30px rounded-circle border border-light shadow-sm" src="/resources/assets/img/test/test_team_item_1.png">
														Karen R
													</label>
												</div>	
												<div class="custom-control custom-checkbox mb-1">
													<input type="checkbox" class="custom-control-input" id="teamItem11">
													<label class="custom-control-label semibold main small" for="teamItem11">
														<img class="w-30px rounded-circle border border-light shadow-sm" src="/resources/assets/img/test/test_team_item_2.png">
														Juan Carlos H
													</label>
												</div>											
											</div>
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<span class="blue semibold btn" data-dismiss="modal">Cancelar</span>
						<span class="btn btn-primary bg-blue rounded-pill" data-dismiss="modal">Editar Proyecto</span>
					</div>
				</div>
			</div>
		</div>
<!-- /Modal: Editar Proyecto -->


<!-- Modal: M&aacute;s informaci&oacute;n -->
		<div class="modal fade" id="modalMasInformacion" tabindex="-1" aria-labelledby="modalMasInformacionLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content border-0 px-2">
					<div class="modal-header border-0">
						<h5 class="modal-title semibold main" id="modalEditarProyectoLabel">{{nombreBoard}}</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true"><img src="/resources/assets/icons/generales/close.svg"></span>
						</button>
					</div>
					<div class="modal-body pb-5 mb-5">
						<div class="row pt-0 pb-4 bb-gray">
							<div class="col">
								<p class="semibold main m-0">Unidad de negocio</p>
								<p class="medium gray">Totalplay Residencial</p>
							</div>
							<div class="col">
								<p class="semibold main m-0">Fase del proyecto</p>
								<span class="bg-tangerine py-1 px-2 rounded-lg small text-white semibold">Desarrollo</span>
							</div>
						</div>
						<div class="row pt-4">
							<div class="col-12 semibold main mb-3"><img class="pr-2" src="/resources/assets/icons/generales/adjuntado.svg">Adjuntos</div>	
						</div>						
						<a class="row no-link hover-bg-muted py-2">
							<div class="col-8 d-flex align-items-center">
								<span class="b-blue p-2 rounded-lg d-inline-block mr-3 bg-white">Link</span>
								<div class="d-inline-block">
									<div class="semibold main">Presentaci&oacute;n 09 Abril<img src="/resources/assets/icons/generales/external_link.svg"></div>
									<div class="small gray">AÃ±adido el 06 Abril</div>
								</div>
							</div>
							<div class="col-4 d-flex align-items-end">
								<span class="gray small smoth mr-3">Quitar</span>
								<span class="gray small smoth">Editar</span>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
<!-- /Modal: M&aacute;s Informaci&oacute;n -->

<!-- Component: Detalles -->
		<div class="js-content-details hide position-absolute bg-white rounded-lg shadow">
			<div class="p-3">
				<div class="row">
					<div class="col">
						<div class="rounded-pill btn btn btn-outline-green medium px-3 py-2 d-inline-block smallest">
							<svg width="16.785" height="12.575" viewBox="0 0 16.785 12.575"><path d="M9,16.2,5.5,12.7a.99.99,0,1,0-1.4,1.4l4.19,4.19a1,1,0,0,0,1.41,0L20.3,7.7a.99.99,0,0,0-1.4-1.4Z" transform="translate(-3.807 -6.007)" fill="#69e092"/></svg>
							<span class="ml-2 semibold">Marcar como finalizada</span>
						</div>	
					</div>
					<div class="col text-right">
						<img class="js-show-details" src="/resources/assets/icons/generales/tab.svg">
					</div>		
				</div>
				<div class="row m-0 py-3">
					<div class="semibold main semibold">{{nombreCard}}</div>
				</div>
				<div class="row mb-3">
					<div class="col-3">
						<span class="gray small">Responsable</span>
					</div>
					<div class="col">
						<img class="w-30px rounded-circle border border-light shadow mr-3" src="/resources/assets/img/test/test_team_item_2.png">
						<span class="semibold main small">Deysi Portillo</span>
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-3">
						<span class="gray small">Fecha de entrega</span>
					</div>
					<div class="col">
						<span class="semibold main small">14 Abril</span>
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-3">
						<span class="gray small">Proyectos</span>
					</div>
					<div class="col">
						<span class="medium main small"><span class="pointer-red rounded-circle d-inline-block mr-2"></span>{{nombreBoard}}</span>
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-3">
						<span class="gray small">Descripci&oacute;n</span>
					</div>
					<div class="col">
						<div class="group-form-fieldset smoth mb-3">
							<label class="js-mat-label">Detalles</label>
							<textarea class="js-mat-input small" placeholder="Agrega m&aacute;s detalles a esta tarea" rows="2"></textarea>
						</div>
					</div>
				</div>
			</div>
			<div class="mb-3 overflow-auto h-60px">
				<div class="bg-muted mb-1 px-3 py-2">
					<img class="w-20px rounded-circle border border-light shadow" src="/resources/assets/img/test/test_team_item_3.png">
					<span class="medium main small ">Herzon cre&oacute; esta tarea</span>&nbsp;<span class="gray small">Hace 15 d&iacute;as</span>
					<div class="gray small pl-4">Herzon cambi&oacute; la fecha de entrega a 26 mar. Hace 2 minutos</div>
				</div>
				<div class="bg-muted mb-1 px-3 py-2">
					<img class="w-20px rounded-circle border border-light shadow" src="/resources/assets/img/test/test_team_item_3.png">
					<span class="medium main small ">Herzon cre&oacute; esta tarea</span>&nbsp;<span class="gray small">Hace 15 d&iacute;as</span>
					<div class="gray small pl-4">Herzon cambi&oacute; la fecha de entrega a 26 mar. Hace 2 minutos</div>
				</div>
			</div>
			<div class="row m-0 pb-3 bg-muted">
				<div class="col-1">
					<img class="w-20px rounded-circle border border-light shadow" src="/resources/assets/img/test/test_team_item_3.png">
				</div>
				<div class="col pl-0">
					<div class="group-form-fieldset smoth w-auto">
						<textarea class="js-mat-input small" placeholder="Realiza una pregunta o comenta una actualizaci&oacute;" rows="2"></textarea>
					</div>
					<span class="regular small gray mr-3">Colaboradores:</span>
					<img class="w-20px rounded-circle border border-light shadow mr-2" src="/resources/assets/img/test/test_team_item_4.png">
					<img class="w-20px rounded-circle border border-light shadow mr-2" src="/resources/assets/img/test/test_team_item_5.png">
					<img class="" src="/resources/assets/icons/generales/add.svg">
				</div>
			</div>			
			
			
		</div>
		</div>	<!-- /container -->

		<div class="floating-elements">
			<img src="/resources/assets/icons/generales/chat.svg">
		</div>


		<!-- jQuery first, then Popper./resources/js, then Bootstrap /resources/js -->
		<script src="https://cdn.jsdelivr.net/npm/vue" type="text/javascript"></script>
		<script src="/resources/js/ajax-jquery-3.5.1.min.js"></script>
		<script src="/resources/js/bootstrap.bundle.min.js"></script>
		<script src="/resources/js/proyecto/functionProyectos-tareas.js"></script>
		<script src="/resources/js/functions.js"></script>
	</body>
</html>