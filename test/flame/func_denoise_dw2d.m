
function [XDEN,cfsDEN,dimCFS] = func_denoise_dw2d(X)
% FUNC_DENOISE_DW2D Saved Denoising Process.
%   X: matrix of data
%   -----------------
%   XDEN: matrix of denoised data
%   cfsDEN: decomposition vector (see WAVEDEC2)
%   dimCFS: corresponding bookkeeping matrix

%  Auto-generated by Wavelet Toolbox on 17-Dec-2015 20:33:38

% Analysis parameters.
%---------------------
wname = 'sym4';
level = 2;

% Denoising parameters.
%-----------------------
% meth = 'sqtwolog';
% scal_OR_alfa = one;
sorh = 's';    % Specified soft or hard thresholding
thrSettings =  [...
    4.813948307010826      4.531695194102101 ; ...
    5.680360649922867      7.737297502692806 ; ...
    4.813948307010826      4.531695194102101   ...
    ];
roundFLAG = true;

% Denoise using WDENCMP.
%----------------------
[coefs,sizes] = wavedec2(X,level,wname);
[XDEN,cfsDEN,dimCFS] = wdencmp('lvd',coefs,sizes, ...
    wname,level,thrSettings,sorh);

XDEN = single(XDEN);
