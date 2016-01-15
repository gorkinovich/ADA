--********************************************************************************
-- Prácticas de tecnología de la programación
-- Práctica de abstracción de datos y control ADA95
--
-- PClase.ads -> Cabecera del paquete del tipo Clase
--
--********************************************************************************
package PClase is
	--****************************************************************************
	--Tipos de datos
	--****************************************************************************
	type TRepresentante is record
		Representante : string (1..20);
		NumVotos      : positive;
	end record;

	type TRepresentantes is array (1..2) of TRepresentante;

	type TCadClase is new string (1..5);

	type TClase is record
		Curso          : positive range 1..5;
		Clase          : string (1..5);
		NumAlums       : positive range 1..50;
		Representantes : TRepresentantes;
	end record;

	--****************************************************************************
	--Rutinas para los tipos de datos
	--****************************************************************************
	procedure PedirDatosClase   (clase: out TClase);
	procedure MostrarDatosClase (clase: in TClase);
	function  ">"               (a, b: in TClase) return boolean;
	function  IgualClase        (X: in TClase; Cad: in TCadClase) return Boolean;
	function  DarClase          (x: in TClase) return TCadClase;
	
	function  MayorPorClases (a, b: in TClase) return boolean;
	function  MayorPorCursos (a, b: in TClase) return boolean;
	function  MayorPorTotal  (a, b: in TClase) return boolean;
end;
--********************************************************************************
