using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx] >= 0)
set_upper_bound(x[1], 3.0)
set_upper_bound(x[2], 4.0)
set_upper_bound(x[3], 4.0)
set_upper_bound(x[4], 2.0)
set_upper_bound(x[5], 2.0)
set_upper_bound(x[6], 6.0)


# ----- Constraints ----- #
@constraint(m, e1, -3*x[1]+x[2]-3*x[4] == 0.0)
@constraint(m, e2, -2*x[2]+x[3]-2*x[5] == 0.0)
@constraint(m, e3, 4*x[4]-x[6] == 0.0)
@constraint(m, e4, x[1]+2*x[4] <= 4.0)
@constraint(m, e5, x[2]+x[5] <= 4.0)
@constraint(m, e6, x[3]+x[6] <= 6.0)
@NLconstraint(m, e7, -(x[1]^0.6+x[2]^0.6+x[3]^0.4-4*x[3])-2*x[4]-5*x[5]+x[6]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
