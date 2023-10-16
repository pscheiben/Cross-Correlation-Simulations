% load handel.mat
% 
% filename = 'handel.wav';
% audiowrite(filename,y,Fs);
% clear y Fs

[y,Fs] = audioread('Bird_song.wav');
disp(Fs)
5*Fs
z=zeros(5,2)
[zrows,zcol]=size(z)
delayedsig=y(zrows:end,:);
advancesig=y(1:end-zrows,:);
modifiedsig=[delayedsig;z];
subplot(3,1,1)
plot(y(:,1))
subplot(3,1,2)
plot(y(:,2))
cor=xcorr(modifiedsig(:,1),y(:,2));
subplot(3,1,3)
plot(cor(4:10000))