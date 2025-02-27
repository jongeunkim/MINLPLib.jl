using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
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


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-x[2]-x[3]-x[4] >= -3.0)
@constraint(m, e2, -x[5]-x[6]-x[7]-x[8] >= -6.0)
@constraint(m, e3, -x[9]-x[10]-x[11]-x[12] >= -10.0)
@constraint(m, e4, -x[13]-x[14]-x[15]-x[16] >= -2000.0)
@constraint(m, e5, -x[17]-x[18]-x[19]-x[20] >= -18.0)
@constraint(m, e6, x[1]-x[21]+x[22] == 1.0)
@constraint(m, e7, x[2]-x[23]+x[24] == 1.0)
@constraint(m, e8, x[3]-x[25]+x[26] == 1.0)
@constraint(m, e9, x[4]-x[27]+x[28] == 1.0)
@constraint(m, e10, x[5]+x[21]-x[29]+x[30] == 2.667)
@constraint(m, e11, x[6]+x[23]-x[31]+x[32] == 1.667)
@constraint(m, e12, x[7]+x[25]-x[33]+x[34] == 2.667)
@constraint(m, e13, x[8]+x[27]-x[35]+x[36] == 3.333)
@constraint(m, e14, x[9]+x[29]-x[37]+x[38] == 2.667)
@constraint(m, e15, x[10]+x[31]-x[39]+x[40] == 2.0)
@constraint(m, e16, x[11]+x[33]-x[41]+x[42] == 3.0)
@constraint(m, e17, x[12]+x[35]-x[43]+x[44] == 3.0)
@constraint(m, e18, x[13]+x[37]-x[45]+x[46] == 2.667)
@constraint(m, e19, x[14]+x[39]-x[47]+x[48] == 2.667)
@constraint(m, e20, x[15]+x[41]-x[49]+x[50] == 2.667)
@constraint(m, e21, x[16]+x[43]-x[51]+x[52] == 2.667)
@constraint(m, e22, x[17]+x[45]-x[53]+x[54] == 2.667)
@constraint(m, e23, x[18]+x[47]-x[55]+x[56] == 2.333)
@constraint(m, e24, x[19]+x[49]-x[57]+x[58] == 2.333)
@constraint(m, e25, x[20]+x[51]-x[59]+x[60] == 2.333)
@NLconstraint(m, e26, -( (x[4]-x[3]+x[7]+x[8])^2-0.1* (x[3]+x[4])^2) >= 0.0)
@NLconstraint(m, e27, -( (x[8]-x[7]+x[11]+x[12])^2-0.1* (x[7]+x[8])^2) >= 0.0)
@NLconstraint(m, e28, -( (x[12]-x[11]+x[15]+x[16])^2-0.1* (x[11]+x[12])^2) >= 0.0)
@NLconstraint(m, e29, -( (x[16]-x[15]+x[19]+x[20])^2-0.1* (x[15]+x[16])^2) >= 0.0)
@constraint(m, e30, -x[21]-2*x[22]-2*x[23]-3*x[24]-3*x[25]-2*x[26]-4*x[27]-5*x[28]-x[29]-2*x[30]-2*x[31]-3*x[32]-3*x[33]-2*x[34]-4*x[35]-5*x[36]-x[37]-2*x[38]-2*x[39]-3*x[40]-3*x[41]-2*x[42]-4*x[43]-5*x[44]-x[45]-2*x[46]-2*x[47]-3*x[48]-3*x[49]-2*x[50]-4*x[51]-5*x[52]-x[53]-2*x[54]-2*x[55]-3*x[56]-3*x[57]-2*x[58]-4*x[59]-5*x[60]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
