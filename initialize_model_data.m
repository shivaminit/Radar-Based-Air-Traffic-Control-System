% initialize_model_data.m
% This script defines ALL variables needed by the Simulink model's
% 'From Workspace' blocks, 'n-D Lookup Table' blocks, and other initializations.
% It provides initial default numerical values directly to the workspace.

% Temporarily suppress warnings that might appear if the original GUIDE GUI
% components are mentioned in the code, but we're not interacting with them here.
warning('off', 'MATLAB:HandleGraphics:ObsoletedProperty:Userdata');
warning('off', 'MATLAB:findobj:ObsoleteBehavior');


%% Initialization of aircraft range, cross-section, weather initial values
% These are the EXACT scalar initial values for From Workspace blocks from the original aero_init_atc.m
T_Weather = 0;
R_Weather = 50; % For From Workspace block in Weather subsystem

T_xsection = 0;
U_xsection = 40; % For From Workspace block in Aircraft/Cross Section subsystem

% These arrays define the actual aircraft trajectory (time series data)
% They are EXACTLY from the original aero_init_atc.m
T_AC = 0:2:2559; % Time points for aircraft trajectory
R_AC1 = [56*ones(1,20) 54*ones(1,20) 52*ones(1,20) 50*ones(1,20) ...
        48*ones(1,20) 46*ones(1,20) 44*ones(1,20) 42*ones(1,20) 40*ones(1,20) ...
        38*ones(1,20) 36*ones(1,20) 34*ones(1,20) 32*ones(1,20) 30*ones(1,20) ...
        28*ones(1,20) 26*ones(1,20) 24*ones(1,20) 22*ones(1,20) 20*ones(1,20) ...
        20*ones(1,20) 18*ones(1,20) 16*ones(1,20) 14*ones(1,20) 12*ones(1,20) ...
        10*ones(1,20) 8*ones(1,20) 6*ones(1,20) 4*ones(1,20) 2*ones(1,20)]';
R_AC2 = [2*ones(1,20) 2*ones(1,20) 2*ones(1,20) 4*ones(1,20) 6*ones(1,20) ...
        8*ones(1,20) 10*ones(1,20) 12*ones(1,20) 14*ones(1,20) 16*ones(1,20) ...
        18*ones(1,20) 20*ones(1,20) 22*ones(1,20) 24*ones(1,20) 26*ones(1,20) ...
        28*ones(1,20) 30*ones(1,20) 30*ones(1,20) 30*ones(1,20) 30*ones(1,20) ...
        32*ones(1,20) 34*ones(1,20) 36*ones(1,20) 38*ones(1,20) 40*ones(1,20) ...
        42*ones(1,20) 44*ones(1,20) 46*ones(1,20) 48*ones(1,20) 50*ones(1,20) ...
        52*ones(1,20) 54*ones(1,20) 54*ones(1,20) 54*ones(1,20) 56*ones(1,20)]';
R_AC = [R_AC1;R_AC2]'; % Combined aircraft range time series
clear R_AC1 R_AC2 % Clear temporary variables


%% Define Breakpoints and Table for n-D Lookup Table (Weather Attenuation)
% These are the EXACT values from the original model's lookup table.
rainfall_bp = [0.0, 0.25, 1, 4, 16];
lambda_bp = [0.057, 0.075, 0.1, 0.15, 0.3];
sigma_table = [
    0.0,      0.0,     0.0,     0.0,     0.0;
    7.5e-10,  3.0e-10, 8.5e-11, 9.0e-12, 9.0e-13;
    6.5e-9,   3.6e-9,  7.0e-10, 7.0e-11, 7.0e-12;
    7.5e-8,   4.1e-8,  6.8e-9,  6.8e-10, 6.8e-11;
    7.0e-7,   3.9e-7,  8.0e-8,  8.0e-9,  8.0e-10
];


%% Initialize Parameters Controlled by GUI (Using original GUI's default values)
% These variables will be defined in the workspace,
% and then quickly updated by your App Designer GUI's startupFcn and callbacks.
% This prevents NaN/Inf at t=0 when the model first initializes.
BwPw = 1.2;          % Bandwidth/Pulsewidth
Loss = 5;            % Losses
SNR = 15;            % Reliable Detection S/N
Pt = 50;             % Transmitter Power
Rrange = 50;         % RADAR Range
AZ_Sep = 2;          % Lateral Separation
EL_Sep = 2;          % Elevation Separation
Rres = 150;          % Range Resolution
E = 0.7;             % Antenna Efficiency
Noise = 5;           % Noise Factor
Temp = 15;           % Working Temperature
Lambda = 0.285;      % Wavelength
rainfall = 1.0;      % Weather Condition (1.0 for 'Light Precipitation' default)

% Re-enable warnings (important to restore MATLAB's warning state)
warning('on', 'MATLAB:HandleGraphics:ObsoletedProperty:Userdata');
warning('on', 'MATLAB:findobj:ObsoleteBehavior');

disp('Model initialization data and parameters loaded for PreLoadFcn.');