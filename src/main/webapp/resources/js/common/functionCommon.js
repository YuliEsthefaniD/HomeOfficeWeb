// Logout
const logout = document.querySelector("#logout");
logout.addEventListener("click", (e) => {
		auth.signOut().then(() => {
		console.log("signup out");
		location = '/login/login';
		});
		 
});

