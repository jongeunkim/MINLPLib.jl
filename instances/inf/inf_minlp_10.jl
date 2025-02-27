using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 6, 7, 8, 9, 10, 11, 12]
@variable(m, x[x_Idx])
i_Idx = Any[2, 3, 4, 5]
@variable(m, 1 <= i[i_Idx] <= 10, Int)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[6], 0.5)
set_upper_bound(x[6], 0.99999)
set_lower_bound(x[7], 0.5)
set_upper_bound(x[7], 0.99999)
set_lower_bound(x[8], 0.5)
set_upper_bound(x[8], 0.99999)
set_lower_bound(x[9], 0.5)
set_upper_bound(x[9], 0.99999)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.5*x[10]^10+0.25*x[11]^10+0.25*x[12]^10)^0.1+x[1] == 0.0)
@NLconstraint(m, e2, 8000000000*(6*exp(0.25*i[2])*i[2]+6*exp(0.25*i[3])*i[3]+8*exp(0.25*i[4])*i[4]+7*exp(0.25*i[5])*i[5])-x[10] <= 500.0)
@NLconstraint(m, e3, 100000*(-1000/log(x[6]))^1.5*(exp(0.25*i[2])+i[2])+230000*(-1000/log(x[7]))^1.5*(exp(0.25*i[3])+i[3])+30000*(-1000/log(x[8]))^1.5*(exp(0.25*i[4])+i[4])+230000*(-1000/log(x[9]))^1.5*(exp(0.25*i[5])+i[5])-x[11] <= 4.0e12)
@NLconstraint(m, e4, 5333333333333.33*(1-(1-x[6])^i[2])*(1-(1-x[7])^i[3])*(1-(1-x[8])^i[4])*(1-(1-x[9])^i[5])-x[12] >= 0.75)


# ----- Objective ----- #
@objective(m, Max, x[1])

 
