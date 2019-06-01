load('datosp2.mat')
dangulo=datos.angulo
%da=datos.angulo'
dEfector=datos.efector
dFinal=datos.efector(1:329,1:3)'
x=dFinal(1,1:329)
y=dFinal(2,1:329)
z=dFinal(3,1:329)
posicionfinal=datos.efector(330,1:3)'
u=posicionfinal(1)
v=posicionfinal(2)
w=posicionfinal(3)
base=dangulo(1:329,1)'
hombro=dangulo(1:329,2)'
codo=dangulo(1:329,3)'
muneca=dangulo(1:329,4)'

% base=da(1,1:276)
% hombro=da(2,1:276)
% codo=da(3,1:276)
% muneca=da(4,1:276)
% 
% d=dEfector'
% X=d(1,1:276)
% Y=d(2,1:276)
% Z=d(3,1:276)
% 
% u=d(1, 277)
% v=d(2, 277)
% w=d(3, 277)

