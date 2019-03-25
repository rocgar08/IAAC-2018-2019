%Cargamos el archivo 
dOrigen=xlsread('/home/rocio/Escritorio/IAAC/parte1/datos.xls')

%Seleccionamos los datos de las tablas que nos interesan
datosNormales=dOrigen(2:22,2:4)
dNormTotal=dOrigen(2:22,1)

dExtran=dOrigen(2:22,7:9)
dExtTotal=dOrigen(2:22,6)

dDisc=dOrigen(2:22,12:14)
dDiscTotal=dOrigen(2:22,11)

%dibujamos las tablas
hold on
plot(dNormTotal)
plot(dExtTotal)
plot(dDiscTotal)