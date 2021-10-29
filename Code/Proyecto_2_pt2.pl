go :-
    write('El nombre del paciente es: '),
    read(Paciente),
    posible_enfermedad_padecible(Paciente,Disease),
    write_list(['El diagnostico seria que tienes ',Disease,'.']).

go :-
    write('No se pudo diagnosticar correctamente los sintomas').

% Padecimientos de una infeccion de transmision sexual
sintoma_enfermedad_pregunta(Paciente,ardor_orinar) :-
    arreglo_escribir_lista(['¿',Paciente,' tiene dolor o ardor al orinar? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

sintoma_enfermedad_pregunta(Paciente,ardor_orinar) :-
    arreglo_escribir_lista(['¿',Paciente,' tiene dolor o ardor al orinar? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

sintoma_enfermedad_pregunta(Paciente,fiebre) :-
    arreglo_escribir_lista(['¿',Paciente,' tiene fiebre? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

sintoma_enfermedad_pregunta(Paciente,dolor_coito) :-
    arreglo_escribir_lista(['¿',Paciente,' tiene dolor en el coito? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

sintoma_enfermedad_pregunta(Paciente,llagas_genitales) :-
    arreglo_escribir_lista(['¿',Paciente,' tiene llagas en los genitales? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% Padecimientos de COVID-19
sintoma_enfermedad_pregunta(Paciente,tos) :-
    arreglo_escribir_lista(['¿',Paciente,' tiene voz seca? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

sintoma_enfermedad_pregunta(Paciente,cansancio) :-
    arreglo_escribir_lista(['¿',Paciente,' tiene cansancio mas de lo usual? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

sintoma_enfermedad_pregunta(Paciente,perdida_gusto_olfato) :-
    arreglo_escribir_lista(['¿',Paciente,' tiene perdida de olfato y gusto? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

sintoma_enfermedad_pregunta(Paciente,diarrea) :-
    arreglo_escribir_lista(['¿',Paciente,' ultimamente tiene diarrea? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% Padecimientos de gastritis nerviosa
sintoma_enfermedad_pregunta(Paciente,dolor_abdominal) :-
    arreglo_escribir_lista(['¿',Paciente,' tienes dolor abdominal? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

sintoma_enfermedad_pregunta(Paciente,pesadez) :-
    arreglo_escribir_lista(['¿',Paciente,' tiene una sensacion de pesadez? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

sintoma_enfermedad_pregunta(Paciente,acidez) :-
    arreglo_escribir_lista(['¿',Paciente,' sientes una sensacion de acides persistente? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

sintoma_enfermedad_pregunta(Paciente,nauseas) :-
    arreglo_escribir_lista(['¿',Paciente,' tiene nauseas? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

sintoma_enfermedad_pregunta(Paciente,estres) :-
    arreglo_escribir_lista(['¿',Paciente,' has pasado por una situacion de mucho estres recientemente? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% Padecimientos de gastroentenritis
sintoma_enfermedad_pregunta(Paciente,vomito) :-
    arreglo_escribir_lista(['¿',Paciente,' vomita frecuentemente? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% Padecimientos de una infeccion en el oido
sintoma_enfermedad_pregunta(Paciente,dolor_oido) :-
    arreglo_escribir_lista(['¿',Paciente,' tiene un dolor agudo en el oido? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% Padecimientos de hipertension
sintoma_enfermedad_pregunta(Paciente,sangrado_nasal) :-
    arreglo_escribir_lista(['¿',Paciente,' tiene sangrado nasal? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

sintoma_enfermedad_pregunta(Paciente,cambio_vision) :-
    arreglo_escribir_lista(['¿',Paciente,' tiene cambios en la vision? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

% Padecimientos de cancer
sintoma_enfermedad_pregunta(Paciente,hemorragia) :-
    arreglo_escribir_lista(['¿',Paciente,' recientemete has tenido alguna hemorragia? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

sintoma_enfermedad_pregunta(Paciente,no_comer) :-
    arreglo_escribir_lista(['¿',Paciente,' te cuesta comer? (y/n)']),
    respuesta(Opcion),
    Opcion='y'.

posible_enfermedad_padecible(Paciente,'una infeccion de transmision sexual') :-
    sintoma_enfermedad_pregunta(Paciente,ardor_orinar),
    sintoma_enfermedad_pregunta(Paciente,fiebre),
    sintoma_enfermedad_pregunta(Paciente,dolor_coito),
    sintoma_enfermedad_pregunta(Paciente,llagas_genitales).

posible_enfermedad_padecible(Paciente,'COVID-19, deberias hacerte la prueba') :-
    sintoma_enfermedad_pregunta(Paciente,fever),
    sintoma_enfermedad_pregunta(Paciente,tos),
    sintoma_enfermedad_pregunta(Paciente,cansancio),
    sintoma_enfermedad_pregunta(Paciente,perdida_gusto_olfato),
    sintoma_enfermedad_pregunta(Paciente,diarrea).

posible_enfermedad_padecible(Paciente,'probablemente una gastritis nerviosa') :-
    sintoma_enfermedad_pregunta(Paciente,nauseas),
    sintoma_enfermedad_pregunta(Paciente,acidez),
    sintoma_enfermedad_pregunta(Paciente,pesadez),
    sintoma_enfermedad_pregunta(Paciente,dolor_abdominal),
    sintoma_enfermedad_pregunta(Paciente,estres).

posible_enfermedad_padecible(Paciente,'gastritis') :-
    sintoma_enfermedad_pregunta(Paciente, nauseas),
    sintoma_enfermedad_pregunta(Paciente, acidez),
    sintoma_enfermedad_pregunta(Paciente, pesadez),
    sintoma_enfermedad_pregunta(Paciente, dolor_abdominal).

posible_enfermedad_padecible(Paciente,'una gastroentenritis viral') :-
    sintoma_enfermedad_pregunta(Paciente,vomito),
    sintoma_enfermedad_pregunta(Paciente,diarrea),
    sintoma_enfermedad_pregunta(Paciente,nauseas).

posible_enfermedad_padecible(Paciente,'una infeccion en el oido') :-
    sintoma_enfermedad_pregunta(Paciente,dolor_oido),
    sintoma_enfermedad_pregunta(Paciente,fiebre).

posible_enfermedad_padecible(Paciente,'hipertension') :-
    sintoma_enfermedad_pregunta(Paciente,sangrado_nasal),
    sintoma_enfermedad_pregunta(Paciente,cambio_vision),
    sintoma_enfermedad_pregunta(Paciente,vomito),
    sintoma_enfermedad_pregunta(Paciente,fiebre).

posible_enfermedad_padecible(Paciente,'sintomas asociados al cancer, hazte examenes') :-
    sintoma_enfermedad_pregunta(Paciente,cansancio),
    sintoma_enfermedad_pregunta(Paciente,tos),
    sintoma_enfermedad_pregunta(Paciente,fiebre),
    sintoma_enfermedad_pregunta(Paciente,hemorragia),
    sintoma_enfermedad_pregunta(Paciente,sudor),
    sintoma_enfermedad_pregunta(Paciente,no_comer).

posible_enfermedad_padecible(Paciente,'una fractura interna, mejor hazte una radiografia') :-
    sintoma_enfermedad_pregunta(Paciente,pesadez),
    sintoma_enfermedad_pregunta(Paciente,sangrado_nasal),
    sintoma_enfermedad_pregunta(Paciente,nauseas).

posible_enfermedad_padecible(Paciente,'algun tipo de depresion, ve con el psicologo') :-
    sintoma_enfermedad_pregunta(Paciente,no_comer),
    sintoma_enfermedad_pregunta(Paciente,cansancio),
    sintoma_enfermedad_pregunta(Paciente,pesadez).

arreglo_escribir_lista([]).
arreglo_escribir_lista([Cabeza| Cola]) :-
    write(Cabeza),
    arreglo_escribir_lista(Cola).

respuesta(Opcion) :-
    get_single_char(Code),
    put_code(Code), nl,
    char_code(Opcion, Code).
