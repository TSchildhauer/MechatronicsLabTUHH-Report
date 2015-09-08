skaliert=1;
LINKS=6501;
RECHTS=20500;
A=messung6;

Rneu=A.Y(1).Data;
Uneu=A.Y(2).Data;
Theta1neu=A.Y(3).Data*180/pi;
Theta1dneu=A.Y(4).Data;
Theta2neu=A.Y(5).Data*180/pi;
Theta2dneu=A.Y(6).Data;
clf;
%clg;
%closeplot;


Rskaliert=Rneu(LINKS:RECHTS);
Uskaliert=Uneu(LINKS:RECHTS);
Theta1skaliert=Theta1neu(LINKS:RECHTS);
Theta1dskaliert=Theta1dneu(LINKS:RECHTS);
Theta2skaliert=Theta2neu(LINKS:RECHTS);
Theta2dskaliert=Theta2dneu(LINKS:RECHTS);



X=[0:(RECHTS-LINKS)];
X=X/1000;

h=figure(1);
%ax=gca;
%hold;
subplot(2,1,1)
if (skaliert) plot(X,Theta1skaliert) else plot(Theta1neu) end;
%if (skaliert) axis([0 (RECHTS-LINKS)/1000 -200 200]) else axis([0 40000 -200 200]) end;
xlabel ("t in s");
ylabel ("theta1 in °");
subplot(2,1,2)
if (skaliert) plot(X,Theta2skaliert) else plot(Theta2neu) end;
%if (skaliert) axis([0 (RECHTS-LINKS)/1000 -2.5 0.5]) else axis([0 40000 -200 200]) end;
xlabel ("t in s");
ylabel ("theta2 in °");


%title ("sin(x) for x = -10:0.1:10");



print(h,'-dpng','-color','Catch_kurz.png')