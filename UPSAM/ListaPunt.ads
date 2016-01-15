--********************************************************************************
-- Prácticas de tecnología de la programación
-- Práctica de abstracción de datos y control ADA95
--
-- ListaPunt.ads -> Cabecera del paquete del tipo Lista de Punteros
--
--********************************************************************************
with ada.unchecked_deallocation;
--********************************************************************************
generic
type TElemento is private;
type TCampoIndex is private;
with function ">" (A, B: in TElemento) return boolean;
with function Igual (X: in TElemento; Cad: in TCampoIndex) return Boolean;
with function DarCadBus (x: in TElemento) return TCampoIndex;
--********************************************************************************
package PListaPunt is
	--****************************************************************************
	--Tipos de datos
	--****************************************************************************
	type TPElemento is access TElemento;

	type TNodo;
	type TLista is access TNodo;

	type TNodo is record
		Elemento: TPElemento;
		Siguiente: TLista;
	end record;

	--****************************************************************************
	--Rutinas para los tipos de datos
	--****************************************************************************
	procedure Inicializar (Lista: in out TLista);
	procedure MeterNodo   (Lista: in out TLista; Elem: in TElemento);
	procedure DarNodo     (Lista: in out TLista; CadBus: in TCampoIndex; Elem: out TElemento);
	procedure BorrarNodo  (Lista: in out TLista; CadBus: in TCampoIndex);
	procedure Ordenar     (Lista: in out TLista);
	procedure Copiar      (Lista: out TLista; ListaOrigen: in TLista);
	function  NoVacia     (Lista: in TLista) return boolean;

--********************************************************************************
private
	--****************************************************************************
	--Rutinas para los tipos de datos
	--****************************************************************************
	procedure liberarElemento is new ada.unchecked_deallocation (tElemento, TPElemento);
	procedure liberarNodo is new ada.unchecked_deallocation (TNodo, TLista);
end;
--********************************************************************************

