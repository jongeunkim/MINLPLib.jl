using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, 0 <= i[i_Idx] <= 5, Int)
for j in 21:40
	set_lower_bound(x[j], 0)
	set_upper_bound(x[j], 5)
end


# ----- Constraints ----- #
@constraint(m, e1, 0.18*i[1]+0.72*i[2]+0.47*i[3]+0.15*i[4]+0.34*i[5]+0.61*i[6]+0.19*i[7]+0.74*i[8]+0.24*i[9]+0.92*i[10]+0.27*i[11]+0.77*i[12]+0.19*i[13]+0.29*i[14]+0.09*i[15]+0.58*i[16]+0.68*i[17]+0.55*i[18]+0.43*i[19]+0.64*i[20]+0.65*x[21]+0.68*x[22]+0.64*x[23]+0.95*x[24]+0.21*x[25]+0.71*x[26]+0.24*x[27]+0.12*x[28]+0.61*x[29]+0.45*x[30]+0.46*x[31]+0.66*x[32]+0.77*x[33]+0.35*x[34]+0.66*x[35]+0.42*x[36]+0.84*x[37]+0.83*x[38]+0.26*x[39]+0.61*x[40]+objvar == 0.0)
@constraint(m, e2, x[42]+x[43]+x[44]+x[45]+x[46]+x[47]+x[48]+x[49]+x[50]+x[51]+x[52]+x[53]+x[54]+x[55]+x[56]+x[57]+x[58]+x[59]+x[60]+x[61]+x[62]+x[63]+x[64]+x[65]+x[66]+x[67]+x[68]+x[69]+x[70]+x[71]+x[72]+x[73]+x[74]+x[75]+x[76]+x[77]+x[78]+x[79]+x[80] <= 480.0)
@NLconstraint(m, e3, 2^(i[1]+i[2])-x[42] <= 0.0)
@NLconstraint(m, e4, 2^(i[2]+i[3])-x[43] <= 0.0)
@NLconstraint(m, e5, 2^(i[3]+i[4])-x[44] <= 0.0)
@NLconstraint(m, e6, 2^(i[4]+i[5])-x[45] <= 0.0)
@NLconstraint(m, e7, 2^(i[5]+i[6])-x[46] <= 0.0)
@NLconstraint(m, e8, 2^(i[6]+i[7])-x[47] <= 0.0)
@NLconstraint(m, e9, 2^(i[7]+i[8])-x[48] <= 0.0)
@NLconstraint(m, e10, 2^(i[8]+i[9])-x[49] <= 0.0)
@NLconstraint(m, e11, 2^(i[9]+i[10])-x[50] <= 0.0)
@NLconstraint(m, e12, 2^(i[10]+i[11])-x[51] <= 0.0)
@NLconstraint(m, e13, 2^(i[11]+i[12])-x[52] <= 0.0)
@NLconstraint(m, e14, 2^(i[12]+i[13])-x[53] <= 0.0)
@NLconstraint(m, e15, 2^(i[13]+i[14])-x[54] <= 0.0)
@NLconstraint(m, e16, 2^(i[14]+i[15])-x[55] <= 0.0)
@NLconstraint(m, e17, 2^(i[15]+i[16])-x[56] <= 0.0)
@NLconstraint(m, e18, 2^(i[16]+i[17])-x[57] <= 0.0)
@NLconstraint(m, e19, 2^(i[17]+i[18])-x[58] <= 0.0)
@NLconstraint(m, e20, 2^(i[18]+i[19])-x[59] <= 0.0)
@NLconstraint(m, e21, 2^(i[19]+i[20])-x[60] <= 0.0)
@NLconstraint(m, e22, 2^(i[20]+x[21])-x[61] <= 0.0)
@NLconstraint(m, e23, 2^(x[21]+x[22])-x[62] <= 0.0)
@NLconstraint(m, e24, 2^(x[22]+x[23])-x[63] <= 0.0)
@NLconstraint(m, e25, 2^(x[23]+x[24])-x[64] <= 0.0)
@NLconstraint(m, e26, 2^(x[24]+x[25])-x[65] <= 0.0)
@NLconstraint(m, e27, 2^(x[25]+x[26])-x[66] <= 0.0)
@NLconstraint(m, e28, 2^(x[26]+x[27])-x[67] <= 0.0)
@NLconstraint(m, e29, 2^(x[27]+x[28])-x[68] <= 0.0)
@NLconstraint(m, e30, 2^(x[28]+x[29])-x[69] <= 0.0)
@NLconstraint(m, e31, 2^(x[29]+x[30])-x[70] <= 0.0)
@NLconstraint(m, e32, 2^(x[30]+x[31])-x[71] <= 0.0)
@NLconstraint(m, e33, 2^(x[31]+x[32])-x[72] <= 0.0)
@NLconstraint(m, e34, 2^(x[32]+x[33])-x[73] <= 0.0)
@NLconstraint(m, e35, 2^(x[33]+x[34])-x[74] <= 0.0)
@NLconstraint(m, e36, 2^(x[34]+x[35])-x[75] <= 0.0)
@NLconstraint(m, e37, 2^(x[35]+x[36])-x[76] <= 0.0)
@NLconstraint(m, e38, 2^(x[36]+x[37])-x[77] <= 0.0)
@NLconstraint(m, e39, 2^(x[37]+x[38])-x[78] <= 0.0)
@NLconstraint(m, e40, 2^(x[38]+x[39])-x[79] <= 0.0)
@NLconstraint(m, e41, 2^(x[39]+x[40])-x[80] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
