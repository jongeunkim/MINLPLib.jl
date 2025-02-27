using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
set_lower_bound(x[2], 0.569362956798)
set_upper_bound(x[2], 0.569362956798)
set_lower_bound(x[3], 0.321423960495)
set_upper_bound(x[3], 0.321423960495)
set_lower_bound(x[4], 0.262298584597)
set_upper_bound(x[4], 0.262298584597)
set_lower_bound(x[5], 1.0e-12)
set_upper_bound(x[5], 1.0e-12)
set_lower_bound(x[6], 37.319469069482)
set_upper_bound(x[6], 37.319469069482)
set_lower_bound(x[7], -40.928866658957)
set_upper_bound(x[7], -40.928866658957)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(log(x[2])*x[2]+log(x[3])*x[3]+log(x[4])*x[4]+x[7]/(x[5]-x[7])-log(x[5]-x[7])-2*x[6]/x[5]+0.430983578191493*x[2]+3.80082402249182*x[3]+2.92297302249182*x[4])+x[1] == 0.0)
@NLconstraint(m, e2,  (x[5])^3- (x[5])^2*(1+x[7])+x[6]*x[5]-x[6]*x[7] == 0.0)
@NLconstraint(m, e3, -(0.37943*x[2]*x[2]+0.75885*x[2]*x[3]+0.48991*x[2]*x[4]+0.75885*x[3]*x[2]+0.8836*x[3]*x[3]+0.23612*x[3]*x[4]+0.48991*x[4]*x[2]+0.23612*x[4]*x[3]+0.63263*x[4]*x[4])+x[6] == 0.0)
@constraint(m, e4, -0.14998*x[2]-0.14998*x[3]-0.14998*x[4]+x[7] == 0.0)
@constraint(m, e5, x[2]+x[3]+x[4] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
