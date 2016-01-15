--********************************************************************************
-- Prácticas de tecnología de la programación
-- Práctica de abstracción de datos y control ADA95
--
-- ListaPunt.adb -> Especificación del paquete del tipo Lista de Punteros
--
--********************************************************************************
package body PListaPunt is
	--****************************************************************************
	procedure Inicializar (Lista: in out TLista) is
		aux, Victima: TLista;
	begin
		--Incializamos los datos	
		Aux := Lista;
		Lista := null;

		--Mientras Aux tenga datos
		while aux /= null loop
			--Seleccionamos la víctima a borrar
			Victima := Aux;
			--Aux pasa a apuntar al siguiente
			Aux := Aux.Siguiente;
			--Borramos el elemento
			liberarElemento (Victima.Elemento);
			--Borramos el nodo
			liberarNodo (Victima);
		end loop;
	end;
	--****************************************************************************
	procedure MeterNodo (Lista: in out TLista; Elem: in TElemento) is
		aux: TLista;
	begin
		--Si la lista está vacía
		if Lista = null then
			--Creamos el nodo
			Lista := new TNodo;
			--Creamos el espacio del elemento
			Lista.Elemento := new TElemento;
			--Cargamos el elemento
			Lista.Elemento.all := Elem;
			--Y el siguiente apunta a null
			lista.siguiente := null;
		else
			--Aux toma el primer valor
			aux := Lista;

			--Buscamos el último nodo
			while aux.siguiente /= null loop
				aux := aux.siguiente;
			end loop;

			--Creamos el siguiente nodo
			Aux.siguiente := new TNodo;
			--Situamos Aux en dicho nodo
			aux := aux.siguiente;
			--Creamos el espacio del elemento
			aux.Elemento := new TElemento;
			--Cargamos el elemento
			aux.Elemento.all := Elem;
			--Y el siguiente apunta a null
			aux.siguiente := null;
		end if;
	end;
	--****************************************************************************
	procedure DarNodo (Lista: in out TLista; CadBus: in TCampoIndex; Elem: out TElemento) is
		aux: TLista;
	begin
		--Aux toma el primer valor
		aux := Lista;

		--Mientras haya elementos en la lista
		while aux /= null loop
			--Si son iguales la cadena de busqueda y el dato ha sido encontrado
			if igual (aux.Elemento.all, CadBus) then
				--Cargamos el registro en Elem
				elem := aux.Elemento.all;
				--Salimos de la rutina
				return;
			end if;

			--Pasamos al siguiente elemento de la lista
			aux := aux.siguiente;
		end loop;
	end;
	--****************************************************************************
	procedure BorrarNodo (Lista: in out TLista; CadBus: in TCampoIndex) is
		aux, aux2: TLista;
		enc: boolean;
	begin
		--Si la lista no esta vacía
		if Lista /= null then
			--Aux toma el primer elemento de la lista
			aux := Lista;
			--Encontrado es falso
			enc := false;
	
			--Mientras haya elementos y no se haya encontrado, se busca el elemento a borrar
			while (aux /= null) and (enc = false) loop
				--Si lo encontramos encontrado es verdadero
				if igual (aux.Elemento.all, CadBus) then
					enc := true;
				--Sino, pasamos al siguiente elemento de la lista
				else
					aux := aux.siguiente;
				end if;
			end loop;

			--Si se ha encontrado procedemos a borrarlo
			if enc then
				--Si Aux es el primer elemento
				if Lista = aux then
					--Lista la apuntamos al siguiente nodo
					lista := Aux.Siguiente;
				else
					--Sino Aux2 toma el primer elemento de la lista
					aux2 := Lista;
					--Y buscamos el nodo anterior a aux
					while aux2.siguiente /= aux loop
						aux2 := aux2.siguiente;
					end loop;
	
					--Y el Siguiente del anterior nodo, apunta al Siguiente del nodo a borrar
					aux2.siguiente := aux.Siguiente;
				end if;
	
				--Borramos el elemento
				liberarElemento (Aux.Elemento);
				--Borramos el nodo
				LiberarNodo (aux);
			end if;
		end if;
	end;
	--****************************************************************************
	--Esto es un ordenar por el metodo de la burbuja archiconocido por todo el mundo
	procedure Ordenar (Lista: in out TLista) is
		aux: TLista;
		ElemAux: TElemento;
		Ordenado: boolean;
	begin
		Ordenado := false;

		while not Ordenado loop
			aux := Lista;
			Ordenado := true;
			
			while aux.siguiente /= null loop
				if aux.elemento.all > aux.siguiente.elemento.all then
					Ordenado := False;

					--Intercambio por ser anterior > siguiente
					ElemAux := aux.elemento.all;
					aux.elemento.all := aux.siguiente.elemento.all;
					aux.siguiente.elemento.all := ElemAux;
				end if;

				Aux := aux.siguiente;
			end loop;
		end loop;
	end;
	--****************************************************************************
	procedure Copiar (Lista: out TLista; ListaOrigen: in TLista) is		
		aux: TLista;
		Elem: TElemento;
	begin
		--Aux toma el primer elemento de la lista a copiar
		aux := ListaOrigen;
		--Lista se inicializa
		Lista := null;

		--Mientras haya elementos en la lista a copiar
		while aux /= null loop
			--Cargamos en Elem el elemento del nodo
			elem := aux.elemento.all;
			--Y metemos un nuevo nodo a Lista
			meterNodo (Lista, Elem);
			--Pasamos al siguiente nodo
			aux := aux.siguiente;
		end loop;
	end;
	--****************************************************************************
	function NoVacia (Lista: in TLista) return boolean is
	begin
		return (Lista /= null);
	end;
end;
--********************************************************************************
