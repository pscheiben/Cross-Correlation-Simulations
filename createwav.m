[y,Fs] = audioread("Bird_song.wav");
disp(Fs);
z=zeros(5000,2);
ydelayed = [z;y(1:end-5000,:)];
audiowrite("new.wav",[y,ydelayed],Fs);
audioinfo("new.wav");
[newy,newFs] = audioread("new.wav");
sound(newy,newFs);