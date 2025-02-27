using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.5* (1-x[2])^2-1.25*( (1-x[2])^2+ (1-x[1])^2)-3*x[1]-3*(0.0416666666666667* (x[1])^3+0.25*(1- (1-x[2])^2)*(1-x[1])+0.5* (1-x[2])^2*(1-0.5*x[1]-0.5*x[2])-0.166666666666667* (1-x[2])^3))-objvar == 4.5)
@constraint(m, e2, x[1]-x[2] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
