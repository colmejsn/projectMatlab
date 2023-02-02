clear;clc;
load Red_Voz4.mat
for H=1:1:5
REC=audiorecorder();
disp(['INICIO DE LA GRABACIÓN # ',num2str(1)])
recordblocking(REC,3);
disp(['FIN DE LA GRABACIÓN #',num2str(1)])
Audio=getaudiodata(REC);
[ P1,f ] = Get_FFT( Audio, 8000, length(Audio));
Salida=sim(Voice,P1)
[a,b]=max(Salida)
end
switch b
   case 1
      estrella;
   case 2
      pentagono;
   case 3
      circulo;
   case 4
      disp('caso 4');
   case 5
      disp('caso 5');
   
   
end