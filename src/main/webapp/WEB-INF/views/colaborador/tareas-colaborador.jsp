<!doctype html>
<html lang="es">
	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="/resources/css/style.css">

		<link rel="icon" type="image/png" href="/resources/assets/icons/favicon.svg">

		<title>Total Office | Tareas</title>
	</head>

	<body>

		<div class="container-fluid">
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
						<span class="js-nav-desc ml-2 medium main">Vista General</span>
					</a>

					<a href="../proyecto/proyectos" class="sidenav-item no-link d-block position-relative px-3 py-4">
						<img class="icon-sidenav-item hide" src="/resources/assets/icons/sidenav/proyectos_active.svg">
						<img class="icon-sidenav-item" src="/resources/assets/icons/sidenav/proyectos.svg">
						<span class="js-nav-desc ml-2 medium main">Proyectos</span><span class="text-white bg-red small rounded-pill px-2 float-right medium">132</span>
					</a>

					<a href="../colaborador/colaboradores" class="sidenav-item no-link d-block position-relative px-3 py-4 component-active">
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

						<div class="col-12 col-lg-5 col-xl-4">
							<!-- Component: Info Persona -->
							<div class="border b-gray rounded-lg px-3 py-2 mb-2">
								<a class="mr-2" href="colaboradores.html"><img src="/resources/assets/icons/generales/chev_left.svg"></a>
								<div class="position-relative d-inline-block w-50px">
									<img class="w-100 rounded-circle border border-light shadow" src="/resources/assets/img/test/test_team_item_2.png">
									<span class="pointer-green position-absolute rounded-circle border border-light"></span>
								</div>
								<div class="d-inline-block align-middle">
									<h1 class="main h6 semibold m-0">Deysi Portillo </h1>
									<p class="gray small m-0">UI/UX Designer</p>
								</div>
								<div class="float-right pt-2">
									<a href=""><img src="/resources/assets/icons/generales/call.svg"></a>
									<a href=""><img src="/resources/assets/icons/generales/meet.svg"></a>
								</div>
							</div>
						</div>

						<div class="col text-right">

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

							<div class="position-relative d-inline-block ml-2">
								<img class="hover-b-blue smoth rounded-circle border dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" src="/resources/assets/img/test/test_user.png">
								<div class="hide js-fade-content position-absolute bg-white p-3 pl-5 zi-1 rounded-lg border b-gray shadow r-0 mt-1 dropdown-menu dropdown-menu-right">
									<a href="../perfil/perfil" class="d-block small semibold no-link mb-2 main">Mi Perfil</a>
									<a href="../perfil/organigrama" class="d-block small semibold no-link mb-2 main">Organigrama</a>
									<a class="d-block small semibold no-link red">Cerrar sesi&oacute;n</a>
								</div>								
							</div>

						</div>
					</header>
<!-- /Header Navigation  -->

