load('datos.mat')
%Guardas los angulos y movimientos
dangulo=datos.angulo
dEfector=datos.efector
%Tamaño de la matriz
n = 361
%A(m,:) es la m.ª fila de la matriz A
dEfector(n,:)=[]
posfin=datos.efector(n,:)
entrada=[]
for j= 1:n
    entrada=[entrada;datos.efector(j,:) posfin];
end
entrada= entrada'
%datos salida
base = dangulo(:,1)'
hombro = dangulo(:,2)'
codo = dangulo(:,3)'
mun = dangulo(:,3)'



