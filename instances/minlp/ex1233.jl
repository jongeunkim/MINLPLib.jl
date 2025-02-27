using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40]
@variable(m, x[x_Idx])
b_Idx = Any[41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[1], 370.0)
set_upper_bound(x[1], 650.0)
set_lower_bound(x[2], 370.0)
set_upper_bound(x[2], 650.0)
set_lower_bound(x[3], 370.0)
set_upper_bound(x[3], 650.0)
set_lower_bound(x[4], 370.0)
set_upper_bound(x[4], 590.0)
set_lower_bound(x[5], 370.0)
set_upper_bound(x[5], 590.0)
set_lower_bound(x[6], 370.0)
set_upper_bound(x[6], 590.0)
set_lower_bound(x[7], 410.0)
set_upper_bound(x[7], 650.0)
set_lower_bound(x[8], 410.0)
set_upper_bound(x[8], 650.0)
set_lower_bound(x[9], 410.0)
set_upper_bound(x[9], 650.0)
set_lower_bound(x[10], 350.0)
set_upper_bound(x[10], 500.0)
set_lower_bound(x[11], 350.0)
set_upper_bound(x[11], 500.0)
set_lower_bound(x[12], 350.0)
set_upper_bound(x[12], 500.0)
set_lower_bound(x[25], 10.0)
set_lower_bound(x[26], 10.0)
set_lower_bound(x[27], 10.0)
set_lower_bound(x[28], 10.0)
set_lower_bound(x[29], 10.0)
set_lower_bound(x[30], 10.0)
set_lower_bound(x[31], 10.0)
set_lower_bound(x[32], 10.0)
set_lower_bound(x[33], 10.0)
set_lower_bound(x[34], 10.0)
set_lower_bound(x[35], 10.0)
set_lower_bound(x[36], 10.0)
set_lower_bound(x[37], 10.0)
set_lower_bound(x[38], 10.0)
set_lower_bound(x[39], 10.0)
set_lower_bound(x[40], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(300*x[13]/(0.5*x[25]*x[26]*(x[25]+x[26]))^0.3333+300*x[14]/(0.5*x[26]*x[27]*(x[26]+x[27]))^0.3333+300*x[15]/(0.5*x[28]*x[29]*(x[28]+x[29]))^0.3333+300*x[16]/(0.5*x[29]*x[30]*(x[29]+x[30]))^0.3333+300*x[17]/(0.5*x[31]*x[32]*(x[31]+x[32]))^0.3333+300*x[18]/(0.5*x[32]*x[33]*(x[32]+x[33]))^0.3333+300*x[19]/(0.5*x[34]*x[35]*(x[34]+x[35]))^0.3333+300*x[20]/(0.5*x[35]*x[36]*(x[35]+x[36]))^0.3333+300*x[21]/(35*x[37]*(70+x[37]))^0.33333+300*x[22]/(35*x[38]*(70+x[38]))^0.33333+180*x[23]/(15*x[39]*(30+x[39]))^0.33333+180*x[24]/(90*x[40]*(180+x[40]))^0.33333+80*x[23]+80*x[24]+15*x[21]+15*x[22])-5500*b[41]-5500*b[42]-5500*b[43]-5500*b[44]-5500*b[45]-5500*b[46]-5500*b[47]-5500*b[48]-5500*b[49]-5500*b[50]-5500*b[51]-5500*b[52]+objvar == 0.0)
@constraint(m, e2, x[13]+x[14]+x[15]+x[16]+x[21] == 2800.0)
@constraint(m, e3, x[17]+x[18]+x[19]+x[20]+x[22] == 4400.0)
@constraint(m, e4, x[13]+x[14]+x[17]+x[18]+x[23] == 3600.0)
@constraint(m, e5, x[15]+x[16]+x[19]+x[20]+x[24] == 1950.0)
@constraint(m, e6, 10*x[1]-10*x[2]-x[13]-x[15] == 0.0)
@constraint(m, e7, 10*x[2]-10*x[3]-x[14]-x[16] == 0.0)
@constraint(m, e8, 20*x[4]-20*x[5]-x[17]-x[19] == 0.0)
@constraint(m, e9, 20*x[5]-20*x[6]-x[18]-x[20] == 0.0)
@constraint(m, e10, 15*x[7]-15*x[8]-x[13]-x[17] == 0.0)
@constraint(m, e11, 15*x[8]-15*x[9]-x[14]-x[18] == 0.0)
@constraint(m, e12, 13*x[10]-13*x[11]-x[15]-x[19] == 0.0)
@constraint(m, e13, 13*x[11]-13*x[12]-x[16]-x[20] == 0.0)
@constraint(m, e14, x[1] == 650.0)
@constraint(m, e15, x[4] == 590.0)
@constraint(m, e16, x[9] == 410.0)
@constraint(m, e17, x[12] == 350.0)
@constraint(m, e18, -x[1]+x[2] <= 0.0)
@constraint(m, e19, -x[2]+x[3] <= 0.0)
@constraint(m, e20, -x[4]+x[5] <= 0.0)
@constraint(m, e21, -x[5]+x[6] <= 0.0)
@constraint(m, e22, -x[7]+x[8] <= 0.0)
@constraint(m, e23, -x[8]+x[9] <= 0.0)
@constraint(m, e24, -x[10]+x[11] <= 0.0)
@constraint(m, e25, -x[11]+x[12] <= 0.0)
@constraint(m, e26, -x[3] <= -370.0)
@constraint(m, e27, -x[6] <= -370.0)
@constraint(m, e28, x[7] <= 650.0)
@constraint(m, e29, x[10] <= 500.0)
@constraint(m, e30, 10*x[3]-x[21] == 3700.0)
@constraint(m, e31, 20*x[6]-x[22] == 7400.0)
@constraint(m, e32, 15*x[7]+x[23] == 9750.0)
@constraint(m, e33, 13*x[10]+x[24] == 6500.0)
@constraint(m, e34, x[13]-2800*b[41] <= 0.0)
@constraint(m, e35, x[14]-2800*b[42] <= 0.0)
@constraint(m, e36, x[15]-1950*b[43] <= 0.0)
@constraint(m, e37, x[16]-1950*b[44] <= 0.0)
@constraint(m, e38, x[17]-3600*b[45] <= 0.0)
@constraint(m, e39, x[18]-3600*b[46] <= 0.0)
@constraint(m, e40, x[19]-1950*b[47] <= 0.0)
@constraint(m, e41, x[20]-1950*b[48] <= 0.0)
@constraint(m, e42, x[21]-2800*b[49] <= 0.0)
@constraint(m, e43, x[22]-4400*b[50] <= 0.0)
@constraint(m, e44, x[23]-3600*b[51] <= 0.0)
@constraint(m, e45, x[24]-1950*b[52] <= 0.0)
@constraint(m, e46, -x[1]+x[7]+x[25]+280*b[41] <= 280.0)
@constraint(m, e47, -x[2]+x[8]+x[26]+130*b[42] <= 130.0)
@constraint(m, e48, -x[1]+x[10]+x[28]+280*b[43] <= 280.0)
@constraint(m, e49, -x[2]+x[11]+x[29]+150*b[44] <= 150.0)
@constraint(m, e50, -x[4]+x[7]+x[31]+280*b[45] <= 280.0)
@constraint(m, e51, -x[5]+x[8]+x[32]+130*b[46] <= 130.0)
@constraint(m, e52, -x[4]+x[10]+x[34]+280*b[47] <= 280.0)
@constraint(m, e53, -x[5]+x[11]+x[35]+150*b[48] <= 150.0)
@constraint(m, e54, -x[2]+x[8]+x[26]+280*b[41] <= 280.0)
@constraint(m, e55, -x[3]+x[9]+x[27]+130*b[42] <= 130.0)
@constraint(m, e56, -x[2]+x[11]+x[29]+280*b[43] <= 280.0)
@constraint(m, e57, -x[3]+x[12]+x[30]+150*b[44] <= 150.0)
@constraint(m, e58, -x[5]+x[8]+x[32]+280*b[45] <= 280.0)
@constraint(m, e59, -x[6]+x[9]+x[33]+130*b[46] <= 130.0)
@constraint(m, e60, -x[5]+x[11]+x[35]+280*b[47] <= 280.0)
@constraint(m, e61, -x[6]+x[12]+x[36]+150*b[48] <= 150.0)
@constraint(m, e62, -x[3]+x[37] <= -320.0)
@constraint(m, e63, -x[6]+x[38] <= -320.0)
@constraint(m, e64, x[7]+x[39] <= 680.0)
@constraint(m, e65, x[10]+x[40] <= 680.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
