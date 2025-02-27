using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
set_lower_bound(x[2], 0.0)
set_lower_bound(x[1], -8.0)
set_upper_bound(x[1], 10.0)
set_upper_bound(x[2], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+x[2] <= 8.0)
@NLconstraint(m, e2, (- (x[1])^2)-2*x[1]+x[2] <= -2.0)
@NLconstraint(m, e3, -( (x[1])^4-14* (x[1])^2+24*x[1]- (x[2])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
