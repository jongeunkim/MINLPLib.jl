using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.99)
set_upper_bound(x[1], 2.14)
set_lower_bound(x[2], 0.83)
set_upper_bound(x[2], 2.69)
set_lower_bound(x[3], 0.89)
set_upper_bound(x[3], 2.74)
set_lower_bound(x[4], 0.21)
set_upper_bound(x[4], 2.93)
set_lower_bound(x[5], 0.34)
set_upper_bound(x[5], 2.95)
set_lower_bound(x[6], 0.58)
set_upper_bound(x[6], 2.73)
set_lower_bound(x[7], 0.39)
set_upper_bound(x[7], 2.79)
set_lower_bound(x[8], 0.88)
set_upper_bound(x[8], 2.81)
set_lower_bound(x[9], 0.83)
set_upper_bound(x[9], 2.57)
set_lower_bound(x[10], 0.77)
set_upper_bound(x[10], 2.99)
set_lower_bound(x[11], 0.32)
set_upper_bound(x[11], 2.53)
set_lower_bound(x[12], 0.27)
set_upper_bound(x[12], 2.39)


# ----- Constraints ----- #
@constraint(m, e1, 6.47*x[1]+0.79*x[2]+1.65*x[3]+2.62*x[4]+4.54*x[5]-6.27*x[6]+3.5*x[7]+7.03*x[8]+3.34*x[9]+3.21*x[10]+1.83*x[11]+4.64*x[12] == 54.743)
@constraint(m, e2, 0.94*x[1]+1.24*x[2]+4.4*x[3]-5.02*x[4]+4.84*x[5]+5.56*x[6]+2.65*x[7]+5.88*x[8]+8.79*x[9]+7.13*x[10]+4.71*x[11]+3.57*x[12] == 75.791)
@constraint(m, e3, 6.01*x[1]+3.31*x[2]+5.89*x[3]+2.77*x[4]+8.08*x[5]+6.85*x[6]+5.4*x[7]+9.71*x[8]+3.88*x[9]+0.55*x[10]+6.18*x[11]+3.53*x[12] == 102.531)
@constraint(m, e4, 8.26*x[1]-7.91*x[2]+4.43*x[3]-2.86*x[4]+9.32*x[5]+8.51*x[6]+1.5*x[7]+9.34*x[8]+7.26*x[9]+7.45*x[10]+6.48*x[11]+8.4*x[12] >= 98.342)
@constraint(m, e5, 6.76*x[1]+0.15*x[2]+7.14*x[3]+9.52*x[4]-8.13*x[5]+4.94*x[6]+9.61*x[7]+9.82*x[8]-3.06*x[9]+5.37*x[10]+9.81*x[11]+7.08*x[12] >= 95.238)
@constraint(m, e6, 1.76*x[1]+3.89*x[2]+6.17*x[3]+4.04*x[4]+1.21*x[5]+6.75*x[6]+3.55*x[7]+3.82*x[8]+4.81*x[9]+0.06*x[10]+8.41*x[11]+6.76*x[12] >= 82.261)
@NLconstraint(m, e7, 2.45*x[1]*x[1]*x[7]*x[11]+3.14*x[1]-4.66*x[7]+1.44*x[11]+5.46*x[1]*x[4]*x[9]*x[12]+8.4*x[4]-5.94*x[9]+2.65*x[12]+5.64*x[1]*x[10]*x[10]*x[12]+6.33*x[10]+1.87*x[3]*x[3]*x[11]*x[12]+5.34*x[3]+7.23*x[2]+6.04*x[5]+7.61*x[6]+8.71*x[8] >= 396.008)
@NLconstraint(m, e8, 7.97*x[1]*x[1]*x[7]*x[11]-8.14*x[1]+0.65*x[7]+5.23*x[11]+8.67*x[1]*x[4]*x[9]*x[12]+7.78*x[4]+5.93*x[9]+0.66*x[12]+3.89*x[1]*x[10]*x[10]*x[12]+8.84*x[10]+3.63*x[3]*x[3]*x[11]*x[12]+3.58*x[3]+9.45*x[1]*x[5]*x[7]*x[8]*x[9]+5.63*x[5]+5.75*x[8]+0.44*x[2]*x[4]*x[9]*x[10]*x[11]+6.39*x[2]+3.46*x[6] >= 1182.287)
@constraint(m, e9, 7.85*x[1]+0.05*x[2]+8.9*x[3]+1.61*x[4]+0.65*x[5]+8.81*x[6]+9*x[7]+9.53*x[8]+7.13*x[9]+2.84*x[10]+1.15*x[11]+2.51*x[12] >= 101.034)
@NLconstraint(m, e10, -(4.56*x[1]*x[1]*x[7]*x[11]+3.77*x[1]+0.33*x[7]+2.35*x[11]+9.5*x[1]*x[4]*x[9]*x[12]+4.58*x[4]+1.79*x[9]-3.42*x[12]+4.83*x[1]*x[10]*x[10]*x[12]+5.14*x[10]+9.8*x[3]*x[3]*x[11]*x[12]+7.66*x[3]+9*x[1]*x[5]*x[7]*x[8]*x[9]+8.9*x[5]-5.06*x[8]+9.99*x[2]*x[4]*x[9]*x[10]*x[11]+4.41*x[2])-4.43*x[6]+x[13] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[13])

 
