[y,Fs] = audioread("Bird_song.wav");
disp(Fs);
z=zeros(5000,2);
ydelayed = [z;y(1:end-5000,:)];
audiowrite("custom.wav",[y,ydelayed],Fs);
audioinfo("custom.wav");
[newy,newFs] = audioread("custom.wav");
