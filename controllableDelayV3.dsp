declare name "The New Controllable Delay V3";
declare version "1.0";
declare author "F";
declare license "APACHE-2.0";

import("math.lib"); 
import("music.lib");

TotalDelays = 10;

    delayTime = hslider("Time (ms)", 250, 1, 2000, 10);
     nbDelays = hslider("Number of delays", 1, 1, TotalDelays, 1);
     fadeType = hslider("Fade : exp <--> log", 1, 0.1, 2, 0.1);   
interpolation = hslider("Interpolation", 10, 1, 100, 0.1)*SR/1000;

nbSamples = int(SR/1000 * delayTime);

coeff(0, fadeType) = 1;
coeff(i, fadeType) = 1 - min(pow((float(i)/nbDelays), fadeType), 1);

     theDelay(i) = sdelay(int(2^19), interpolation, i*nbSamples);
storeDelay(_, i) = coeff(i, fadeType) * theDelay(i);
        delayHub = par(i, TotalDelays, storeDelay(_, i));
      applyDelay = _ <: delayHub :> _;

process = _,_ : (applyDelay, applyDelay);     

