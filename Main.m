%% PART 1
% spectra is a 357x10 matrix which is given to us. 
% The spectra data was collected at evenly-spaced wavelengths,
% Each column of spectra is the spectrum of a different star. 

% We know the
% starting wavelength (?start), 
% the spacing (?delta),
% and the number of observations.

nObs = 357;
lambdaStart = 630.02;
lambdaDelta = 0.14;

% Create a variable named lambdaEnd (?end)
% that contains the value of the last wavelength in the recorded spectrum.
% You can calculate lambdaEnd with the equation ?end = ?start + (nObs-1)?delta.

lambdaEnd = lambdaStart + (nObs-1)*lambdaDelta;

% Make a column vector named lambda (?) containing
% the wavelengths in the spectrum, from ?start to ?end, in steps of ?delta

lambda = (lambdaStart:lambdaDelta:lambdaEnd)';

% Each column of spectra is the spectrum of a different star.
% The sixth column is the spectrum of star HD 94028.
% the spectrume data of star HD 94028 is stored on spectraStarHD94028.mat
% file

load spectraStarHD94028;

% Plot the spectra (s) as a function of wavelength (lambda),
% using log scales on both axes. Use point markers (.)
% and a solid line (-) connecting the points.

loglog(lambda,s,'.-')
xlabel('Wavelength')
ylabel('Intensity')

% Recall that the min function allows two outputs, 
% the second of which is the index at which the minimum value occurred.
% This index corresponds to the location of the Hydrogen-alpha line.
% Create two variables, sHa and idx that contain the minimum value of s
% and the index where the minimum value occurred.

[sHa,idx] = min(s);

% Use idx to index into lambda to find the wavelength of the Hydrogen-alpha line. 
% Store the result as lambdaHa (?Ha)

lambdaHa = lambda(idx);

% You have determined the wavelength of the Hydrogen-alpha line of HD 94028 to be 656.62 nm, 
% which is slightly longer than the laboratory value of 656.28 nm.
% PART 1 END 



%% PART 2 

% In the next section you will use this to determine the speed of the star
% relative to the earth.


% Add to the existing graph by plotting the single point
% x = lambdaHa, y  = sHa as a red square ('rs') with
% a marker size ('MarkerSize') of 8.

hold on 
loglog(lambdaHa,sHa,'rs','MarkerSize',8)

% finds the Hydrogen-alpha wavelength of the star.
% From this, you can calculate the redshift factor using the formula
% z = (?Ha / 656.28) - 1. 
% You can then calculate the speed by multiplying
% the redshift factor by the speed of light (299792.458 km/s).

lambdaHaRef = 656.28;
z = (lambdaHa/lambdaHaRef) - 1;
c = 299792.458; 
speed = z * c 






















