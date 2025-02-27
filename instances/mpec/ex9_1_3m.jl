using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-8*x[2]-4*x[3] == 40.0)
@constraint(m, e2, x[4]-x[5]-x[6]-x[10] == -1.0)
@constraint(m, e3, -2*x[2]+x[4]-2*x[5]+0.5*x[6]-x[11] == -1.0)
@constraint(m, e4, -2*x[3]-2*x[4]+x[5]+0.5*x[6]-x[12] == -1.0)
@constraint(m, e5, -x[7]-x[8]+2*x[9]-x[13] == -1.0)
@constraint(m, e6, x[7]+2*x[8]-x[9]-x[14] == -1.0)
@constraint(m, e7, x[7]-0.5*x[8]-0.5*x[9]-x[15] == -2.0)
@NLconstraint(m, e8, x[10]*x[7] == 0.0)
@NLconstraint(m, e9, x[11]*x[8] == 0.0)
@NLconstraint(m, e10, x[12]*x[9] == 0.0)
@NLconstraint(m, e11, x[13]*x[4] == 0.0)
@NLconstraint(m, e12, x[14]*x[5] == 0.0)
@NLconstraint(m, e13, x[15]*x[6] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
