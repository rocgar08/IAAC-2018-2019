#ganancias
#lazo abierto, sistema planta 1
To<-1.080
Kp<-25.51
Tp<-15.0423
#Ganancia proporcional
GanP<-function(Tp,Kp,To){
  return(Tp/(Kp*To))
}
GanPr<-GanP(Tp,Kp,To)
GanPr
#Kp en ganancia integral
GanI<-function(Tp,Kp,To){
  return((0.9*Tp)/(Kp*To))
}
#PI
GanIn<-GanI(Tp,Kp,To)
GanIn
#tiempo de la integral
Tin<-3.33*To
Tin
#Kp en ganancia derivativa
GanD<-function(Tp,Kp,To){
  return((0.9*Tp)/(Kp*To))
}
#PID
GanPID<-GanD(Tp,Kp,To)
GanPID
#Tiempo integral en derivaticva
Tip<-2*To
Tip
#Tiempo derivativo
Td<-0.5*To
Td

KI<-GanIn/Tin
KI

K<-GanPID/Tip
K
KD<-GanPID*Td
KD

#para un sistema planta 2 en lazo cerrado
Ku<-1.749
Tu<-1.2
GaP<-0.5*Ku
GaP

Gi<-0.45*Ku
Gi

Gd<-0.6*Ku
Gd

#Tiempo integral
#Para un PI
tpi<-Tu/1.2
tpi

#Para la acción derivadiva
tid<-Tu/2
tid
#Tiempo derivativo
tpid<-Tu/8
tpid

Kp<-GaP
Kp

Ki<-Gi/tpi
Ki

kid<-Gd/tid
kid

Kd<-Gd*tpid
Kd

