function pid=sistema_experto(pid,num,den,espec)

% Simulamos el modelo
  [tout,yout]=simular(pid,num,den);
    
% Calculo de las caracteristicas del sistema
  [tr,tp,Mp,ts,ys]=caracteristicas(tout,yout);
  [tout,yout]=simular(pid,num,den,tr,tp,Mp,ts,ys);
  
% Abrimos el modelo Simulink
  open_system('modelo');
  disp(' ');
  disp(' Pulse enter para ejecutar el control experto');
  pause;
  
% Incrementar o decrementar las especificaciones
  if tr<=espec(1), incrementar_tr=1; else incrementar_tr=0; end
  if tp<=espec(2), incrementar_tp=1; else incrementar_tp=0; end   
  if Mp<=espec(3), incrementar_Mp=1; else incrementar_Mp=0; end   
  if ts<=espec(4), incrementar_ts=1; else incrementar_ts=0; end   
  if ys<=espec(5), incrementar_ys=1; else incrementar_ys=0; end   
%   Inicialmente las especificaciones para el sistema de esta práctica son: 
%   tr 4 seg., 
%   tp < 20seg.,
%   sobrelongación  15
%   tss < 30 seg., 
%   yss = 1 (en negrita las que se deben cumplir prioritariamente).

% Reglas del sistema experto para adaptar las caracteristicas a las especificaciones

%Cuanto más pequeño es el tiempo de subida mejor sintoniza

  salir=0;
  while ~salir
       % Regla para el timepo de subida
        if 4<=tr
            pid(1)= pid(1)+0.7
        else
            pid(1)= pid(1)-0.9;
        end
        %Regla de la sobreelongación
        if 15<=Mp
            pid(3)=pid(3)+6;
        else
            pid(3)=pid(3)-3;
        end  
      % Caracteristicas del sistema bajo la nueva situacion
        [tout,yout]=simular(pid,num,den,tr,tp,Mp,ts,ys);
        [tr,tp,Mp,ts,ys]=caracteristicas(tout,yout);
        
      % Si se cumplen las especificaciones, entonces salir
        if tr < 4 && Mp< 15 
            salir=1;
        end
  end
  [tout,yout]=simular(pid,num,den,tr,tp,Mp,ts,ys);
  disp(' ');
  disp(' PID sintonizado, pulse enter para salir');
  pause;
  
% Cerramos el modelo Simulink
  close_system('modelo');