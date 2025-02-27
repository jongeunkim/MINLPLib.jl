using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-0.925959366733121)+x[1]*x[1]+x[2]*x[1]+x[3]*x[1])^2+ (0.157503469054834+x[1]*x[2]+x[2]*x[2]+x[3]*x[2])^2+ ((-0.837777972640949)+x[1]*x[3]+x[2]*x[3]+x[3]*x[3])^2+ (0.204157779584037+x[4]*x[4]+x[5]*x[4]+x[6]*x[4])^2+ (0.677059435087132+x[4]*x[5]+x[5]*x[5]+x[6]*x[5])^2+ ((-0.637322980962176)+x[4]*x[6]+x[5]*x[6]+x[6]*x[6])^2+ (0.264878547815076+x[7]*x[7]+x[8]*x[7]+x[9]*x[7])^2+ (0.701280412170914+x[7]*x[8]+x[8]*x[8]+x[9]*x[8])^2+ (0.515703483969531+x[7]*x[9]+x[8]*x[9]+x[9]*x[9])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
