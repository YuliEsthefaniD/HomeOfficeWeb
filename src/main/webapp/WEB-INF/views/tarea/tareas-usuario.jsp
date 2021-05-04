<!doctype html>
<html lang="es">
	<head>
		<!-- Required meta tags -->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- Bootstrap CSS -->
				<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
		
		<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="/resources/css/styleP.css">
		<link rel="stylesheet" type="text/css" href="/resources/css/style.css">
        <link rel="stylesheet" type="text/css" href="/resources/css/styleCalendar.css">
		<link rel="icon" type="image/png" href="/resources/assets/icons/favicon.svg">
        <link rel="stylesheet" type="text/css" href="/resources/css/styleCalendar2.css">

        <!--  Date Picker -->
         <!-- Include Bootstrap Datepicker -->
	     <link rel="stylesheet" type="text/css" href="/resources/css/datepicker/bootstrap-datepicker.css">
	               
 	
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
						<span class="js-nav-desc ml-2 medium main">Vista general</span>
					</a>

					<a href="../proyecto/proyectos" class="sidenav-item no-link d-block position-relative px-3 py-4">
						<img class="icon-sidenav-item hide" src="/resources/assets/icons/sidenav/proyectos_active.svg">
						<img class="icon-sidenav-item" src="/resources/assets/icons/sidenav/proyectos.svg">
						<span class="js-nav-desc ml-2 medium main">Proyectos</span><span class="text-white bg-red small rounded-pill px-2 float-right medium">132</span>
					</a>

					<a href="../colaborador/colaboradores" class="sidenav-item no-link d-block position-relative px-3 py-4">
						<img class="icon-sidenav-item hide" src="/resources/assets/icons/sidenav/colaboradores_active.svg">
						<img class="icon-sidenav-item" src="/resources/assets/icons/sidenav/colaboradores.svg">
						<span class="js-nav-desc ml-2 medium main">Colaboradores</span>
					</a>

					<a href="../tareas/tareas-usuario" class="sidenav-item no-link d-block position-relative px-3 py-4 component-active">
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
													<input class="input-clear border-0 small d-inline-block w-300px" type="" name="" placeholder="Escribe el nombre de la tarea‚Ä¶">
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
													<input class="input-clear border-0 small d-inline-block w-300px" type="" name="" placeholder="Escribe el nombre de la tarea‚Ä¶">
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
													<label class="custom-control-label medium main small pt-1" for="checkTask5">Nueva vista ‚ÄúTablero‚Äù</label>
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
													<label class="custom-control-label medium main small pt-1" for="checkTask6">Nueva secci√≥n ‚ÄúAlta y bajas colaboradores‚Äù</label>
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
													<input class="input-clear border-0 small d-inline-block w-300px" type="" name="" placeholder="Escribe el nombre de la tarea‚Ä¶">
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
															<span class="small semibold">Invita a tus compa√±eros de equipo por email</span>
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
								   <div class="container card bg-transparent alig-items-center mt-2">
								    <div id="holder" class="row" ></div>
								     <script type="text/template" charset="UTF-8" id="tmpl">
										  {{ 
										  var date = date || new Date(),
										      month = date.getMonth(), 
										      year = date.getFullYear(), 
										      first = new Date(year, month, 1), 
										      last = new Date(year, month + 1, 0),
										      startingDay = first.getDay(), 
										      thedate = new Date(year, month, 1 - startingDay),
										      dayclass = lastmonthcss,
										      today = new Date(),
										      i, j; 
										  if (mode === 'week') {
										    thedate = new Date(date);
										    thedate.setDate(date.getDate() - date.getDay());
										    first = new Date(thedate);
										    last = new Date(thedate);
										    last.setDate(last.getDate()+6);
										  } else if (mode === 'day') {
										    thedate = new Date(date);
										    first = new Date(thedate);
										    last = new Date(thedate);
										    last.setDate(thedate.getDate() + 1);
										  }
										  
										  }}
										  <table class="calendar-table table table-condensed table-tight table-responsive">
										    <thead>
										      <tr>
										        <td colspan="7" style="text-align: center">
										          <table style="white-space: nowrap; width: 100%">
										            <tr>
										              <td style="text-align: left;">
										                <span class="btn-group">
										                  <button class="js-cal-prev btn btn-default color-blue" style="color: #509aff;">&#10094;</button>
										                  <span class="btn-group btn-group-lg">
										                    {{ if (mode !== 'day') { }}
										                      {{ if (mode === 'month') { }}<button class="js-cal-option btn " data-mode="year"><strong>{{: months[month] }}</strong></button>{{ } }}
										                      {{ if (mode ==='week') { }}
										                        <button class="btn disabled"><strong>{{: shortMonths[first.getMonth()] }} {{: first.getDate() }} - {{: shortMonths[last.getMonth()] }} {{: last.getDate() }}</strong></button>
										                      {{ } }}
										                      <button class="js-cal-years btn "><strong>{{: year}}</strong></button> 
										                    {{ } else { }}
										                      <button class="btn btn-link disabled"><strong>{{: date.toDateString() }}</strong></button> 
										                    {{ } }}
										                  </span>
										                  <button class="js-cal-next btn btn-default color-blue" style="color: #509aff;">&#10095;</button>
										                </span>
										                <button class="js-cal-option btn btn-default {{: first.toDateInt() <= today.toDateInt() && today.toDateInt() <= last.toDateInt() ? 'active':'' }}" data-date="{{: today.toISOString()}}" data-mode="month">{{: todayname }}</button>
										              </td>
										              <td style="text-align: right">
										                <span class="btn-group">
										                  <button class="rounded-pill btn btn-outline-primary medium p-2 py-0 d-inline-block js-cal-option {{: mode==='year'? 'active':'' }}" data-mode="year">AÒo</button>
										                  <button class="rounded-pill btn btn-outline-primary medium p-2 py-0 d-inline-block js-cal-option {{: mode==='month'? 'active':'' }}" data-mode="month">Mes</button>
										                  <button class="rounded-pill btn btn-outline-primary medium p-2 py-0 d-inline-block js-cal-option js-cal-option {{: mode==='week'? 'active':'' }}" data-mode="week">Semana</button>
										                  <button class="rounded-pill btn btn-outline-primary medium p-2 py-0 d-inline-block js-cal-option js-cal-option btn btn-default {{: mode==='day'? 'active':'' }}" data-mode="day">Dia</button>
										                </span>
										                
										              </td>
										             <td>
										               <div class="rounded-pill btn btn-outline-primary medium pl-3 pr-3 p-2 py-0 d-inline-block">
										                  <i class="fas fa-calendar-day"></i>
											              <span class="d-inline-block align-middle semibold small" data-toggle="modal" data-target="#modalNuevoEvento">Crear Evento</span>
										               </div>
										             </td>
										            </tr>
										          </table>
										          
										        </td>
										      </tr>
										    </thead>
										    {{ if (mode ==='year') {
										      month = 0;
										    }}
										    <tbody>
										      {{ for (j = 0; j < 3; j++) { }}
										      <tr>
										        {{ for (i = 0; i < 4; i++) { }}
										        <td class="border calendar-month month-{{:month}} js-cal-option" data-date="{{: new Date(year, month, 1).toISOString() }}" data-mode="month" data-toggle="modal" data-target="#modalNuevoEvento">
										          {{: months[month] }}
										          {{ month++;}}
										        </td>
										        {{ } }}
										      </tr>
										      {{ } }}
										    </tbody>
										    {{ } }}
										    {{ if (mode ==='month' || mode ==='week') { }}
										    <thead>
										      <tr class="c-weeks">
										        {{ for (i = 0; i < 7; i++) { }}
										          <th class="c-name">
										            {{: days[i] }}
										          </th>
										        {{ } }}
										      </tr>
										    </thead>
										    <tbody>
										      {{ for (j = 0; j < 6 && (j < 1 || mode === 'month'); j++) { }}
										      <tr>
										        {{ for (i = 0; i < 7; i++) { }}
										        {{ if (thedate > last) { dayclass = nextmonthcss; } else if (thedate >= first) { dayclass = thismonthcss; } }}
										        <td class="border calendar-day {{: dayclass }} {{: thedate.toDateCssClass() }} {{: date.toDateCssClass() === thedate.toDateCssClass() ? 'selected':'' }} {{: daycss[i] }} js-cal-option" data-date="{{: thedate.toISOString() }}" data-toggle="modal" data-target="#modalNuevoEvento">
										          <div class="date" style="text-align:right">{{: thedate.getDate() }}</div>
										          {{ thedate.setDate(thedate.getDate() + 1);}}
										        </td>
										        {{ } }}
										      </tr>
										      {{ } }}
										    </tbody>
										    {{ } }}
										    {{ if (mode ==='day') { }}
										    <tbody>
										      <tr>
										        <td colspan="7">
										          <table class="table table-striped table-condensed table-tight-vert" >
										            <thead>
										              <tr>
										                <th>†</th>
										                <th style="text-align: center; width: 100%">{{: days[date.getDay()] }}</th>
										              </tr>
										            </thead>
										            <tbody>
										              <tr>
										                <th class="timetitle" >Todo el Dia</th>
										                <td class="{{: date.toDateCssClass() }}">  </td>
										              </tr>
										              <tr>
										                <th class="timetitle" >Antes 6 AM</th>
										                <td class="time-0-0"> </td>
										              </tr>
										              {{for (i = 6; i < 22; i++) { }}
										              <tr>
										                <th class="timetitle" >{{: i <= 12 ? i : i - 12 }} {{: i < 12 ? "AM" : "PM"}}</th>
										                <td class="time-{{: i}}-0"> </td>
										              </tr>
										              <tr>
										                <th class="timetitle" >{{: i <= 12 ? i : i - 12 }}:30 {{: i < 12 ? "AM" : "PM"}}</th>
										                <td class="time-{{: i}}-30"> </td>
										              </tr>
										              {{ } }}
										              <tr>
										                <th class="timetitle" >Despues 10 PM</th>
										                <td class="time-22-0"> </td>
										              </tr>
										            </tbody>
										          </table>
										        </td>
										      </tr>
										    </tbody>
										    {{ } }}
										  </table>

	</script>
								   </div>
								</div>
								<div class="col-4 h-80">
                                        <div class="card " style="height:400px">
										  <div class="card-header bg-light">
											Mis Calendarios
										  </div>
										  <div class="card-body">
										       <label class="container-checkbox checkbox-green">TotalPlay
												  <input type="checkbox" checked="checked">
												  <span class="checkmark"></span>
												</label>
												<label class="container-checkbox checkbox-pink">Tareas
												  <input type="checkbox" checked="checked">
												  <span class="checkmark"></span>
												</label>
												<label class="container-checkbox checkbox-blue">Festivos de M&eacute;xico
												  <input type="checkbox" checked="checked">
												  <span class="checkmark"></span>
												</label>
										  </div>
									     </div>
									  <div class="">
										  <div class="card bg-transparent alig-items-center mt-2">
												  <div class="calendar">
													    <div class="calendar__info">
													        <div class="calendar__prev" id="prev-month">&#10094;</div>
													        <div class="calendar__month" id="month"></div>
													        <div class="calendar__year" id="year"></div>
													        <div class="calendar__next" id="next-month">&#10095;</div>
													    </div>
													
													    <div class="calendar__week">
													        <div class="calendar__day calendar__item">Dom</div>
													        <div class="calendar__day calendar__item">Lun</div>
													        <div class="calendar__day calendar__item">Mar</div>
													        <div class="calendar__day calendar__item">Mie</div>
													        <div class="calendar__day calendar__item">Jue</div>
													        <div class="calendar__day calendar__item">Vie</div>
													        <div class="calendar__day calendar__item">Sab</div>
													    </div>
													
													    <div class="calendar__dates" id="dates"></div>
												   </div>
										  </div>
									  
									  </div>
								</div>
								</div>
							</div>
						</div>
					</div>
					
				</div> <!-- /col -->
			</div>	<!-- /row -->
        <!-- Modal: Nuevo Evento-->
		<div class="modal" id="modalNuevoEvento"   tabindex="-1" aria-labelledby="modalNuevoEvento" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-lg" style="width:510px;">
				<div class="modal-content border-0 px-2">
					<div class="modal-header">
						<h5 class="modal-title semibold main" id="modalEditarProyectoLabel">Crear Evento</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true"><img src="/resources/assets/icons/generales/close.svg"></span>
						</button>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-12">
							   <div class="row m-0">
									<div class="col p-0">
										<div class="group-form-fieldset smoth mb-3">
											<label for="staticEmail" class="col-sm-2 col-form-label">Fecha</label>
							               <input type='text' class="js-mat-input form-control" id='datetimepicker4' />
										</div>	
									</div>
									<div class="col p-0 pl-4">
										<div class="group-form-fieldset smoth mb-3">
											<label for="staticEmail" class="col-sm-2 col-form-label">Fecha</label>
							         <input type='text' class="js-mat-input form-control" id='datetimepicker5' />	
										</div>	
									</div>
								</div>
								<script type="text/javascript">
							         $(function () {
							             $('#datetimepicker4').datepicker({
							            	 format: 'yyyy-mm-dd'
								             });
							             $('#datetimepicker5').datepicker({
							            	 format: 'yyyy-mm-dd'
								             });
							         });
							      </script>
								<div class="group-form-fieldset smoth mb-3">
									<input class="js-mat-input" type="" name="titleEvent" placeholder="AÒade un titulo">
								</div>
								<div class="group-form-fieldset smoth mb-3">
									<input class="js-mat-input" type="" name="titleEvent" placeholder="AÒade Invitados">
									
								</div>
								<div class="group-form-fieldset smoth mb-3">
								    <span><img src="/resources/assets/icons/generales/meet.png"></span>
	                                <button class="btn btn-primary">AÒadir video llamada con Meet</button>
							    </div>
								<div class="group-form-fieldset smoth mb-3">
									<input class="js-mat-input" type="" name="titleEvent" placeholder="AÒade una descripci&oacute;n">
								</div>
								<div class="form-group row">
	                                <label for="staticEmail" class="col-sm-2 col-form-label small gray">Calendario</label>
								    <div class="col-sm-8">
                                      <span class="medium main"><span class="pointer-red rounded-circle d-inline-block mr-2"></span>Totalplay</span>								    
                                    </div>
							    </div>
							    <div class="form-group row">
								    <label for="staticEmail" class="col-sm-2 col-form-label small gray">Proyecto</label>
								    <div class="col-sm-10">
								      <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="TP- Totalplay Bank">
								    </div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<span class="blue semibold btn" data-dismiss="modal">Cancelar</span>
						<span class="btn btn-primary bg-blue rounded-pill" data-dismiss="modal">Crear Evento</span>
					</div>
				</div>
			</div>
		</div>
<!-- /Modal: Nuevo Evento  -->
		</div>	<!-- /container -->


		<div class="floating-elements">
			<img src="/resources/assets/icons/generales/chat.svg">
		</div>

		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="/resources/js/ajax-jquery-3.5.1.min.js"></script>
		<script src="/resources/js/bootstrap.bundle.min.js"></script>
		<script src="/resources/js/functions.js"></script>
		<script src="/resources/js/common/functionCalendar2.js"></script>
		<script src="/resources/js/common/functionCalendar.js"></script>
		<script src="/resources/js/bootstrap-datepicker.js"></script>
        
   </body>
</html>