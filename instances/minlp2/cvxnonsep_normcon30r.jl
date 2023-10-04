using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, 0 <= i[i_Idx] <= 5, Int)
for j in 16:30
	set_lower_bound(x[j], 0)
	set_upper_bound(x[j], 5)
end

# ----- Constraints ----- #
@constraint(m, e1, x[32]+x[33]+x[34]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]+x[41]+x[42]+x[43]+x[44]+x[45]+x[46]+x[47]+x[48]+x[49]+x[50]+x[51]+x[52]+x[53]+x[54]+x[55]+x[56]+x[57]+x[58]+x[59]+x[60]+x[61] <= 99.9999)
@constraint(m, e2, -0.95*i[1]-0.92*i[2]-0.055*i[3]-0.74*i[4]-0.27*i[5]-0.42*i[6]-0.55*i[7]-0.945*i[8]-0.42*i[9]-0.985*i[10]-0.3*i[11]-0.7*i[12]-0.665*i[13]-0.54*i[14]-0.7*i[15]-0.665*x[16]-0.18*x[17]-0.13*x[18]-x[19]-0.17*x[20]-0.035*x[21]-0.56*x[22]-0.88*x[23]-0.67*x[24]-0.19*x[25]-0.37*x[26]-0.46*x[27]-0.98*x[28]-0.155*x[29]-0.855*x[30]-objvar == 0.0)
@NLconstraint(m, e3,  (i[1])^2-x[32] <= 0.0)
@NLconstraint(m, e4,  (i[2])^2-x[33] <= 0.0)
@NLconstraint(m, e5,  (i[3])^2-x[34] <= 0.0)
@NLconstraint(m, e6,  (i[4])^2-x[35] <= 0.0)
@NLconstraint(m, e7,  (i[5])^2-x[36] <= 0.0)
@NLconstraint(m, e8,  (i[6])^2-x[37] <= 0.0)
@NLconstraint(m, e9,  (i[7])^2-x[38] <= 0.0)
@NLconstraint(m, e10,  (i[8])^2-x[39] <= 0.0)
@NLconstraint(m, e11,  (i[9])^2-x[40] <= 0.0)
@NLconstraint(m, e12,  (i[10])^2-x[41] <= 0.0)
@NLconstraint(m, e13,  (i[11])^2-x[42] <= 0.0)
@NLconstraint(m, e14,  (i[12])^2-x[43] <= 0.0)
@NLconstraint(m, e15,  (i[13])^2-x[44] <= 0.0)
@NLconstraint(m, e16,  (i[14])^2-x[45] <= 0.0)
@NLconstraint(m, e17,  (i[15])^2-x[46] <= 0.0)
@NLconstraint(m, e18,  (x[16])^2-x[47] <= 0.0)
@NLconstraint(m, e19,  (x[17])^2-x[48] <= 0.0)
@NLconstraint(m, e20,  (x[18])^2-x[49] <= 0.0)
@NLconstraint(m, e21,  (x[19])^2-x[50] <= 0.0)
@NLconstraint(m, e22,  (x[20])^2-x[51] <= 0.0)
@NLconstraint(m, e23,  (x[21])^2-x[52] <= 0.0)
@NLconstraint(m, e24,  (x[22])^2-x[53] <= 0.0)
@NLconstraint(m, e25,  (x[23])^2-x[54] <= 0.0)
@NLconstraint(m, e26,  (x[24])^2-x[55] <= 0.0)
@NLconstraint(m, e27,  (x[25])^2-x[56] <= 0.0)
@NLconstraint(m, e28,  (x[26])^2-x[57] <= 0.0)
@NLconstraint(m, e29,  (x[27])^2-x[58] <= 0.0)
@NLconstraint(m, e30,  (x[28])^2-x[59] <= 0.0)
@NLconstraint(m, e31,  (x[29])^2-x[60] <= 0.0)
@NLconstraint(m, e32,  (x[30])^2-x[61] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
