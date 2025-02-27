using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57]
@variable(m, x[x_Idx])
b_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, b[b_Idx],  Bin)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_upper_bound(x[16], 2.0)
set_upper_bound(x[18], 2.0)
set_upper_bound(x[22], 2.0)
set_upper_bound(x[23], 1.0)
set_upper_bound(x[27], 1.0)
set_upper_bound(x[30], 2.0)
set_upper_bound(x[32], 2.0)
set_upper_bound(x[34], 2.0)
set_upper_bound(x[38], 3.0)
set_upper_bound(x[39], 1.0)
set_upper_bound(x[40], 3.0)
set_upper_bound(x[41], 1.0)
set_upper_bound(x[42], 1.0)
set_upper_bound(x[43], 2.0)
set_upper_bound(x[44], 3.0)
set_upper_bound(x[45], 2.0)


# ----- Constraints ----- #
@constraint(m, e1, x[26]-x[32]-x[34]-x[39] == 0.0)
@constraint(m, e2, -x[22]-x[29]+x[30]-x[38] == 0.0)
@constraint(m, e3, x[24]-x[25]-x[28]-x[41] == 0.0)
@constraint(m, e4, x[16]+x[18]-x[19]-x[24]+x[44] == 0.0)
@constraint(m, e5, x[19]-x[20]-x[21] == 0.0)
@constraint(m, e6, -x[33]-x[35]+x[36]-x[40]-x[42] == 0.0)
@constraint(m, e7, -x[27]+x[36]-x[37] == 0.0)
@constraint(m, e8, x[14]-x[15]-x[17]-x[43] == 0.0)
@constraint(m, e9, x[23]-0.8*x[30] <= 0.0)
@constraint(m, e10, x[23]-0.4*x[30] >= 0.0)
@constraint(m, e11, x[25]-5*x[27] <= 0.0)
@constraint(m, e12, x[25]-2*x[27] >= 0.0)
@NLconstraint(m, e13, exp(x[16])-x[15] == 1.0)
@constraint(m, e14, x[15] == 0.0)
@constraint(m, e15, x[16] == 0.0)
@constraint(m, e16, x[46] == 5.0)
@NLconstraint(m, e17, exp(0.833333333333333*x[18])-x[17] == 1.0)
@constraint(m, e18, x[17] == 0.0)
@constraint(m, e19, x[18] == 0.0)
@constraint(m, e20, x[47] == 8.0)
@constraint(m, e21, -x[21]+1.5*x[22]+x[23] == 0.0)
@constraint(m, e22, x[22] == 0.0)
@constraint(m, e23, x[48] == 6.0)
@constraint(m, e24, 1.25*x[25]-x[26]+1.25*x[27] == 0.0)
@constraint(m, e25, x[25] == 0.0)
@constraint(m, e26, x[26] == 0.0)
@constraint(m, e27, x[27] == 0.0)
@constraint(m, e28, x[49] == 10.0)
@constraint(m, e29, x[28]-2*x[29] == 0.0)
@constraint(m, e30, x[28] == 0.0)
@constraint(m, e31, x[29] == 0.0)
@constraint(m, e32, x[50] == 6.0)
@NLconstraint(m, e33, exp(0.666666666666667*x[33])-x[32] == 1.0)
@constraint(m, e34, x[32] == 0.0)
@constraint(m, e35, x[33] == 0.0)
@constraint(m, e36, x[51] == 7.0)
@NLconstraint(m, e37, exp(x[35])-x[34] == 1.0)
@constraint(m, e38, x[34] == 0.0)
@constraint(m, e39, x[35] == 0.0)
@constraint(m, e40, x[52] == 4.0)
@NLconstraint(m, e41, exp(x[31])-x[23]-x[30] == 1.0)
@constraint(m, e42, x[23] == 0.0)
@constraint(m, e43, x[30] == 0.0)
@constraint(m, e44, x[31] == 0.0)
@constraint(m, e45, x[38] == 0.0)
@constraint(m, e46, x[53] == 5.0)
@NLconstraint(m, e47, exp(0.833333333333333*x[40])-x[39] == 1.0)
@constraint(m, e48, x[39] == 0.0)
@constraint(m, e49, x[40] == 0.0)
@constraint(m, e50, x[54] == 6.0)
@NLconstraint(m, e51, exp(x[45])-x[20] == 1.0)
@constraint(m, e52, x[45] == 0.0)
@constraint(m, e53, x[20] == 0.0)
@constraint(m, e54, x[55] == 3.0)
@NLconstraint(m, e55, exp(0.526315789473684*x[42])-x[41] == 1.0)
@constraint(m, e56, x[42] == 0.0)
@constraint(m, e57, x[41] == 0.0)
@constraint(m, e58, x[56] == 1.0)
@NLconstraint(m, e59, exp(0.909090909090909*x[44])-x[43] == 1.0)
@constraint(m, e60, x[44] == 0.0)
@constraint(m, e61, x[43] == 0.0)
@constraint(m, e62, x[57] == 7.0)
@constraint(m, e63, b[2]+b[3]+b[4]+b[5]+b[6]+b[7]+b[8]+b[9]+b[10]+b[11]+b[12]+b[13] <= 12.0)
@constraint(m, e64, x[1]-x[15]+10*x[16]-x[17]+15*x[18]+40*x[22]-15*x[23]-15*x[27]-80*x[30]+65*x[31]-25*x[32]+60*x[33]-35*x[34]+80*x[35]+35*x[38]+70*x[40]+65*x[42]-1.2*x[44]+2*x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57] == 122.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