<!-- Component: Tareas Colaborador -->
					<div class="b-gray rounded-lg">
						<nav>
							<div class="nav nav-tabs" id="nav-tab" role="tablist">
								<a class="nav-link bg-transparent border-0 small semibold gray smoth active" id="nav-lista-tab" data-toggle="tab" href="#nav-lista" role="tab" aria-controls="nav-lista" aria-selected="true">Lista</a>
								<a class="nav-link bg-transparent border-0 small semibold gray"smoth  id="nav-tablero-tab" data-toggle="tab" href="#nav-tablero" role="tab" aria-controls="nav-tablero" aria-selected="false">Tablero</a>
								<a class="nav-link bg-transparent border-0 small semibold gray"smoth  id="nav-calendario-tab" data-toggle="tab" href="#nav-calendario" role="tab" aria-controls="nav-calendario" aria-selected="false">Calendario</a>
							</div>
						</nav>
						<div class="tab-content" id="navTabContentTareasColaborador">
							<div class="tab-pane fade show active" id="nav-lista" role="tabpanel" aria-labelledby="nav-lista-tab">
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
									<div class="col-12 px-3 py-3 bb-gray">
										<div data-toggle="collapse" data-target="#collapseTareaEjem" aria-expanded="false" aria-controls="collapseTareaEjem">
											<img class="align-middle mr-2 rotate180" src="/resources/assets/icons/generales/chev_down_dark.svg">
											<span class="align-middle semibold main">Portal P&uacute;blico</span>
										</div>
									</div>
									<div class="collapse show w-100" id="collapseTareaEjem">
										<div class="row m-0 w-100 bb-gray hover-bg-muted smoth">
											<div class="col-6 p-0 px-3 py-1 hover-show-child">
												<div class="d-inline-block custom-control custom-checkbox check-task" >
													<input type="checkbox" class="custom-control-input" id="checkTask1">
													<label class="custom-control-label medium main small pt-1" for="checkTask1">Generar propuesta de ecommerce</label>
												</div>
												<span class="js-show-details hide hover-content-child smoth float-right pt-2 medium main smallest">Detalles <img src="/resources/assets/icons/generales/chev_right.svg"></span>
											</div>
											<div class="col-3 p-0 px-3 py-1 bl-gray">
												<span class="medium main small">14 Abril</span>
											</div>
											<div class="col-3 p-0 px-3 py-1 bl-gray">
												<img class="w-30px rounded-circle border border-light shadow mr-3" src="/resources/assets/img/test/test_team_item_2.png">
												<span class="medium main small">Deysi Portillo</span>
											</div>
										</div>
										<div class="row m-0 w-100 bb-gray hover-bg-muted smoth">
											<div class="col-6 p-0 px-3 py-1 hover-show-child">
												<div class="d-inline-block custom-control custom-checkbox check-task">
													<input type="checkbox" class="custom-control-input" id="checkTask2">
													<label class="custom-control-label medium main small pt-1" for="checkTask2">Cambios en nueva oferta</label>
												</div>
												<span class="js-show-details hide hover-content-child smoth float-right pt-2 medium main smallest">Detalles <img src="/resources/assets/icons/generales/chev_right.svg"></span>
											</div>
											<div class="col-3 p-0 px-3 py-1 bl-gray">
												<span class="semibold red small">30 Marzo</span>
											</div>
											<div class="col-3 p-0 px-3 py-1 bl-gray">
												<img class="w-30px rounded-circle border border-light shadow mr-3" src="/resources/assets/img/test/test_team_item_2.png">
												<span class="medium main small">Deysi Portillo</span>
											</div>
										</div>
										<div class="row m-0 w-100 bb-gray hover-bg-muted smoth">
											<div class="col-6 p-0 px-3 py-1 hover-show-child">
												<span class="gray medium small js-next-toggle">Agregar tarea</span>
												<div class="hide js-next-content custom-control custom-checkbox check-task custom-control-inline">
													<input type="checkbox" class="custom-control-input" id="checkTaskNew">
													<label class="custom-control-label medium main small pt-1" for="checkTaskNew"></label>
													<input class="input-clear border-0 small d-inline-block w-300px" type="" name="" placeholder="Escribe el nombre de la tarea…">
												</div>
											</div>

											<div>
												
											</div>

											<div class="col-3 p-0 px-3 py-1 bl-gray">
												
											</div>
											<div class="col-3 p-0 px-3 py-1 bl-gray">
												
											</div>
										</div>
									</div>
								</div>
								<div class="row m-0 bb-gray">
									<div class="col-12 px-3 py-3 bb-gray">
										<div data-toggle="collapse" data-target="#collapseTareaEjem2" aria-expanded="false" aria-controls="collapseTareaEjem2">
											<img class="align-middle mr-2 rotate180" src="/resources/assets/icons/generales/chev_down_dark.svg">
											<span class="align-middle semibold main">Nuevos Negocios</span>
										</div>
									</div>
									<div class="collapse show w-100" id="collapseTareaEjem2">
										<div class="row m-0 w-100 bb-gray hover-bg-muted smoth">
											<div class="col-6 p-0 px-3 py-1 hover-show-child">
												<div class="d-inline-block custom-control custom-checkbox check-task" >
													<input type="checkbox" class="custom-control-input" id="checkTask3">
													<label class="custom-control-label medium main small pt-1" for="checkTask3">Dashboard Nuevos Negocios</label>
												</div>
												<span class="js-show-details hide hover-content-child smoth float-right pt-2 medium main smallest">Detalles <img src="/resources/assets/icons/generales/chev_right.svg"></span>
											</div>
											<div class="col-3 p-0 px-3 py-1 bl-gray">
												<span class="medium main small">14 Abril</span>
											</div>
											<div class="col-3 p-0 px-3 py-1 bl-gray">
												<img class="w-30px rounded-circle border border-light shadow mr-3" src="/resources/assets/img/test/test_team_item_2.png">
												<span class="medium main small">Deysi Portillo</span>
											</div>
										</div>
										<div class="row m-0 w-100 bb-gray hover-bg-muted smoth">
											<div class="col-6 p-0 px-3 py-1 hover-show-child">
												<span class="gray medium small js-next-toggle">Agregar tarea</span>
												<div class="hide js-next-content custom-control custom-checkbox check-task custom-control-inline">
													<input type="checkbox" class="custom-control-input" id="checkTaskNew">
													<label class="custom-control-label medium main small pt-1" for="checkTaskNew"></label>
													<input class="input-clear border-0 small d-inline-block w-300px" type="" name="" placeholder="Escribe el nombre de la tarea…">
												</div>
											</div>

											<div>
												
											</div>

											<div class="col-3 p-0 px-3 py-1 bl-gray">
												
											</div>
											<div class="col-3 p-0 px-3 py-1 bl-gray">
												
											</div>
										</div>
									</div>
								</div>
								<div class="row m-0 bb-gray">
									<div class="col-12 px-3 py-3 bb-gray">
										<div data-toggle="collapse" data-target="#collapseTareaEjem3" aria-expanded="false" aria-controls="collapseTareaEjem3">
											<img class="align-middle mr-2 rotate180" src="/resources/assets/icons/generales/chev_down_dark.svg">
											<span class="align-middle semibold main">Total Office</span>
										</div>
									</div>
									<div class="collapse show w-100" id="collapseTareaEjem3">
										<div class="row m-0 w-100 bb-gray hover-bg-muted smoth">
											<div class="col-6 p-0 px-3 py-1 hover-show-child">
												<div class="d-inline-block custom-control custom-checkbox check-task" >
													<input type="checkbox" class="custom-control-input" id="checkTask5">
													<label class="custom-control-label medium main small pt-1" for="checkTask5">Nueva vista “Tablero”</label>
												</div>
												<span class="js-show-details hide hover-content-child smoth float-right pt-2 medium main smallest">Detalles <img src="/resources/assets/icons/generales/chev_right.svg"></span>
											</div>
											<div class="col-3 p-0 px-3 py-1 bl-gray">
												<span class="medium main small"></span>
											</div>
											<div class="col-3 p-0 px-3 py-1 bl-gray">
												<img class="w-30px rounded-circle border border-light shadow mr-3" src="/resources/assets/img/test/test_team_item_2.png">
												<span class="medium main small">Deysi Portillo</span>
											</div>
										</div>
										<div class="row m-0 w-100 bb-gray hover-bg-muted smoth">
											<div class="col-6 p-0 px-3 py-1 hover-show-child">
												<div class="d-inline-block custom-control custom-checkbox check-task" >
													<input type="checkbox" class="custom-control-input" id="checkTask6">
													<label class="custom-control-label medium main small pt-1" for="checkTask6">Nueva sección “Alta y bajas colaboradores”</label>
												</div>
												<span class="js-show-details hide hover-content-child smoth float-right pt-2 medium main smallest">Detalles <img src="/resources/assets/icons/generales/chev_right.svg"></span>
											</div>
											<div class="col-3 p-0 px-3 py-1 bl-gray">
												<span class="medium main small"></span>
											</div>
											<div class="col-3 p-0 px-3 py-1 bl-gray">
												<img class="w-30px rounded-circle border border-light shadow mr-3" src="/resources/assets/img/test/test_team_item_2.png">
												<span class="medium main small">Deysi Portillo</span>
											</div>
										</div>
										<div class="row m-0 w-100 bb-gray hover-bg-muted smoth">
											<div class="col-6 p-0 px-3 py-1 hover-show-child">
												<span class="gray medium small js-next-toggle">Agregar tarea</span>
												<div class="hide js-next-content custom-control custom-checkbox check-task custom-control-inline">
													<input type="checkbox" class="custom-control-input" id="checkTaskNew">
													<label class="custom-control-label medium main small pt-1" for="checkTaskNew"></label>
													<input class="input-clear border-0 small d-inline-block w-300px" type="" name="" placeholder="Escribe el nombre de la tarea…">
												</div>
											</div>

											<div>
												
											</div>

											<div class="col-3 p-0 px-3 py-1 bl-gray">
												
											</div>
											<div class="col-3 p-0 px-3 py-1 bl-gray">
												
											</div>
										</div>
									</div>
								</div>

							</div>
							<div class="h-800px tab-pane fade" id="nav-tablero" role="tabpanel" aria-labelledby="nav-tablero-tab">

 								<div class="row m-0">
 									<div class="col-3">
 										<div class="h6 semibold main pt-4">Portal P&uacute;blico <img class="float-right smoth" src="/resources/assets/icons/generales/add_muted.svg"></div>
 										<div class="card border b-gray rounded-lg px-3 py-2 p-0 mb-2">
 											<div class="card-body d-inline-block custom-control custom-checkbox check-task">
												<input type="checkbox" class="custom-control-input" id="hola">
												<label class="custom-control-label medium main small pt-1" for="hola">Generar propuesta de ecommerce</label>

											</div>
											<div class="card-footer bg-transparent border-0 p-0">
											   <img class="w-20px rounded-circle border border-light shadow" src="/resources/assets/img/test/test_team_item_2.png">
												<span class="small">14 Abril</span>
											</div>
 										</div>
										
										<div class="card border b-gray rounded-lg px-3 py-2 p-0 mb-2">
 											<div class="card-body d-inline-block custom-control custom-checkbox check-task">
												<input type="checkbox" class="custom-control-input" id="hola">
												<label class="custom-control-label medium main small pt-1" for="hola">Cambios en Nueva Oferta</label>

											</div>
											<div class="card-footer bg-transparent border-0 p-0">
											   <img class="w-20px rounded-circle border border-light shadow" src="/resources/assets/img/test/test_team_item_2.png">
												<span class="small">14 Abril</span>
											</div>
 										</div>
										<div class="d-flex flex-row justify-content-center alig-items-center">
										  <p class="small gray" id="tareasC" >Agregar Tarea</p>
										  
										</div>
										<div class="card border b-gray rounded-lg px-3 py-2 p-0 mb-2 d-none" id="addTarea">
 											<div class="card-body d-inline-block custom-control custom-checkbox check-task">
												<input type="checkbox" class="custom-control-input" id="hola">
												<label class="custom-control-label medium main small pt-1 semibold gray" for="hola">Escribe el nombre de la tarea</label>
											</div>
											<div class="card-footer bg-transparent border-0 p-0">
										       <img class="pr-2 w-20px rounded-circle border border-light"  src="/resources/assets/icons/tareas/persona.svg" id="usuario">
										        <img class="pr-2 w-20px rounded-circle border border-light" src="/resources/assets/icons/tareas/calendario.svg">
											</div>
											
 										</div>
										<div class="card border b-gray rounded-lg px-3 py-2 p-0 d-none" id="busquedaU">
 											<div class="card-body d-inline-block custom-control custom-checkbox check-task">
												<div class="group-form-fieldset smoth mb-1 small">
													<label class="js-mat-label">Responsable</label>
													<input class="js-mat-input w-50px dropdown-toggle" type="" name="nomProyecto" placeholder="" data-toggle="collapse" data-target="#collapseUsuarios" aria-expanded="false" aria-controls="collapseUsuarios">
	                                                 <div class="collapse show w-300px" id="collapseUsuarios">
													    <div class="card-footer bg-light  border-0 p-0">
														   <img class="w-20px rounded-circle border border-light shadow" src="/resources/assets/img/test/test_team_item_2.png">
															<span class="small semibold">Deisi Portilllo</span>
															<span class="gray small semibold">daisy.ronquillo@totalplay.com.mx</span>
														</div>
														<div class="card-footer  border-0 p-0">
														   <img class="w-10px rounded-circle border border-light shadow" src="/resources/assets/icons/tareas/add.svg">
															<span class="small semibold">Invita a tus compañeros de equipo por email</span>
														</div>
										             </div>
												</div>
												
												
											</div>
											
 										</div>
 									</div>
 									<div class="col-3">
 										<div class="h6 semibold main pt-4">Nuevos Negocios</div>
 										<div class="card border b-gray rounded-lg px-3 py-2 p-0 mb-2">
 											<div class="card-body d-inline-block custom-control custom-checkbox check-task">
												<input type="checkbox" class="custom-control-input" id="hola">
												<label class="custom-control-label medium main small pt-1" for="hola">Dashboard nuevos negocios</label>

											</div>
											<div class="card-footer bg-transparent border-0 p-0">
											   <img class="w-20px rounded-circle border border-light shadow" src="/resources/assets/img/test/test_team_item_2.png">
												<span class="small">14 Abril</span>
											</div>
 										</div>
										
										<div class="d-flex flex-row justify-content-center alig-items-center">
										  <p class="small gray">Agregar Tarea</p>
										</div>
 									</div>
 									<div class="col-3">
 										<div class="h6 semibold main pt-4">Total office</div>
 										<div class="card border b-gray rounded-lg px-3 py-2 p-0 mb-2">
 											<div class="card-body d-inline-block custom-control custom-checkbox check-task">
												<input type="checkbox" class="custom-control-input" id="hola">
												<label class="custom-control-label medium main small pt-1" for="hola">Nueva vista tablero</label>

											</div>
											<div class="card-footer bg-transparent border-0 p-0">
											   <img class="w-20px rounded-circle border border-light shadow" src="/resources/assets/img/test/test_team_item_2.png">
												<span class="small">14 Abril</span>
											</div>
 										</div>
										<div class="card border b-gray rounded-lg px-3 py-2 p-0 mb-2">
 											<div class="card-body d-inline-block custom-control custom-checkbox check-task">
												<input type="checkbox" class="custom-control-input" id="hola">
												<label class="custom-control-label medium main small pt-1" for="hola">Nueva secci&oacute;n Altas y bajas colaboradores</label>

											</div>
											<div class="card-footer bg-transparent border-0 p-0">
											   <img class="w-20px rounded-circle border border-light shadow" src="/resources/assets/img/test/test_team_item_2.png">
												<span class="small">14 Abril</span>
											</div>
											
 										</div>
										<div class="d-flex flex-row justify-content-center alig-items-center">
										  <p class="small gray">Agregar Tarea</p>
										  
										</div>
 									</div>
 								</div>

							</div>
							<div class="tab-pane fad
							e" id="nav-calendario" role="tabpanel" aria-labelledby="nav-calendario-tab">
								<div class="row">
								<div class="col-8">
								   <div class="card bg-transparent alig-items-center mt-2">
								     <img class="pt-1 w-500px" style="" src="/resources/assets/icons/generales/calendarioE.png">
								   </div>
								</div>
								<div class="col-4">
                                        <div class="card">
										  <div class="card-header bg-light">
											Mis Calendarios
										  </div>
										  <div class="card-body">
										    <img class="pt-1 w-30px" src="/resources/assets/icons/generales/sverde.png">
											<span class="small">Total Play</span>
											<br>
											<img class="pt-1 w-27px" src="/resources/assets/icons/generales/sazul.png">
											<span class="small">Tareas</span>
											<br>
											<img class="pt-1 w-30px" src="/resources/assets/icons/generales/smorado.png">
											<span class="small">Festivos en M&eacute;xico</span>
										  </div>
									     </div>
									  <div class="">
										  <div class="card bg-transparent alig-items-center mt-2">
												  <img class="pt-1 w-80" src="/resources/assets/icons/generales/calendarioP.png">
										  </div>
									  
									  </div>
								</div>
								</div>
							</div>
						</div>
					</div>
					
				</div> <!-- /col -->
			</div>	<!-- /row -->
		</div>	<!-- /container -->


		<div class="floating-elements">
			<img src="/resources/assets/icons/generales/chat.svg">
		</div>


		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="/resources/js/ajax-jquery-3.5.1.min.js"></script>
		<script src="/resources/js/bootstrap.bundle.min.js"></script>
		<script src="/resources/js/functions.js"></script>
		<script src="/resources/js/common/functionCommon.js"></script>
	</body>
</html>