clear;
clc;
close all;

% Initial Conditions
N(0)=0.1;
O(0)=0.1;
S(0)=0.1;

%Params,Probabilities

T=1;
n=2;
m=2;
N_v0=25000;
N_1 =100;
N_2=900; %N1+N2=1000 N_i
alpha_1=0.0040;
alpha_2=0.0072;
u_vA=1.6;
theta_d=0.33;
P_B1=0.70;
P_B2=0.95;
P_C1=0.70;
P_C2=0.95;
P_D1=0.94;
P_D2=0.94;
P_E1=0.93;
P_E2=0.93;
tau=3;
theta_s=11;
K_v1=0.026;
K_v2=0.030;


P_A=exp(-1*theta_d*(alpha_1*N_1 + alpha_2*N_2 + u_vA));
P_A1=(1-P_A)*(alpha_1 *N_1)/(alpha_1*N_1 + alpha_2*N_2 + u_vA);
P_A2=(1-P_A)*(alpha_2 *N_2)/(alpha_1*N_1 + alpha_2*N_2 + u_vA);

P_Au=(1-P_A)*(u_vA/(alpha_1*N_1 + alpha_2*N_2 + u_vA));

P_df1= P_A1 * P_B1 * P_C1 * P_D1 * P_E1;
P_df2= P_A2 * P_B2 * P_C2 * P_D2 * P_E2;
P_df= P_df1 + P_df2;

P_f=P_df/(1-P_A);

P_dif= P_df1*K_v1 + P_df2*K_v2;

P_if= P_dif/(1-P_A);

P_duf= P_df1*(1-K_v1) + P_df2*(1-K_v2);

P_uf=P_duf/(1-P_A);

%P_df=P_dif+P_duf;
%P_f=P_if+P_uf;
