using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -((0.69+x[1]+x[2])*(0.69+x[1]+x[2])+(0.044+x[3]+x[4])*(0.044+x[3]+x[4])+(1.57+x[5]*x[1]+x[6]*x[2]-x[7]*x[3]-x[8]*x[4])*(1.57+x[5]*x[1]+x[6]*x[2]-x[7]*x[3]-x[8]*x[4])+(1.31+x[7]*x[1]+x[8]*x[2]+x[5]*x[3]+x[6]*x[4])*(1.31+x[7]*x[1]+x[8]*x[2]+x[5]*x[3]+x[6]*x[4])+(2.65+(x[5]*x[5]-x[7]*x[7])*x[1]-2*x[3]*x[5]*x[7]+(x[6]*x[6]-x[8]*x[8])*x[2]-2*x[4]*x[6]*x[8])*(2.65+(x[5]*x[5]-x[7]*x[7])*x[1]-2*x[3]*x[5]*x[7]+(x[6]*x[6]-x[8]*x[8])*x[2]-2*x[4]*x[6]*x[8])+(-2+(x[5]*x[5]-x[7]*x[7])*x[3]+2*x[1]*x[5]*x[7]+(x[6]*x[6]-x[8]*x[8])*x[4]+2*x[2]*x[6]*x[8])*(-2+(x[5]*x[5]-x[7]*x[7])*x[3]+2*x[1]*x[5]*x[7]+(x[6]*x[6]-x[8]*x[8])*x[4]+2*x[2]*x[6]*x[8])+(12.6+x[1]*x[5]*(x[5]*x[5]-3*x[7]*x[7])+x[3]*x[7]*(x[7]*x[7]-3*x[5]*x[5])+x[2]*x[6]*(x[6]*x[6]-3*x[8]*x[8])+x[4]*x[8]*(x[8]*x[8]-3*x[6]*x[6]))*(12.6+x[1]*x[5]*(x[5]*x[5]-3*x[7]*x[7])+x[3]*x[7]*(x[7]*x[7]-3*x[5]*x[5])+x[2]*x[6]*(x[6]*x[6]-3*x[8]*x[8])+x[4]*x[8]*(x[8]*x[8]-3*x[6]*x[6]))+(-9.48+x[3]*x[5]*(x[5]*x[5]-3*x[7]*x[7])-x[1]*x[7]*(x[7]*x[7]-3*x[5]*x[5])+x[4]*x[6]*(x[6]*x[6]-3*x[8]*x[8])-x[2]*x[8]*(x[8]*x[8]-3*x[6]*x[6]))*(-9.48+x[3]*x[5]*(x[5]*x[5]-3*x[7]*x[7])-x[1]*x[7]*(x[7]*x[7]-3*x[5]*x[5])+x[4]*x[6]*(x[6]*x[6]-3*x[8]*x[8])-x[2]*x[8]*(x[8]*x[8]-3*x[6]*x[6])))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
