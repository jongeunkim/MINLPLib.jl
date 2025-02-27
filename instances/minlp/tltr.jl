using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 31, 32, 33, 34, 35, 36, 37, 38, 39]
@variable(m, b[b_Idx], Bin)
i_Idx = Any[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 40, 41, 42, 43, 44, 45, 46, 47, 48]
@variable(m, i[i_Idx], Int)
for k=4:30
   set_upper_bound(i[k], 5)
end
for k=40:48
   set_upper_bound(i[k], 100)
end


# ----- Constraints ----- #
@constraint(m, e1, -35*b[2]-35*b[3]-6.53333333333333*b[31]-6.53333333333333*b[32]-6.7375*b[33]-6.53333333333333*b[34]-6.53333333333333*b[35]-6.7375*b[36]-6.53333333333333*b[37]-6.53333333333333*b[38]-6.7375*b[39]+objvar == 0.0)
@NLconstraint(m, e2, i[40]*i[4]+i[43]*i[7]+i[46]*i[10]+i[41]*i[5]+i[44]*i[8]+i[47]*i[11]+i[42]*i[6]+i[45]*i[9]+i[48]*i[12] >= 9.0)
@NLconstraint(m, e3, i[40]*i[13]+i[43]*i[16]+i[46]*i[19]+i[41]*i[14]+i[44]*i[17]+i[47]*i[20]+i[42]*i[15]+i[45]*i[18]+i[48]*i[21] >= 15.0)
@NLconstraint(m, e4, i[40]*i[22]+i[43]*i[25]+i[46]*i[28]+i[41]*i[23]+i[44]*i[26]+i[47]*i[29]+i[42]*i[24]+i[45]*i[27]+i[48]*i[30] >= 80.0)
@constraint(m, e5, 12*i[4]+24*i[13]+36*i[22]-48*b[31] <= 0.0)
@constraint(m, e6, 12*i[5]+24*i[14]+36*i[23]-48*b[32] <= 0.0)
@constraint(m, e7, 12*i[6]+24*i[15]+36*i[24]-62*b[33] <= 0.0)
@constraint(m, e8, 12*i[7]+24*i[16]+36*i[25]-48*b[34] <= 0.0)
@constraint(m, e9, 12*i[8]+24*i[17]+36*i[26]-48*b[35] <= 0.0)
@constraint(m, e10, 12*i[9]+24*i[18]+36*i[27]-62*b[36] <= 0.0)
@constraint(m, e11, 12*i[10]+24*i[19]+36*i[28]-48*b[37] <= 0.0)
@constraint(m, e12, 12*i[11]+24*i[20]+36*i[29]-48*b[38] <= 0.0)
@constraint(m, e13, 12*i[12]+24*i[21]+36*i[30]-62*b[39] <= 0.0)
@constraint(m, e14, -i[4]-i[13]-i[22]+b[31] <= 0.0)
@constraint(m, e15, -i[5]-i[14]-i[23]+b[32] <= 0.0)
@constraint(m, e16, -i[6]-i[15]-i[24]+b[33] <= 0.0)
@constraint(m, e17, -i[7]-i[16]-i[25]+b[34] <= 0.0)
@constraint(m, e18, -i[8]-i[17]-i[26]+b[35] <= 0.0)
@constraint(m, e19, -i[9]-i[18]-i[27]+b[36] <= 0.0)
@constraint(m, e20, -i[10]-i[19]-i[28]+b[37] <= 0.0)
@constraint(m, e21, -i[11]-i[20]-i[29]+b[38] <= 0.0)
@constraint(m, e22, -i[12]-i[21]-i[30]+b[39] <= 0.0)
@constraint(m, e23, -72*b[31]+i[40] <= 0.0)
@constraint(m, e24, -182*b[32]+i[41] <= 0.0)
@constraint(m, e25, -182*b[33]+i[42] <= 0.0)
@constraint(m, e26, -72*b[34]+i[43] <= 0.0)
@constraint(m, e27, -182*b[35]+i[44] <= 0.0)
@constraint(m, e28, -182*b[36]+i[45] <= 0.0)
@constraint(m, e29, -72*b[37]+i[46] <= 0.0)
@constraint(m, e30, -182*b[38]+i[47] <= 0.0)
@constraint(m, e31, -182*b[39]+i[48] <= 0.0)
@constraint(m, e32, i[4]+i[13]+i[22]-5*b[31] <= 0.0)
@constraint(m, e33, i[5]+i[14]+i[23]-5*b[32] <= 0.0)
@constraint(m, e34, i[6]+i[15]+i[24]-5*b[33] <= 0.0)
@constraint(m, e35, i[7]+i[16]+i[25]-5*b[34] <= 0.0)
@constraint(m, e36, i[8]+i[17]+i[26]-5*b[35] <= 0.0)
@constraint(m, e37, i[9]+i[18]+i[27]-5*b[36] <= 0.0)
@constraint(m, e38, i[10]+i[19]+i[28]-5*b[37] <= 0.0)
@constraint(m, e39, i[11]+i[20]+i[29]-5*b[38] <= 0.0)
@constraint(m, e40, i[12]+i[21]+i[30]-5*b[39] <= 0.0)
@constraint(m, e41, -500*b[1]+7*i[40]+7*i[43]+7*i[46] <= 0.0)
@constraint(m, e42, -1270*b[2]+7*i[41]+7*i[44]+7*i[47] <= 0.0)
@constraint(m, e43, -1270*b[3]+7*i[42]+7*i[45]+7*i[48] <= 0.0)
@constraint(m, e44, -b[31]+b[34] <= 0.0)
@constraint(m, e45, -b[32]+b[35] <= 0.0)
@constraint(m, e46, -b[33]+b[36] <= 0.0)
@constraint(m, e47, -b[34]+b[37] <= 0.0)
@constraint(m, e48, -b[35]+b[38] <= 0.0)
@constraint(m, e49, -b[36]+b[39] <= 0.0)
@constraint(m, e50, -i[40]+i[43] <= 0.0)
@constraint(m, e51, -i[41]+i[44] <= 0.0)
@constraint(m, e52, -i[42]+i[45] <= 0.0)
@constraint(m, e53, -i[43]+i[46] <= 0.0)
@constraint(m, e54, -i[44]+i[47] <= 0.0)
@constraint(m, e55, -i[45]+i[48] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
