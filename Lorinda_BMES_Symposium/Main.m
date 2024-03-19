% Example input arguments (replace with actual values)
errorReport = struct('errorMessage', {}, 'errorSeverity', {});;
filePath = 'path\ReN_2D_Fluo4_1.tif';
outputDirName = '';
fileName = 'ReN_2D_Fluo4-FunctionalGraph-3-28-2024';

% Print time 
fprintf('Trial start time %s\n', datestr(now,'HH:MM:SS.FFF'));

% Call the function
[errorReport, cellInfoAllCells] = generateFunctionalGraph(errorReport, filePath);

% Generate functional network plots
errorReport = generateFunctionalNetworkPlots(cellInfoAllCells, fileName, outputDirName);

% Check the error report
disp(errorReport);

% Print time 
fprintf('Trial finished run at time %s\n', datestr(now,'HH:MM:SS.FFF'));


