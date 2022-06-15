%% BSD 3-Clause License
%
%  Copyright (c) 2019, Ajay Rajaram & Lawrence C.M. Yip
%  All rights reserved.
% 
%  Redistribution and use in source and binary forms, with or without
%  modification, are permitted provided that the following conditions are met:
% 
%  1. Redistributions of source code must retain the above copyright notice, this
%     list of conditions and the following disclaimer.
% 
%  2. Redistributions in binary form must reproduce the above copyright notice,
%     this list of conditions and the following disclaimer in the documentation
%     and/or other materials provided with the distribution.
% 
%  3. Neither the name of the copyright holder nor the names of its
%     contributors may be used to endorse or promote products derived from
%     this software without specific prior written permission.
%  
%  4. Any figures generated by this source code and used in presentation
%     slides, research papers, etc. must appropriately reference both the
%     authors of this code as well as the source of the spectral data [i.e.
%     omlc.org (Scott Prahl & Steve Jacques)].
% 
%  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
%  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
%  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
%  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
%  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
%  DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
%  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
%  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
%  OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
%  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
%% This code loads spectral data previously exported from omlc.org and 
% plots it in one figure. Arbitrary scaling factors are used for improved
% visualization of the spectra for display purposes.

load('spe2.mat'); %Load spectral data previously exported from omlc.org

figure;plot(table2array(spe2(:,1)),40.*table2array(spe2(:,2)), 'LineWidth',3); % Plot deoxyhemoglobin
hold on;
plot(table2array(spe2(:,1)),40.*table2array(spe2(:,3)),'-.', 'LineWidth',3); % Plot oxyhemoglobin
hold on;
plot(table2array(spe2(:,1)),0.85.*table2array(spe2(:,4)) ,'k--', 'LineWidth',3); % Plot H2O
hold on
plot(table2array(spe2(:,1)),0.0014.*table2array(spe2(:,5)) ,'g:', 'LineWidth',3); % Plot lipid
hold on

% Insert title if desired
% title('\fontsize{22}Optical Absorption Spectra') 

xlabel('\fontsize{18}Wavelength (nm)')
ylabel('\fontsize{18}Relative Optical Absorption (a.u)')
xlim ([650 1000])
ylim ([0 0.03])
legend('\fontsize{12}Deoxyhemoglobin','\fontsize{12}Oxyhemoglobin','\fontsize{12}H_2O','\fontsize{12}Lipid')
set(gca,'FontSize',12);