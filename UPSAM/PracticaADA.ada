--********************************************************************************
-- Prácticas de tecnología de la programación
-- Práctica de abstracción de datos y control ADA95
--
-- PracticaADA.ada -> Módulo principal del programa
--
--********************************************************************************
with ada.text_io, ada.integer_text_io, PlistaPunt, PClase;
use ada.text_io, ada.integer_text_io;
--********************************************************************************
procedure main is
	--Paquetes derivados asesinos
	package LPClases is new PListaPunt (PClase.TClase, PClase.TCadClase,
										PClase.">", PClase.IgualClase, PClase.DarClase);

	package LPClasesOrdClases is new PListaPunt (PClase.TClase, PClase.TCadClase,
										         PClase.MayorPorClases, PClase.IgualClase,
                                                 PClase.DarClase);
	package LPClasesOrdCursos is new PListaPunt (PClase.TClase, PClase.TCadClase,
									             PClase.MayorPorCursos, PClase.IgualClase,
                                                 PClase.DarClase);
	package LPClasesOrdTotal is new PListaPunt (PClase.TClase, PClase.TCadClase,
										        PClase.MayorPorTotal, PClase.IgualClase,
                                                PClase.DarClase);

	--Datos para el infarto
	ListaClases: LPClases.TLista;
--********************************************************************************
--Rutinas del Main
--********************************************************************************
	procedure Pausa is
		P: character;
	begin
		Put ("Pulse enter para continuar...");
		Get_Immediate (p); new_line; new_line;
	end;
--********************************************************************************
	Procedure MeterDatosAutomaticamente is
		Elem: PClase.TClase;
	begin
		--Mira es que meterlos a mano, como que es un plomazo
		ListaClases := null;

		--****************************************************************************
		Elem.Curso := 1; Elem.Clase := "FM-11"; Elem.numAlums := 40;
		Elem.Representantes(1).Representante := "Akane Tendo         ";
		Elem.Representantes(1).NumVotos := 25;
		Elem.Representantes(2).Representante := "Ukyo Kuonji         ";
		Elem.Representantes(2).NumVotos := 15;

		LPClases.MeterNodo (ListaClases, Elem);
		--****************************************************************************

		--****************************************************************************
		Elem.Curso := 3; Elem.Clase := "FM-31"; Elem.numAlums := 50;
		Elem.Representantes(1).Representante := "Ranma Saotome       ";
		Elem.Representantes(1).NumVotos := 20;
		Elem.Representantes(2).Representante := "Ryoga Hibiki        ";
		Elem.Representantes(2).NumVotos := 10;

		LPClases.MeterNodo (ListaClases, Elem);
		--****************************************************************************

		--****************************************************************************
		Elem.Curso := 2; Elem.Clase := "FT-21"; Elem.numAlums := 30;
		Elem.Representantes(1).Representante := "Mutsumi Otohime     ";
		Elem.Representantes(1).NumVotos := 20;
		Elem.Representantes(2).Representante := "Ran Kotobuki        ";
		Elem.Representantes(2).NumVotos := 10;

		LPClases.MeterNodo (ListaClases, Elem);
		--****************************************************************************

		--****************************************************************************
		Elem.Curso := 3; Elem.Clase := "FT-31"; Elem.numAlums := 40;
		Elem.Representantes(1).Representante := "Lobezno             ";
		Elem.Representantes(1).NumVotos := 30;
		Elem.Representantes(2).Representante := "Kintaro Oe          ";
		Elem.Representantes(2).NumVotos := 10;

		LPClases.MeterNodo (ListaClases, Elem);
		--****************************************************************************

		--****************************************************************************
		Elem.Curso := 3; Elem.Clase := "FM-33"; Elem.numAlums := 50;
		Elem.Representantes(1).Representante := "Spiderman           ";
		Elem.Representantes(1).NumVotos := 40;
		Elem.Representantes(2).Representante := "Indiana Jones       ";
		Elem.Representantes(2).NumVotos := 10;

		LPClases.MeterNodo (ListaClases, Elem);
		--****************************************************************************

		--****************************************************************************
		Elem.Curso := 2; Elem.Clase := "FM-22"; Elem.numAlums := 50;
		Elem.Representantes(1).Representante := "Daredevil           ";
		Elem.Representantes(1).NumVotos := 30;
		Elem.Representantes(2).Representante := "Han Solo            ";
		Elem.Representantes(2).NumVotos := 20;

		LPClases.MeterNodo (ListaClases, Elem);
		--****************************************************************************

		--****************************************************************************
		Elem.Curso := 2; Elem.Clase := "FM-23"; Elem.numAlums := 50;
		Elem.Representantes(1).Representante := "Naru Narusegawa     ";
		Elem.Representantes(1).NumVotos := 15;
		Elem.Representantes(2).Representante := "Keitaro Urashima    ";
		Elem.Representantes(2).NumVotos := 10;

		LPClases.MeterNodo (ListaClases, Elem);
		--****************************************************************************

		--****************************************************************************
		Elem.Curso := 1; Elem.Clase := "FT-12"; Elem.numAlums := 20;
		Elem.Representantes(1).Representante := "Akira Kurosawa      ";
		Elem.Representantes(1).NumVotos := 15;
		Elem.Representantes(2).Representante := "Takeshi Kitano      ";
		Elem.Representantes(2).NumVotos := 5;

		LPClases.MeterNodo (ListaClases, Elem);
		--****************************************************************************

		--****************************************************************************
		Elem.Curso := 1; Elem.Clase := "FT-11"; Elem.numAlums := 30;
		Elem.Representantes(1).Representante := "Obi-wan Kenobi      ";
		Elem.Representantes(1).NumVotos := 16;
		Elem.Representantes(2).Representante := "Motoko Kusanagi     ";
		Elem.Representantes(2).NumVotos := 14;

		LPClases.MeterNodo (ListaClases, Elem);
		--****************************************************************************

		--****************************************************************************
		Elem.Curso := 3; Elem.Clase := "FM-32"; Elem.numAlums := 40;
		Elem.Representantes(1).Representante := "Mr. Spock           ";
		Elem.Representantes(1).NumVotos := 20;
		Elem.Representantes(2).Representante := "Darth Vader         ";
		Elem.Representantes(2).NumVotos := 10;

		LPClases.MeterNodo (ListaClases, Elem);
		--****************************************************************************

		--Y finalmente a ordenarlo
		LPClases.Ordenar (ListaClases);
	end;
