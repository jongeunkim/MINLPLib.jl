using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
b_Idx = Any[3]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[1], 0.2)
set_upper_bound(x[1], 1.0)
set_lower_bound(x[2], -2.22554)
set_upper_bound(x[2], -1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -exp(x[1]-0.2)-x[2] <= 0.0)
@constraint(m, e2, x[2]+1.1*b[3] <= -1.0)
@constraint(m, e3, x[1]-1.2*b[3] <= 0.0)
@NLconstraint(m, e4, -5* (x[1]-0.5)^2+0.7*b[3]+objvar == 0.8)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
