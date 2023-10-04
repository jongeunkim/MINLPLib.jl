using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, 1 <= i[i_Idx] <= 10, Int)
for j in 21:40
	set_lower_bound(x[j], 1e-5)
	set_upper_bound(x[j], 10)
end


# ----- Constraints ----- #
@constraint(m, e1, 1.1*i[1]+1.86*i[2]+0.86*i[3]+1.23*i[4]+0.72*i[5]+0.47*i[6]+0.98*i[7]+0.39*i[8]+0.25*i[9]+0.41*i[10]+0.29*i[11]+0.38*i[12]+1.49*i[13]+1.27*i[14]+0.56*i[15]+1.08*i[16]+1.39*i[17]+i[18]+1.37*i[19]+0.89*i[20]+0.25*x[21]+0.98*x[22]+1.71*x[23]+1.75*x[24]+0.54*x[25]+0.42*x[26]+1.13*x[27]+1.28*x[28]+0.83*x[29]+0.41*x[30]+1.9*x[31]+0.16*x[32]+0.21*x[33]+0.28*x[34]+0.33*x[35]+1.24*x[36]+1.15*x[37]+0.1*x[38]+1.86*x[39]+1.46*x[40]-objvar == 0.0)
@constraint(m, e2, x[42]+x[43]+x[44]+x[45]+x[46]+x[47]+x[48]+x[49]+x[50]+x[51]+x[52]+x[53]+x[54]+x[55]+x[56]+x[57]+x[58]+x[59]+x[60]+x[61]+x[62]+x[63]+x[64]+x[65]+x[66]+x[67]+x[68]+x[69]+x[70]+x[71]+x[72]+x[73]+x[74]+x[75]+x[76]+x[77]+x[78]+x[79]+x[80]+x[81] <= -1.6094379124341)
@NLconstraint(m, e3, -0.035*log(i[1])-x[42] <= 0.0)
@NLconstraint(m, e4, -0.003*log(i[2])-x[43] <= 0.0)
@NLconstraint(m, e5, -0.04*log(i[3])-x[44] <= 0.0)
@NLconstraint(m, e6, -0.044*log(i[4])-x[45] <= 0.0)
@NLconstraint(m, e7, -0.046*log(i[5])-x[46] <= 0.0)
@NLconstraint(m, e8, -0.04*log(i[6])-x[47] <= 0.0)
@NLconstraint(m, e9, -0.037*log(i[7])-x[48] <= 0.0)
@NLconstraint(m, e10, -0.024*log(i[8])-x[49] <= 0.0)
@NLconstraint(m, e11, -0.008*log(i[9])-x[50] <= 0.0)
@NLconstraint(m, e12, -0.019*log(i[10])-x[51] <= 0.0)
@NLconstraint(m, e13, -0.006*log(i[11])-x[52] <= 0.0)
@NLconstraint(m, e14, -0.001*log(i[12])-x[53] <= 0.0)
@NLconstraint(m, e15, -0.044*log(i[13])-x[54] <= 0.0)
@NLconstraint(m, e16, -0.014*log(i[14])-x[55] <= 0.0)
@NLconstraint(m, e17, -0.014*log(i[15])-x[56] <= 0.0)
@NLconstraint(m, e18, -0.016*log(i[16])-x[57] <= 0.0)
@NLconstraint(m, e19, -0.022*log(i[17])-x[58] <= 0.0)
@NLconstraint(m, e20, -0.03*log(i[18])-x[59] <= 0.0)
@NLconstraint(m, e21, -0.001*log(i[19])-x[60] <= 0.0)
@NLconstraint(m, e22, -0.039*log(i[20])-x[61] <= 0.0)
@NLconstraint(m, e23, -0.026*log(x[21])-x[62] <= 0.0)
@NLconstraint(m, e24, -0.04*log(x[22])-x[63] <= 0.0)
@NLconstraint(m, e25, -0.016*log(x[23])-x[64] <= 0.0)
@NLconstraint(m, e26, -log(x[24]^0.021)-x[65] <= 0.0)
@NLconstraint(m, e27, -log(x[25]^0.003)-x[66] <= 0.0)
@NLconstraint(m, e28, -0.008*log(x[26])-x[67] <= 0.0)
@NLconstraint(m, e29, -0.031*log(x[27])-x[68] <= 0.0)
@NLconstraint(m, e30, -0.015*log(x[28])-x[69] <= 0.0)
@NLconstraint(m, e31, -0.042*log(x[29])-x[70] <= 0.0)
@NLconstraint(m, e32, -0.006*log(x[30])-x[71] <= 0.0)
@NLconstraint(m, e33, -0.046*log(x[31])-x[72] <= 0.0)
@NLconstraint(m, e34, -0.025*log(x[32])-x[73] <= 0.0)
@NLconstraint(m, e35, -0.033*log(x[33])-x[74] <= 0.0)
@NLconstraint(m, e36, -0.047*log(x[34])-x[75] <= 0.0)
@NLconstraint(m, e37, -0.013*log(x[35])-x[76] <= 0.0)
@NLconstraint(m, e38, -0.019*log(x[36])-x[77] <= 0.0)
@NLconstraint(m, e39, -0.022*log(x[37])-x[78] <= 0.0)
@NLconstraint(m, e40, -0.036*log(x[38])-x[79] <= 0.0)
@NLconstraint(m, e41, -0.038*log(x[39])-x[80] <= 0.0)
@NLconstraint(m, e42, -0.005*log(x[40])-x[81] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
