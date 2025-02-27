using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -2.0)
set_upper_bound(x[1], 2.0)
set_lower_bound(x[2], -2.0)
set_upper_bound(x[2], 2.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, (-0.5*exp(-100*( (x[1])^2+ (x[2])^2)))-1.2*exp(-4*( ((-1)+x[1])^2+ (x[2])^2))-exp(-4*( (x[1])^2+ (0.5+x[2])^2))-exp(-4*( (0.5+x[1])^2+ (x[2])^2))-1.2*exp(-4*( (x[1])^2+ ((-1)+x[2])^2))-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
