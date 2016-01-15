--********************************************************************************
-- Prácticas de tecnología de la programación
-- Práctica de abstracción de datos y control ADA95
--
-- PClase.adb -> Especificación del paquete del tipo Clase
--
--********************************************************************************
with ada.text_io, ada.integer_text_io;
use ada.text_io, ada.integer_text_io;
--********************************************************************************
package body PClase is
	--****************************************************************************
	procedure PedirDatosClase (clase: out TClase) is
	begin
		put ("Introduzca el curso (1-5): "); get (Clase.Curso);
		put ("Introduzca la clase (5 caracteres): "); get (Clase.Clase);
		put ("Introduzca el Numero de alumnos (1-50): "); get (Clase.numAlums);

		put ("Introduzca el nombre del 1er representante (20 caracteres): "); 
		get (Clase.Representantes(1).Representante);
		put ("Introduzca el Numero de votos del 1er representante: "); 
		get (Clase.Representantes(1).NumVotos);

		put ("Introduzca el nombre del 2do representante (20 caracteres): "); 
		get (Clase.Representantes(2).Representante);
		put ("Introduzca el Numero de votos del 2do representante: "); 
		get (Clase.Representantes(2).NumVotos);
	exception
		when others => put ("Se introdujo un dato erroneo..."); new_line;
	end;
	--****************************************************************************
	procedure MostrarDatosClase (clase: in TClase) is
	begin
		put ("Curso:             "); put (Clase.Curso); new_line;
		put ("Clase:             "); put (Clase.Clase); new_line;
		put ("Numero de alumnos: "); put (Clase.numAlums); new_line;
 		new_line;
		put ("Nombre del 1er representante:          "); 
		put (Clase.Representantes(1).Representante); new_line;
		put ("Numero de votos del 1er representante: "); 
		put (Clase.Representantes(1).NumVotos); new_line;
 		new_line;
		put ("Nombre del 2do representante:          "); 
		put (Clase.Representantes(2).Representante); new_line;
		put ("Numero de votos del 2do representante: "); 
		put (Clase.Representantes(2).NumVotos); new_line;
		new_line; new_line; new_line;
	end;
	--****************************************************************************
	function ">" (a, b: in TClase) return boolean is
		i: positive;
	begin
		if a.curso > B.Curso then
			return true;
		elsif a.curso = B.Curso then
			for i in 1..5 loop
				if (a.clase(i) > b.clase(i)) then
					return true;
				elsif (a.clase(i) < b.clase(i)) then
					return false;
				end if;
			end loop;

			return false;
		else
			return false;
		end if;
	end;
	--****************************************************************************
	function IgualClase (X: in TClase; Cad: in TCadClase) return Boolean is
		i: positive;
	begin
		for i in 1..5 loop
			if X.Clase(i) /= Cad(i) then
				return false;
			end if;
		end loop;
		return true;
	end;
	--****************************************************************************
	function DarClase (x: in TClase) return TCadClase is
		i: positive;
		C: TCadClase;
	begin
		for i in 1..5 loop
			C(i) := X.Clase(i);
		end loop;
		return C;
	end;
	--****************************************************************************
	function MayorPorClases (a, b: in TClase) return boolean is
		i: positive;
	begin
		for i in 1..5 loop
			if (a.clase(i) > b.clase(i)) then
				return true;
			elsif (a.clase(i) < b.clase(i)) then
				return false;
			end if;
		end loop;

		--Si llega aquí es por que ambas cadenas han sido iguales.
		if (a.Representantes(1).NumVotos > b.Representantes(1).NumVotos) and
		   (a.Representantes(1).NumVotos > b.Representantes(2).NumVotos) then
		   return true;
		elsif (a.Representantes(2).NumVotos > b.Representantes(1).NumVotos) and
		      (a.Representantes(2).NumVotos > b.Representantes(2).NumVotos) then
		   return true;
   		else
	   		return false;
		end if;
	end;
	--****************************************************************************
	function MayorPorCursos (a, b: in TClase) return boolean is
	begin
		if a.curso > B.Curso then
			return true;
		elsif a.curso = B.Curso then
			if (a.Representantes(1).NumVotos > b.Representantes(1).NumVotos) and
			   (a.Representantes(1).NumVotos > b.Representantes(2).NumVotos) then
			   return true;
			elsif (a.Representantes(2).NumVotos > b.Representantes(1).NumVotos) and
			      (a.Representantes(2).NumVotos > b.Representantes(2).NumVotos) then
			   return true;
	   		else
		   		return false;
			end if;
		else
			return false;
		end if;
	end;
	--****************************************************************************
	function MayorPorTotal  (a, b: in TClase) return boolean is
	begin
		if (a.Representantes(1).NumVotos > b.Representantes(1).NumVotos) and
		   (a.Representantes(1).NumVotos > b.Representantes(2).NumVotos) then
		   return true;
		elsif (a.Representantes(2).NumVotos > b.Representantes(1).NumVotos) and
		      (a.Representantes(2).NumVotos > b.Representantes(2).NumVotos) then
		   return true;
   		else
	   		return false;
		end if;
	end;
	--****************************************************************************
end;
--********************************************************************************
