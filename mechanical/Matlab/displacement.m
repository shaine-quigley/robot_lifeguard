%% PARAMETER AND SETUP
clear all
m_boat= 65; %lbs, includes all equipment
F_f = 11.2; %lbs-force, forward thrust
F_b = 9.0; %lbs-force, rearward thrust
a_f = 32.17*F_f / m_boat; %acceleration, ft/s^2
a_b = -32.17*F_b / m_boat; %backward acceleration = deceleration ft/s^2
Vi = 0; %initial velocity, ft/s


t = (0:.5:10);
v_current = Vi;
displacement = 0
disp_cutoff = 100
disp_old
%% NUMERICAL INTEGRATION

while v_current >= 0 
      
%% TEST IF SLOWING DOWN 
    %% before cutoff pt
    if displacement < disp_cutoff && check_decel == 0;
        status = 'Before cutoff pt';
        a = a_f
    %% after cutoff point    
    elseif displacement >= disp_cutoff && check_decel == 0;
        check_decel = 1
        status = 'just reached cutoff pt';
        a = a_b
    elseif check_decel == 1
        a = a_b
        status = 'after cutoff pt';
        
    %% numerical integration for real
            




end
% t2_m= ones( size(t) );%time to decel from V0 matrix
% a_fm=ones( size(t) ).*a_f; %matrix of accel rate
% a_bm=ones( size(t) ).*a_b; %matrix of decel rate
% 
% %CALC-(possibley space magic)
% 
% syms t2 V0 x1 a_bm
% s = solve(x1 == (V0.*t2) + (.5.*a_bm.*t2.^2),t2)*t2_m;
% x1 = (.5.*a_fm.*t.^2 ); %ft displacement after accel
% V0 = a_fm.*t; %ft/s after accel
