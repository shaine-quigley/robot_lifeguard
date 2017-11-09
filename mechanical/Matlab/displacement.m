%INITIAL INPUT
clear all
m_boat= 65; %lbs, includes all equipment
F_f = 11.2; %lbs-force, forward thrust
F_b = 9.0; %lbs-force, rearward thrust
a_f = 32.17*F_f / m_boat; %acceleration, ft/s^2
a_b = -32.17*F_b / m_boat; %backward acceleration = deceleration ft/s^2
Vi = 0; %initial velocity, ft/s

%MATRICIES

t = (0:.5:10); %time to accel from 0 matrix
t2_m= ones( size(t) );%time to decel from V0 matrix
a_fm=ones( size(t) ).*a_f; %matrix of accel rate

%CALC-(possibley space magic)

syms t2 V0 x1 a_bm
s = solve(x1 == (V0.*t2) + (.5.*a_bm.*t2.^2),t2)*t2_m;
x1 = (.5.*a_fm.*t.^2 ); %ft displacement after accel
V0 = a_fm.*t; %ft/s after accel
a_bm=ones( size(t) ).*a_b; %matrix of decel rate
