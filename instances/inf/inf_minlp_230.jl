using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 3]
@variable(m, x[x_Idx])
i_Idx = Any[2]
@variable(m, i[i_Idx], Int)
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_lower_bound(i[2], 1.0)
set_upper_bound(i[2], 100.0)
set_lower_bound(x[3], 0.135335283236612)
set_upper_bound(x[3], 0.5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -5000*(10+log(1/x[3]))*i[2]+x[1] == 0.0)
@NLconstraint(m, e2, 5000*(10+log(1/x[3]))*i[2] <= 2.0e6)
@NLconstraint(m, e3, i[2]*(1-x[3])-sqrt(7.82404601085629*i[2]*(1-x[3]))-0.5*i[2] >= 1.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
