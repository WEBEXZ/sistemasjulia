var Vista = (function(){
	var _panelCamaras = function(numero){
		var section = document.querySelector("#paneCamera");
		for(var i = 0; i <= numero; i++){
			var div = document.createElement("div");
			section.appendChild(div);
		}
	};

	var _listarCamaras = function(){
		var select = document.querySelector("#setCamera");
		var arregloCamaras = [1,2,3,4,5,6]; //ÉSTO ES PARA EJEMPLIFICAR
		for(var i = 0; i < arregloCamaras.length; i++){
			var option = document.createElement("option");
			option.setAttribute("name", arregloCamaras[i]);
			option.textContent = arregloCamaras[i];
			select.appendChild(option);
		}
	};

	return {
		"listarCamaras": _listarCamaras,
		"panelCamaras": _panelCamaras
	};

})();
