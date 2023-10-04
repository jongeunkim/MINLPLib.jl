using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, 0 <= i[i_Idx] <= 5, Int)
for j in 16:30
	set_lower_bound(x[j], 0)
	set_upper_bound(x[j], 5)
end


# ----- Constraints ----- #
@constraint(m, e1, 0.52*i[1]+0.94*i[2]+0.64*i[3]+0.96*i[4]+0.24*i[5]+0.68*i[6]+0.29*i[7]+0.67*i[8]+0.7*i[9]+0.07*i[10]+0.25*i[11]+0.22*i[12]+0.67*i[13]+0.84*i[14]+0.34*i[15]+0.78*x[16]+0.68*x[17]+0.01*x[18]+0.6*x[19]+0.39*x[20]+0.92*x[21]+0.1*x[22]+0.46*x[23]+0.77*x[24]+0.32*x[25]+0.78*x[26]+0.37*x[27]+0.78*x[28]+0.47*x[29]+0.04*x[30]+objvar == 0.0)
@constraint(m, e2, x[32]+x[33]+x[34]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]+x[41]+x[42]+x[43]+x[44]+x[45]+x[46]+x[47]+x[48]+x[49]+x[50]+x[51]+x[52]+x[53]+x[54]+x[55]+x[56]+x[57]+x[58]+x[59]+x[60] <= 360.0)
@NLconstraint(m, e3, 2^(i[1]+i[2])-x[32] <= 0.0)
@NLconstraint(m, e4, 2^(i[2]+i[3])-x[33] <= 0.0)
@NLconstraint(m, e5, 2^(i[3]+i[4])-x[34] <= 0.0)
@NLconstraint(m, e6, 2^(i[4]+i[5])-x[35] <= 0.0)
@NLconstraint(m, e7, 2^(i[5]+i[6])-x[36] <= 0.0)
@NLconstraint(m, e8, 2^(i[6]+i[7])-x[37] <= 0.0)
@NLconstraint(m, e9, 2^(i[7]+i[8])-x[38] <= 0.0)
@NLconstraint(m, e10, 2^(i[8]+i[9])-x[39] <= 0.0)
@NLconstraint(m, e11, 2^(i[9]+i[10])-x[40] <= 0.0)
@NLconstraint(m, e12, 2^(i[10]+i[11])-x[41] <= 0.0)
@NLconstraint(m, e13, 2^(i[11]+i[12])-x[42] <= 0.0)
@NLconstraint(m, e14, 2^(i[12]+i[13])-x[43] <= 0.0)
@NLconstraint(m, e15, 2^(i[13]+i[14])-x[44] <= 0.0)
@NLconstraint(m, e16, 2^(i[14]+i[15])-x[45] <= 0.0)
@NLconstraint(m, e17, 2^(i[15]+x[16])-x[46] <= 0.0)
@NLconstraint(m, e18, 2^(x[16]+x[17])-x[47] <= 0.0)
@NLconstraint(m, e19, 2^(x[17]+x[18])-x[48] <= 0.0)
@NLconstraint(m, e20, 2^(x[18]+x[19])-x[49] <= 0.0)
@NLconstraint(m, e21, 2^(x[19]+x[20])-x[50] <= 0.0)
@NLconstraint(m, e22, 2^(x[20]+x[21])-x[51] <= 0.0)
@NLconstraint(m, e23, 2^(x[21]+x[22])-x[52] <= 0.0)
@NLconstraint(m, e24, 2^(x[22]+x[23])-x[53] <= 0.0)
@NLconstraint(m, e25, 2^(x[23]+x[24])-x[54] <= 0.0)
@NLconstraint(m, e26, 2^(x[24]+x[25])-x[55] <= 0.0)
@NLconstraint(m, e27, 2^(x[25]+x[26])-x[56] <= 0.0)
@NLconstraint(m, e28, 2^(x[26]+x[27])-x[57] <= 0.0)
@NLconstraint(m, e29, 2^(x[27]+x[28])-x[58] <= 0.0)
@NLconstraint(m, e30, 2^(x[28]+x[29])-x[59] <= 0.0)
@NLconstraint(m, e31, 2^(x[29]+x[30])-x[60] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
