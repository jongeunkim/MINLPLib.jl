using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -10.0)
set_upper_bound(x[1], 5.0)
set_lower_bound(x[2], -10.0)
set_upper_bound(x[2], 20.0)


# ----- Constraints ----- #
@constraint(m, e1, 2*x[1]+x[2] <= 14.0)
@constraint(m, e2, x[1]+x[2] <= 10.0)
@constraint(m, e3, -4*x[1]+x[2] <= 0.0)
@constraint(m, e4, -2*x[1]-x[2] <= -6.0)
@constraint(m, e5, -x[1]-2*x[2] <= -6.0)
@constraint(m, e6, x[1]-x[2] <= 3.0)
@NLconstraint(m, e7, -x[3]*x[4]+objvar == 0.0)
@constraint(m, e8, x[1]+x[2]-x[3] == 0.0)
@constraint(m, e9, x[1]-x[2]-x[4] == -7.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
