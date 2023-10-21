% Create a table with your data and add some information
simdata = rand(5, 3);  % Sample data

% Save the table to a CSV file
timestamp = datetime("now","Format","ddMMyyyy_HHmm")
simfilename="simdata_" + string(timestamp) + ".mat"

siginfo = audioinfo("Speech.wav");
siginfo.window = 24;
currentfolder = pwd;
mkdir(string(timestamp));
foldername = currentfolder + "\" + string(timestamp)
fullroute = fullfile(foldername,simfilename)
save(fullroute,"simdata","siginfo");
