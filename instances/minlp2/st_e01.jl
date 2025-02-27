using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx] >= 0)
set_upper_bound(x[1], 6.0)
set_upper_bound(x[2], 4.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[1]*x[2] <= 4.0)
@constraint(m, e2, x[1]+x[2]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
