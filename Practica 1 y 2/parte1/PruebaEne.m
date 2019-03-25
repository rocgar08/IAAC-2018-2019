%Cargamos el archivo 
dOrigen=xlsread('C:\Users\Rocío\Downloads\datos.xls')

%Seleccionamos los datos de las tablas que nos interesan
datosNormales=dOrigen(2:22,2:4)
dNormTotal=dOrigen(2:22,1)

dExtran=dOrigen(2:22,7:9)
dExtTotal=dOrigen(2:22,6)

dDisc=dOrigen(2:22,12:14)
dDiscTotal=dOrigen(2:22,11)
% tTotalDiscp =2187
%Media total disc la variacón de K porque es el punto que queremos que se
%estabilice
%104.1429
% 
% ttDMedia = tTotalDiscp/21
%Distribución
% tRestantes =0
% for i=2:22
%     
%     if dDiscTotal(i-1,1) > round(ttDMedia)
%         aux=dDiscTotal(i-1,1)-round(ttDMedia) %Cuanto le sobra a la media
%         dDiscTotal(i-1,1)=round(ttDMedia)
%         tRestantes = aux +tRestantes
%     else
%         if dDiscTotal(i-1,1) < round(ttDMedia)
%         aux2=round(ttDMedia)-dDiscTotal(i-1,1)
%         dDiscTotal(i-1,1)=dDiscTotal(i-1,1)+aux2 %Así se estabiliza
%         tRestantes = tRestantes - aux2
%         end
%     end
   
%      
% end

% for j=2:22
%     if dDiscTotal(i-1,1) < round(ttDMedia)
%         aux=round(ttDMedia)-dDiscTotal(i-1,1)
%         dDiscTotal(i-1,1)=dDiscTotal(i-1,1)+aux %Así se estabiliza
%         tRestantes = tRestantes - aux
%     end
%        
% end
ylabel('Total Alumnos')
xlabel('Distrito de Madrid')
%dibujamos las tablas
hold on
%plot(dNormTotal)
%plot(dExtTotal)
plot(dDiscTotal)