--********************************************************************************
	procedure MostrarLista is
		Aux: LPClases.TLista;
		Elem: PClase.TClase;
	begin
		Aux := ListaClases;

		while LPClases.NoVacia (Aux) loop
			Elem := aux.elemento.all;
			PClase.MostrarDatosClase (Elem);
			aux := aux.siguiente;
		end loop;

		Pausa;
	end;

	procedure MostrarListaOrdClases (Lista: in LPClasesOrdClases.TLista) is
		Aux: LPClasesOrdClases.TLista;
		Elem: PClase.TClase;
	begin
		Aux := Lista;

		while LPClasesOrdClases.NoVacia (Aux) loop
			Elem := aux.elemento.all;
			PClase.MostrarDatosClase (Elem);
			aux := aux.siguiente;
		end loop;

		Pausa;
	end;

	procedure MostrarListaOrdCursos (Lista: in LPClasesOrdCursos.TLista) is
		Aux: LPClasesOrdCursos.TLista;
		Elem: PClase.TClase;
	begin
		Aux := Lista;

		while LPClasesOrdCursos.NoVacia (Aux) loop
			Elem := aux.elemento.all;
			PClase.MostrarDatosClase (Elem);
			aux := aux.siguiente;
		end loop;

		Pausa;
	end;

	procedure MostrarListaOrdTotal (Lista: in LPClasesOrdTotal.TLista) is
		Aux: LPClasesOrdTotal.TLista;
		Elem: PClase.TClase;
	begin
		Aux := Lista;

		while LPClasesOrdTotal.NoVacia (Aux) loop
			Elem := aux.elemento.all;
			PClase.MostrarDatosClase (Elem);
			aux := aux.siguiente;
		end loop;

		Pausa;
	end;
--********************************************************************************
	procedure PorcentajeVotacion is
		Aux: LPClases.TLista;
		Elem: PClase.TClase;
		Porc: Positive;
	begin
		Aux := ListaClases;
		
		while LPClases.NoVacia (aux) loop
			Elem := Aux.Elemento.all;
			PClase.MostrarDatosClase (Elem);

			Porc := Elem.Representantes(1).NumVotos * 100 / elem.NumAlums;
			put ("Porcentaje 1er representante: "); Put (Porc); new_line; new_line;

			Porc := Elem.Representantes(2).NumVotos * 100 / elem.NumAlums;
			put ("Porcentaje 2do representante: "); Put (Porc); new_line; new_line;
			pausa;

			Aux := Aux.Siguiente;
		end loop;
    end;
--********************************************************************************
	procedure CopiarOrdCursos (Lista: out LPClasesOrdClases.TLista;
							   ListaOrigen: in LPClases.TLista) is
		aux: LPClases.TLista;
		Elem: PClase.TClase;
	begin
		--Aux toma el primer elemento de la lista a copiar
		aux := ListaOrigen;
		--Lista se inicializa
		Lista := null;

		--Mientras haya elementos en la lista a copiar
		while LPClases.NoVacia (aux) loop
			--Cargamos en Elem el elemento del nodo
			elem := aux.elemento.all;
			--Y metemos un nuevo nodo a Lista
			LPClasesOrdClases.meterNodo (Lista, Elem);
			--Pasamos al siguiente nodo
			aux := aux.siguiente;
		end loop;
	end;

	procedure ClasificarPorClases is
		ListaOrdClases: LPClasesOrdClases.TLista;
	begin
		CopiarOrdCursos (ListaOrdClases, ListaClases);
		LPClasesOrdClases.Ordenar (ListaOrdClases);
		MostrarListaOrdClases (ListaOrdClases);
	end;
