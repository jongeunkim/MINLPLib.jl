using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -2.0)
set_upper_bound(x[1], 11.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1])^6-2.08* (x[1])^5+0.4875* (x[1])^4+7.1* (x[1])^3-3.95* (x[1])^2-x[1])+objvar == 0.1)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