--********************************************************************************
	procedure CopiarOrdCursos (Lista: out LPClasesOrdCursos.TLista;
							   ListaOrigen: in LPClases.TLista) is
		aux: LPClases.TLista;
		Elem: PClase.TClase;
	begin
		--Aux toma el primer elemento de la lista a copiar
		aux := ListaOrigen;
		--Lista se inicializa
		Lista := null;

		--Mientras haya elementos en la lista a copiar
		while LPClases.NoVacia (aux) loop
			--Cargamos en Elem el elemento del nodo
			elem := aux.elemento.all;
			--Y metemos un nuevo nodo a Lista
			LPClasesOrdCursos.meterNodo (Lista, Elem);
			--Pasamos al siguiente nodo
			aux := aux.siguiente;
		end loop;
	end;

	procedure ClasificarPorCursos is
		ListaOrdCursos: LPClasesOrdCursos.TLista;
	begin
		CopiarOrdCursos (ListaOrdCursos, ListaClases);
		LPClasesOrdCursos.Ordenar (ListaOrdCursos);
		MostrarListaOrdCursos (ListaOrdCursos);
	end;
--********************************************************************************
	procedure CopiarOrdTotal (Lista: out LPClasesOrdTotal.TLista;
							  ListaOrigen: in LPClases.TLista) is
		aux: LPClases.TLista;
		Elem: PClase.TClase;
	begin
		--Aux toma el primer elemento de la lista a copiar
		aux := ListaOrigen;
		--Lista se inicializa
		Lista := null;

		--Mientras haya elementos en la lista a copiar
		while LPClases.NoVacia (aux) loop
			--Cargamos en Elem el elemento del nodo
			elem := aux.elemento.all;
			--Y metemos un nuevo nodo a Lista
			LPClasesOrdTotal.meterNodo (Lista, Elem);
			--Pasamos al siguiente nodo
			aux := aux.siguiente;
		end loop;
	end;

	procedure ClasificarPorTotal is
		ListaOrdTotal: LPClasesOrdTotal.TLista;
	begin
		CopiarOrdTotal (ListaOrdTotal, ListaClases);
		LPClasesOrdTotal.Ordenar (ListaOrdTotal);
		MostrarListaOrdTotal (ListaOrdTotal);
	end;
--********************************************************************************
	procedure RepresentantesMasVotados is
		RAux: PClase.TRepresentante;
		ElMas: PClase.TRepresentante;
		ElMasCurso: PClase.TRepresentante;
		Elem: PClase.TClase;
		Aux: LPClases.TLista;
		Curso: positive range 1..5;

		function DarRepresentante (Clase: PClase.TClase) return PClase.TRepresentante is
		begin
			if Clase.Representantes(2).NumVotos > Clase.Representantes(1).NumVotos then
				return Clase.Representantes(2);
			else
				return Clase.Representantes(1);
			end if;
		end;
	begin
		if LPClases.NoVacia (ListaClases) then
			Aux := ListaClases;

			Elem := Aux.Elemento.all;
			ElMas := DarRepresentante (Elem);

			while LPClases.NoVacia (aux) loop
				Curso := Elem.Curso;
				RAux := DarRepresentante (Elem);
				ElMasCurso := RAux;
				if ElMas.NumVotos < RAux.NumVotos then
					ElMas := RAux;
				end if;
			
				--Buscamos el mayor del curso
				aux := aux.siguiente;
				if LPClases.NoVacia (aux) then
					Elem := Aux.Elemento.all;
				end if;

				while (elem.curso = curso) and LPClases.NoVacia (aux) loop
					RAux := DarRepresentante (Elem);

					if ElMasCurso.NumVotos < RAux.NumVotos then
						ElMasCurso := RAux;
					end if;

					if ElMas.NumVotos < RAux.NumVotos then
						ElMas := RAux;
					end if;
					
					aux := aux.siguiente;
					if LPClases.NoVacia (aux) then
						Elem := Aux.Elemento.all;
					end if;
				end loop;
	
				--Mostramos el más votado del curso
				put ("El mas votado del curso: "); put (Curso); new_line;
				put ("Nombre del representante: "); put (ElMasCurso.Representante); new_line;
				put ("Numero de votos:          "); put (ElMasCurso.NumVotos); new_line;
				Pausa;
			end loop;
	
			--Mostramos el más votado
			put ("El mas votado de la universidad."); new_line;
			put ("Nombre del representante: "); put (ElMas.Representante); new_line;
			put ("Numero de votos:          "); put (ElMas.NumVotos); new_line;
			Pausa;
		end if;
	end;
--********************************************************************************
--Código principal del Main
--********************************************************************************
begin
	MeterDatosAutomaticamente;
	MostrarLista;

	PorcentajeVotacion;

	ClasificarPorClases;
	ClasificarPorCursos;
	ClasificarPorTotal;

	RepresentantesMasVotados;
end;
--********************************************************************************
