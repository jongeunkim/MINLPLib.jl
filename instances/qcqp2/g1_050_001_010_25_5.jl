using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
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
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)
set_upper_bound(x[21], 1.0)
set_upper_bound(x[22], 1.0)
set_upper_bound(x[23], 1.0)
set_upper_bound(x[24], 1.0)
set_upper_bound(x[25], 1.0)
set_upper_bound(x[26], 1.0)
set_upper_bound(x[27], 1.0)
set_upper_bound(x[28], 1.0)
set_upper_bound(x[29], 1.0)
set_upper_bound(x[30], 1.0)
set_upper_bound(x[31], 1.0)
set_upper_bound(x[32], 1.0)
set_upper_bound(x[33], 1.0)
set_upper_bound(x[34], 1.0)
set_upper_bound(x[35], 1.0)
set_upper_bound(x[36], 1.0)
set_upper_bound(x[37], 1.0)
set_upper_bound(x[38], 1.0)
set_upper_bound(x[39], 1.0)
set_upper_bound(x[40], 1.0)
set_upper_bound(x[41], 1.0)
set_upper_bound(x[42], 1.0)
set_upper_bound(x[43], 1.0)
set_upper_bound(x[44], 1.0)
set_upper_bound(x[45], 1.0)
set_upper_bound(x[46], 1.0)
set_upper_bound(x[47], 1.0)
set_upper_bound(x[48], 1.0)
set_upper_bound(x[49], 1.0)
set_upper_bound(x[50], 1.0)
set_upper_bound(x[51], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.1*x[2]*x[5]-0.6*x[2]*x[6]+0.44*x[2]*x[8]+1.3*x[2]*x[9]-0.66*x[2]*x[10]-1.2*x[2]*x[11]-1.34*x[2]*x[16]-1.88*x[2]*x[18]-1.48*x[2]*x[21]-1.88*x[2]*x[27]-1.7*x[2]*x[35]+1.94*x[2]*x[36]+0.72*x[2]*x[40]+0.94*x[2]*x[49]-1.42*x[2]*x[50]+(-1.44*x[3]*x[6])-0.08*x[3]*x[8]+0.2*x[3]*x[11]-1.48*x[3]*x[12]-1.74*x[3]*x[13]+0.5*x[3]*x[16]+0.84*x[3]*x[17]-1.48*x[3]*x[19]-1.38*x[3]*x[24]-1.1*x[3]*x[32]-0.2*x[3]*x[33]-0.02*x[3]*x[47]-1.46*x[3]*x[48]-1.12*x[3]*x[51]+1.98*x[4]*x[7]-1.28*x[4]*x[10]-0.16*x[4]*x[15]+1.82*x[4]*x[16]-1.1*x[4]*x[18]+0.04*x[4]*x[23]+0.96*x[4]*x[25]-1.82*x[4]*x[26]+0.04*x[4]*x[27]-0.08*x[4]*x[28]+1.24*x[4]*x[42]+1.98*x[4]*x[45]+1.34*x[4]*x[47]+0.7*x[5]*x[6]+1.08*x[5]*x[10]-1.24*x[5]*x[19]+1.74*x[5]*x[23]-0.44*x[5]*x[24]+1.74*x[5]*x[25]+0.8*x[5]*x[27]+0.9*x[5]*x[30]-0.48*x[5]*x[34]-0.64*x[5]*x[42]+0.64*x[5]*x[45]+0.64*x[5]*x[46]+(-1.26*x[6]*x[14])-0.54*x[6]*x[16]+0.84*x[6]*x[19]-0.94*x[6]*x[24]+0.74*x[6]*x[25]+1.06*x[6]*x[29]-1.54*x[6]*x[33]+0.86*x[6]*x[34]-0.78*x[6]*x[36]+0.42*x[6]*x[40]+1.88*x[6]*x[43]+0.16*x[6]*x[46]+0.06*x[7]*x[8]+x[7]*x[11]-0.64*x[7]*x[12]+0.2*x[7]*x[13]-1.42*x[7]*x[15]+0.84*x[7]*x[31]-0.94*x[7]*x[39]-0.7*x[7]*x[41]-0.28*x[7]*x[43]-1.24*x[7]*x[45]-0.22*x[7]*x[47]+1.46*x[7]*x[49]+0.92*x[7]*x[50]+(-0.6*x[8]*x[9])-0.76*x[8]*x[10]+0.52*x[8]*x[16]+1.7*x[8]*x[18]+1.96*x[8]*x[20]-x[8]*x[23]+0.6*x[8]*x[25]+0.08*x[8]*x[26]+0.46*x[8]*x[28]-1.76*x[8]*x[38]+0.52*x[8]*x[40]-0.02*x[8]*x[43]-0.8*x[8]*x[44]+1.66*x[8]*x[45]-1.34*x[8]*x[49]+(-1.7*x[9]*x[10])-0.34*x[9]*x[15]-0.02*x[9]*x[18]-1.58*x[9]*x[25]+1.56*x[9]*x[26]+1.36*x[9]*x[27]-0.3*x[9]*x[40]-0.9*x[9]*x[41]+0.66*x[9]*x[42]+1.5*x[10]*x[16]+0.86*x[10]*x[18]-1.16*x[10]*x[26]+0.02*x[10]*x[30]-0.46*x[10]*x[33]+0.6*x[10]*x[40]-1.82*x[10]*x[41]+0.22*x[10]*x[42]+0.66*x[10]*x[43]+1.1*x[11]*x[27]-1.4*x[11]*x[22]-0.36*x[11]*x[34]-0.5*x[11]*x[37]+0.6*x[11]*x[38]-0.72*x[11]*x[41]-1.9*x[11]*x[42]-1.62*x[11]*x[44]+0.36*x[11]*x[49]+1.46*x[11]*x[51]+(-1.88*x[12]*x[16])-1.78*x[12]*x[18]-0.5*x[12]*x[22]-1.76*x[12]*x[24]+0.48*x[12]*x[26]-1.7*x[12]*x[30]+1.82*x[12]*x[34]+1.76*x[12]*x[35]-0.56*x[12]*x[42]-1.48*x[12]*x[46]-1.62*x[12]*x[47]+0.96*x[13]*x[31]-1.32*x[13]*x[32]+0.24*x[13]*x[35]+0.4*x[13]*x[37]+0.84*x[13]*x[38]+1.44*x[13]*x[41]-0.92*x[13]*x[45]-1.44*x[13]*x[46]+1.72*x[13]*x[48]+0.14*x[14]*x[18]+1.36*x[14]*x[19]-1.86*x[14]*x[25]+1.28*x[14]*x[28]-0.86*x[14]*x[35]+0.7*x[14]*x[48]+0.9*x[15]*x[17]-0.82*x[15]*x[16]+0.14*x[15]*x[20]+0.72*x[15]*x[21]+0.46*x[15]*x[29]-0.18*x[15]*x[33]-1.44*x[15]*x[38]+1.46*x[15]*x[44]+0.76*x[15]*x[47]+1.34*x[16]*x[17]-1.64*x[16]*x[33]-0.16*x[16]*x[35]+0.9*x[16]*x[36]+0.28*x[16]*x[38]+1.62*x[16]*x[39]+0.68*x[16]*x[45]+0.56*x[17]*x[29]-1.3*x[17]*x[31]-0.74*x[17]*x[36]+0.22*x[17]*x[39]+1.6*x[17]*x[40]-1.04*x[17]*x[45]-1.28*x[17]*x[46]+0.92*x[17]*x[50]+1.44*x[18]*x[30]-1.2*x[18]*x[29]+1.52*x[18]*x[32]+0.86*x[18]*x[37]-1.54*x[18]*x[40]-0.82*x[18]*x[42]-0.84*x[18]*x[47]-1.52*x[18]*x[48]+0.16*x[19]*x[28]-x[19]*x[34]+0.82*x[19]*x[46]-0.9*x[19]*x[50]+1.62*x[20]*x[23]+1.24*x[20]*x[28]+0.22*x[20]*x[29]-1.8*x[20]*x[32]-1.86*x[20]*x[50]+1.64*x[21]*x[45]-0.04*x[21]*x[23]+0.46*x[21]*x[49]+0.18*x[21]*x[50]+0.76*x[22]*x[23]+1.3*x[22]*x[27]+1.7*x[22]*x[32]-0.38*x[22]*x[36]+0.28*x[22]*x[40]-1.06*x[22]*x[41]+1.86*x[22]*x[42]+0.32*x[22]*x[45]+1.36*x[22]*x[46]+1.56*x[22]*x[50]+(-1.2*x[23]*x[29])-0.92*x[23]*x[30]+1.8*x[23]*x[37]-1.92*x[23]*x[41]+1.64*x[23]*x[43]-1.58*x[23]*x[49]+x[24]*x[29]-0.26*x[24]*x[26]+0.72*x[24]*x[32]-1.62*x[24]*x[34]-1.86*x[24]*x[36]+1.22*x[25]*x[30]-0.28*x[25]*x[27]-0.76*x[25]*x[35]+1.08*x[25]*x[39]-x[25]*x[48]+1.38*x[26]*x[28]+0.68*x[26]*x[33]+0.56*x[26]*x[36]+1.1*x[26]*x[46]+1.56*x[26]*x[49]+0.54*x[27]*x[34]+0.54*x[27]*x[40]+1.64*x[27]*x[43]-1.98*x[27]*x[45]+1.84*x[27]*x[48]-1.82*x[27]*x[50]+0.38*x[28]*x[32]+0.02*x[28]*x[34]-x[28]*x[42]+1.54*x[28]*x[45]-0.88*x[28]*x[47]+0.22*x[28]*x[49]-1.86*x[28]*x[50]-1.14*x[28]*x[51]+(-1.58*x[29]*x[31])-1.02*x[29]*x[36]+1.6*x[29]*x[38]-1.2*x[29]*x[43]-1.72*x[29]*x[47]+0.18*x[29]*x[48]+0.98*x[30]*x[34]+0.6*x[30]*x[35]-0.04*x[30]*x[39]-1.58*x[30]*x[41]-0.82*x[30]*x[48]-0.14*x[30]*x[50]+1.94*x[31]*x[34]-1.32*x[31]*x[37]+1.3*x[31]*x[41]+0.98*x[31]*x[44]+0.52*x[31]*x[48]+0.48*x[32]*x[43]-0.66*x[32]*x[39]+1.26*x[32]*x[45]-1.04*x[32]*x[47]-1.62*x[32]*x[48]+1.54*x[33]*x[34]+0.58*x[33]*x[38]+0.62*x[33]*x[41]+1.28*x[33]*x[44]+0.14*x[33]*x[45]+0.32*x[33]*x[48]-0.82*x[33]*x[51]+0.34*x[34]*x[45]+(-0.28*x[35]*x[40])-1.42*x[35]*x[43]-0.86*x[35]*x[44]-1.32*x[35]*x[46]+0.74*x[35]*x[47]-0.04*x[35]*x[50]+1.22*x[36]*x[40]+1.42*x[36]*x[47]+1.84*x[37]*x[39]+1.26*x[37]*x[42]+1.76*x[37]*x[43]+1.18*x[38]*x[41]+0.68*x[38]*x[43]+1.16*x[38]*x[47]+1.68*x[38]*x[48]-0.64*x[38]*x[49]-1.24*x[38]*x[51]+0.44*x[39]*x[40]+1.5*x[39]*x[43]-1.62*x[39]*x[46]+1.26*x[39]*x[50]+1.9*x[40]*x[42]+(-0.32*x[41]*x[49])-1.4*x[41]*x[50]+0.92*x[42]*x[43]-0.04*x[42]*x[44]+1.96*x[43]*x[51]-1.18*x[43]*x[45]+1.2*x[44]*x[46]+1.82*x[44]*x[50]-0.94*x[45]*x[49]-1.28*x[46]*x[47]+0.84*x[47]*x[49]-1.58*x[49]*x[51]+0.99*x[8]*x[8]+0.94*x[9]*x[9]+0.87*x[14]*x[14]-0.61*x[18]*x[18]+0.49*x[22]*x[22]+0.2*x[28]*x[28]-0.72*x[29]*x[29]+0.12*x[40]*x[40]-0.07*x[41]*x[41]-0.36*x[45]*x[45]+0.19*x[2]-0.07*x[3]+0.46*x[4]-0.52*x[5]+0.02*x[6]+0.42*x[7]+0.9*x[8]+0.66*x[9]-0.41*x[10]+0.1*x[11]+0.94*x[12]-0.8*x[13]-0.85*x[14]+0.2*x[15]+0.96*x[16]+0.68*x[17]-0.65*x[18]-0.2*x[19]-0.05*x[20]-0.45*x[21]+0.53*x[22]+0.1*x[23]-0.52*x[24]+0.59*x[25]-0.7*x[26]+0.08*x[27]-0.07*x[28]-0.25*x[29]+0.33*x[30]-0.16*x[31]-0.64*x[32]-0.1*x[33]-0.77*x[34]+0.58*x[35]-0.73*x[36]-0.5*x[37]-0.07*x[38]-0.61*x[39]-0.04*x[40]-0.53*x[41]-0.86*x[42]+0.1*x[43]-0.03*x[44]-0.01*x[45]+0.56*x[46]-0.61*x[47]+0.5*x[48]+0.54*x[49]+0.46*x[50]+0.21*x[51])+x[1] == 0.0)
@NLconstraint(m, e2, 0.1*x[2]*x[6]-1.48*x[2]*x[4]-1.78*x[2]*x[7]+0.32*x[2]*x[10]-0.98*x[2]*x[15]+0.82*x[2]*x[16]-1.84*x[2]*x[17]+1.84*x[2]*x[23]+1.94*x[2]*x[27]+1.34*x[2]*x[28]+1.2*x[2]*x[30]+0.34*x[2]*x[35]+1.22*x[2]*x[36]-0.2*x[2]*x[37]-1.38*x[2]*x[46]+1.54*x[2]*x[47]+1.7*x[2]*x[49]-1.44*x[2]*x[51]+2*x[3]*x[9]-0.44*x[3]*x[12]-1.52*x[3]*x[24]+1.14*x[3]*x[30]+0.48*x[3]*x[31]-0.48*x[3]*x[33]-0.4*x[3]*x[36]+0.8*x[3]*x[48]+0.8*x[4]*x[14]-0.92*x[4]*x[18]-1.46*x[4]*x[19]+0.34*x[4]*x[20]+1.52*x[4]*x[27]-1.12*x[4]*x[28]-1.06*x[4]*x[36]+0.76*x[4]*x[42]+0.52*x[4]*x[43]-1.04*x[4]*x[49]+1.4*x[5]*x[6]-1.3*x[5]*x[13]-0.28*x[5]*x[16]-0.26*x[5]*x[17]-1.54*x[5]*x[23]+1.9*x[5]*x[24]-1.94*x[5]*x[27]-1.26*x[5]*x[33]+0.16*x[5]*x[41]+0.52*x[5]*x[45]-1.42*x[5]*x[48]+0.5*x[5]*x[50]+1.12*x[6]*x[10]+1.7*x[6]*x[12]+1.18*x[6]*x[14]+1.12*x[6]*x[15]+0.46*x[6]*x[20]+0.56*x[6]*x[22]-0.46*x[6]*x[24]-0.08*x[6]*x[25]+1.02*x[6]*x[47]+0.3*x[7]*x[17]-1.5*x[7]*x[8]+1.56*x[7]*x[18]-1.12*x[7]*x[19]+1.56*x[7]*x[29]-0.66*x[7]*x[32]+1.2*x[7]*x[36]-0.72*x[7]*x[37]-1.92*x[7]*x[49]-1.6*x[7]*x[51]+0.28*x[8]*x[11]-1.18*x[8]*x[9]+0.4*x[8]*x[14]+0.58*x[8]*x[19]-0.34*x[8]*x[22]+0.2*x[8]*x[32]+1.32*x[8]*x[33]+1.58*x[8]*x[35]-1.64*x[8]*x[39]+0.18*x[8]*x[42]-1.76*x[8]*x[43]-1.14*x[8]*x[44]-1.56*x[8]*x[48]+1.66*x[9]*x[12]+1.8*x[9]*x[18]+0.2*x[9]*x[20]+1.76*x[9]*x[26]-1.26*x[9]*x[31]-1.88*x[9]*x[33]+1.96*x[9]*x[39]+0.38*x[9]*x[43]-0.96*x[9]*x[47]+0.08*x[10]*x[24]+1.54*x[10]*x[32]+0.58*x[10]*x[37]-1.94*x[10]*x[39]+1.52*x[10]*x[43]-0.14*x[10]*x[51]+0.2*x[11]*x[13]-1.56*x[11]*x[12]+0.92*x[11]*x[15]-1.58*x[11]*x[22]-1.34*x[11]*x[23]+1.18*x[11]*x[26]+0.28*x[11]*x[30]-1.04*x[11]*x[31]+1.42*x[11]*x[38]-0.18*x[11]*x[41]-1.26*x[11]*x[42]+1.86*x[11]*x[43]-1.42*x[11]*x[45]-0.9*x[11]*x[51]+0.18*x[12]*x[16]+1.16*x[12]*x[21]+0.16*x[12]*x[24]+1.66*x[12]*x[25]+0.14*x[12]*x[30]+0.9*x[12]*x[31]-1.18*x[12]*x[33]-1.8*x[12]*x[37]-0.06*x[12]*x[46]-0.64*x[12]*x[51]+0.78*x[13]*x[15]-1.82*x[13]*x[20]-1.4*x[13]*x[21]+1.18*x[13]*x[22]+1.56*x[13]*x[25]+0.4*x[13]*x[28]-1.4*x[13]*x[43]+1.44*x[14]*x[16]-0.54*x[14]*x[17]-0.28*x[14]*x[27]-1.48*x[14]*x[28]-1.66*x[14]*x[29]+0.2*x[14]*x[30]+0.92*x[14]*x[32]-0.32*x[14]*x[33]+1.3*x[14]*x[42]+1.76*x[14]*x[49]-0.56*x[14]*x[50]+0.64*x[15]*x[25]+0.32*x[15]*x[28]+1.64*x[15]*x[29]-0.42*x[15]*x[30]-0.6*x[15]*x[38]-1.52*x[15]*x[43]+0.1*x[15]*x[44]+(-1.74*x[16]*x[18])-0.28*x[16]*x[21]-1.1*x[16]*x[23]-1.52*x[16]*x[26]+0.12*x[16]*x[27]+0.12*x[16]*x[32]-1.44*x[16]*x[36]-0.24*x[16]*x[38]-0.74*x[16]*x[45]+1.14*x[17]*x[21]-1.22*x[17]*x[20]+1.56*x[17]*x[25]+1.82*x[17]*x[29]-0.3*x[17]*x[35]+1.56*x[17]*x[44]-0.84*x[17]*x[45]+0.12*x[17]*x[48]-0.86*x[17]*x[49]+1.56*x[17]*x[50]-0.82*x[17]*x[51]+0.8*x[18]*x[20]+0.7*x[18]*x[21]-0.96*x[18]*x[22]-0.02*x[18]*x[23]+0.14*x[18]*x[25]-0.58*x[18]*x[29]+1.18*x[18]*x[33]+0.88*x[18]*x[34]+1.86*x[18]*x[36]-1.48*x[18]*x[43]+0.56*x[19]*x[26]-1.08*x[19]*x[20]-0.46*x[19]*x[29]-1.98*x[19]*x[30]+1.22*x[19]*x[35]+0.84*x[19]*x[39]-0.1*x[19]*x[40]-1.7*x[19]*x[41]+0.08*x[19]*x[44]-1.48*x[19]*x[48]+x[20]*x[25]+0.64*x[20]*x[27]-1.86*x[20]*x[28]+1.78*x[20]*x[33]+1.14*x[20]*x[37]+1.3*x[20]*x[43]+1.08*x[20]*x[44]-1.82*x[20]*x[49]-1.2*x[20]*x[51]+0.5*x[21]*x[25]+1.6*x[21]*x[30]+0.06*x[21]*x[31]+0.5*x[21]*x[32]-0.98*x[21]*x[34]+0.28*x[21]*x[39]-0.56*x[21]*x[40]+1.66*x[22]*x[44]-1.36*x[22]*x[43]-0.34*x[22]*x[45]-0.44*x[22]*x[47]+0.52*x[22]*x[51]+(-0.56*x[23]*x[28])-1.16*x[23]*x[32]+0.4*x[23]*x[34]+0.52*x[23]*x[37]-1.12*x[23]*x[39]+0.94*x[23]*x[42]+1.7*x[23]*x[44]+1.12*x[24]*x[29]-1.56*x[24]*x[33]-0.88*x[24]*x[36]-0.58*x[24]*x[39]-1.04*x[24]*x[47]+1.86*x[25]*x[28]-0.12*x[25]*x[26]+1.84*x[25]*x[30]-1.98*x[25]*x[31]-1.36*x[25]*x[32]-1.68*x[25]*x[33]+0.88*x[25]*x[35]+0.78*x[25]*x[40]+0.06*x[25]*x[43]+(-0.76*x[26]*x[29])-0.54*x[26]*x[37]+1.8*x[26]*x[38]-0.22*x[26]*x[44]+0.06*x[27]*x[30]+1.62*x[27]*x[31]+x[27]*x[34]+0.06*x[27]*x[43]-0.5*x[27]*x[50]+(-0.26*x[28]*x[32])-1.88*x[28]*x[33]-1.62*x[28]*x[38]-0.66*x[28]*x[40]-0.92*x[28]*x[44]-1.12*x[28]*x[46]-1.42*x[28]*x[47]-1.84*x[28]*x[48]+1.42*x[29]*x[34]-1.12*x[29]*x[42]+0.02*x[29]*x[49]+0.38*x[29]*x[50]+0.84*x[29]*x[51]+1.98*x[30]*x[41]-0.8*x[30]*x[32]-1.7*x[30]*x[46]-0.58*x[30]*x[50]-1.68*x[30]*x[51]+0.8*x[31]*x[38]-1.66*x[31]*x[35]-0.96*x[31]*x[49]+1.72*x[32]*x[34]+0.56*x[32]*x[41]+1.64*x[32]*x[43]+0.46*x[32]*x[44]-0.36*x[32]*x[48]+(-1.6*x[33]*x[34])-0.76*x[33]*x[43]-0.34*x[33]*x[48]+1.02*x[34]*x[40]+1.94*x[34]*x[41]+0.2*x[34]*x[48]+1.28*x[35]*x[42]-1.62*x[35]*x[50]+1.46*x[36]*x[41]+1.84*x[36]*x[43]-0.16*x[36]*x[45]-0.02*x[36]*x[46]-0.92*x[37]*x[50]+1.92*x[38]*x[43]-0.36*x[38]*x[44]+1.16*x[38]*x[50]+1.74*x[39]*x[46]+1.76*x[39]*x[48]-1.3*x[39]*x[49]-1.26*x[39]*x[50]+(-1.86*x[40]*x[42])-0.34*x[40]*x[49]+1.56*x[40]*x[50]-1.98*x[41]*x[50]+1.92*x[42]*x[44]-0.44*x[42]*x[46]-0.68*x[42]*x[51]+1.14*x[43]*x[47]-1.94*x[43]*x[50]+0.98*x[43]*x[51]+0.26*x[44]*x[50]+0.96*x[45]*x[48]-1.46*x[46]*x[51]+1.02*x[47]*x[48]-2*x[47]*x[51]+(-0.56*x[6]*x[6])-0.37*x[7]*x[7]+0.22*x[8]*x[8]-0.19*x[9]*x[9]+0.15*x[13]*x[13]+0.88*x[14]*x[14]-0.75*x[16]*x[16]+0.81*x[20]*x[20]-0.21*x[29]*x[29]+0.72*x[30]*x[30]-0.09*x[31]*x[31]+0.06*x[36]*x[36]+0.39*x[40]*x[40]+0.99*x[42]*x[42]-0.09*x[48]*x[48]-0.64*x[49]*x[49]+0.27*x[50]*x[50]+0.59*x[2]-0.95*x[3]-0.09*x[4]-0.65*x[5]+0.07*x[6]-0.35*x[7]-0.1*x[8]+0.25*x[9]-0.04*x[10]-0.3*x[11]-0.27*x[12]+0.8*x[13]-0.21*x[14]+0.14*x[15]-0.85*x[16]+0.61*x[17]+0.12*x[18]-0.37*x[19]+0.81*x[20]+0.94*x[21]-0.5*x[22]+0.23*x[23]-0.82*x[24]+0.85*x[25]+0.43*x[26]+0.61*x[27]-0.78*x[28]+0.87*x[30]-0.6*x[31]-0.45*x[32]+0.02*x[33]+0.81*x[34]-0.08*x[35]-0.64*x[36]-0.41*x[37]-0.08*x[38]-0.13*x[39]-0.49*x[40]+0.61*x[41]-0.64*x[42]-0.9*x[43]+0.73*x[44]+0.5*x[45]-0.1*x[46]+0.38*x[47]-0.48*x[48]-0.54*x[49]+0.85*x[50]-0.12*x[51] <= 32.29)
@constraint(m, e3, -0.21*x[2]+0.93*x[3]-0.79*x[4]-0.12*x[5]-0.21*x[6]-0.95*x[7]+0.43*x[8]-0.43*x[9]-0.83*x[10]-0.34*x[11]+0.2*x[12]-0.86*x[13]-0.37*x[14]-0.58*x[15]-0.83*x[16]+0.56*x[17]-0.43*x[18]-0.85*x[19]-0.99*x[20]-0.22*x[21]-0.14*x[22]-0.88*x[23]+0.01*x[24]-0.66*x[25]+0.16*x[26]+0.46*x[27]+0.51*x[28]+0.86*x[29]+0.93*x[30]-0.91*x[31]+0.58*x[32]+0.91*x[33]-0.14*x[34]+0.35*x[35]-0.26*x[36]-0.89*x[37]-0.26*x[38]-0.08*x[39]+0.16*x[40]-0.46*x[41]-0.24*x[42]+0.43*x[43]+0.92*x[44]-0.17*x[45]-0.48*x[46]+0.61*x[47]+0.1*x[48]+0.99*x[49]-0.16*x[50]+0.2*x[51] == 0.89)
@constraint(m, e4, -0.04*x[2]-0.01*x[3]-0.18*x[4]-0.08*x[5]-0.72*x[6]+0.99*x[7]-0.3*x[8]+0.67*x[9]+0.53*x[10]-0.53*x[11]+0.23*x[12]+0.72*x[13]-0.01*x[14]-0.94*x[15]+0.7*x[16]+0.15*x[17]+0.63*x[18]+0.17*x[19]-0.05*x[20]-0.66*x[21]-0.26*x[22]+0.13*x[23]-0.05*x[24]+0.84*x[25]+0.41*x[26]+0.04*x[27]-0.9*x[28]-0.25*x[29]-0.09*x[30]-0.42*x[31]+0.6*x[32]+0.95*x[33]+0.18*x[34]+0.04*x[35]-0.03*x[36]+0.73*x[37]-0.24*x[38]+0.31*x[39]+0.99*x[40]-0.78*x[41]-0.02*x[42]-0.26*x[43]-0.68*x[44]-0.76*x[45]+0.31*x[46]-0.36*x[47]-0.04*x[48]-0.62*x[49]+0.77*x[50]-0.26*x[51] == 0.96)
@constraint(m, e5, 0.86*x[2]-0.13*x[3]+0.39*x[4]-0.37*x[5]+0.56*x[6]+0.14*x[7]+0.18*x[8]-0.41*x[9]-0.31*x[10]+0.72*x[11]+0.34*x[12]+0.52*x[13]-0.23*x[14]+0.11*x[15]-0.9*x[16]+0.74*x[17]+0.39*x[18]-0.56*x[19]-0.45*x[20]-0.11*x[21]-0.62*x[22]+0.78*x[23]+0.3*x[24]+0.92*x[25]-0.53*x[26]-0.34*x[27]+0.69*x[28]+0.69*x[29]-0.22*x[30]-0.27*x[31]+0.8*x[32]+0.24*x[33]+0.18*x[34]+0.34*x[35]-0.8*x[36]-0.15*x[37]+0.78*x[38]-0.18*x[39]+0.9*x[40]+0.16*x[41]-0.4*x[42]-0.16*x[43]-0.51*x[44]+0.46*x[45]-0.21*x[46]+0.45*x[47]+0.62*x[48]-0.81*x[49]+0.63*x[50]+0.7*x[51] == 0.38)
@constraint(m, e6, -0.98*x[2]-0.25*x[3]-0.74*x[4]+0.85*x[5]-0.55*x[6]+0.06*x[7]+0.57*x[8]+0.27*x[9]-0.67*x[10]+0.36*x[11]-0.86*x[12]+0.83*x[13]+0.65*x[14]+0.37*x[15]+0.62*x[16]-0.85*x[17]+0.52*x[18]-0.5*x[19]-0.27*x[20]+0.06*x[21]-0.05*x[22]-0.57*x[23]-0.3*x[24]+0.06*x[25]+0.89*x[26]+0.18*x[27]+0.99*x[28]-0.77*x[29]-0.71*x[30]-0.93*x[31]+0.55*x[32]-0.13*x[33]+0.18*x[34]-0.2*x[35]+0.05*x[36]+0.97*x[37]-0.88*x[38]+0.53*x[39]-0.54*x[40]-0.27*x[41]-0.37*x[42]-0.08*x[43]+0.78*x[44]+0.05*x[45]-0.03*x[46]-0.12*x[48]-0.36*x[49]+0.48*x[50]-0.24*x[51] == 0.18)
@constraint(m, e7, -0.13*x[2]+0.38*x[3]-0.18*x[4]-0.5*x[5]+0.2*x[6]-0.24*x[7]-0.47*x[8]-0.78*x[9]-0.91*x[10]+0.5*x[11]+0.93*x[12]-0.5*x[13]+0.58*x[14]+0.48*x[15]+0.16*x[16]-0.8*x[17]-0.87*x[18]-0.55*x[19]-0.56*x[20]-0.44*x[21]-0.26*x[22]-0.46*x[23]+0.44*x[24]-0.82*x[25]-0.75*x[26]+0.06*x[27]-0.44*x[28]+0.21*x[29]-0.57*x[30]+0.96*x[31]+0.92*x[32]+0.31*x[33]+0.74*x[34]+0.66*x[35]+0.07*x[36]-0.8*x[37]-0.2*x[38]-0.14*x[39]+0.52*x[40]-0.61*x[41]-0.31*x[42]+0.12*x[43]+0.99*x[44]+0.87*x[46]+0.74*x[47]-0.26*x[48]+0.65*x[49]-0.91*x[50]+0.3*x[51] == -0.26)
@constraint(m, e8, 0.05*x[2]-0.93*x[3]-0.44*x[4]+0.16*x[5]+0.73*x[6]+0.91*x[7]-0.71*x[8]+0.58*x[9]-0.05*x[10]+0.57*x[11]-0.54*x[12]+0.11*x[13]+0.19*x[14]+0.07*x[15]-0.92*x[16]+0.66*x[17]+0.76*x[18]-0.18*x[19]-0.64*x[20]-0.7*x[21]-0.4*x[22]+0.54*x[23]-0.27*x[24]-0.01*x[25]-0.78*x[26]+0.3*x[27]+0.18*x[28]+0.94*x[29]+0.57*x[30]+0.1*x[31]+0.43*x[32]-0.56*x[33]+0.6*x[34]+0.77*x[35]-0.18*x[36]-0.88*x[37]-0.49*x[38]+0.67*x[40]-0.77*x[41]-0.85*x[42]+0.93*x[43]+0.61*x[44]-0.31*x[45]+0.82*x[46]+0.88*x[47]-0.63*x[48]+0.07*x[49]-0.17*x[50]-0.51*x[51] == 0.1)
@constraint(m, e9, -0.37*x[2]+0.1*x[3]-0.08*x[4]-0.34*x[5]-0.81*x[6]+0.34*x[7]+0.22*x[8]+0.14*x[9]-0.88*x[10]+0.76*x[11]+x[12]+0.36*x[13]-0.2*x[14]+0.47*x[15]+0.74*x[16]-0.46*x[17]-0.91*x[18]+0.33*x[19]+0.53*x[20]-0.95*x[21]+0.67*x[22]-0.54*x[23]-0.58*x[24]+0.54*x[25]+0.68*x[26]-0.59*x[27]+0.73*x[28]-0.89*x[29]-0.92*x[30]-0.79*x[31]+0.75*x[32]+0.16*x[33]-0.82*x[34]+0.4*x[35]-0.6*x[36]-0.47*x[37]-0.7*x[38]-0.34*x[39]-0.9*x[40]+0.06*x[41]-0.08*x[42]-0.61*x[43]-0.92*x[44]+0.99*x[45]+0.75*x[46]+0.94*x[47]-0.51*x[48]+0.63*x[49]+0.31*x[50]-0.08*x[51] == 0.02)
@constraint(m, e10, 0.52*x[2]+0.49*x[3]-0.41*x[4]-0.06*x[5]-0.99*x[6]+0.23*x[7]-0.07*x[8]-0.54*x[9]-0.72*x[10]+0.22*x[11]-0.35*x[12]-0.53*x[13]-0.85*x[14]+0.12*x[15]+0.97*x[16]-0.14*x[17]-0.01*x[18]-0.3*x[19]-0.3*x[20]-0.7*x[21]-0.21*x[22]-0.72*x[23]+0.14*x[24]-0.97*x[25]-0.04*x[26]+0.65*x[27]+0.97*x[28]+0.52*x[29]+0.3*x[30]-0.91*x[31]+0.5*x[32]-0.7*x[33]+0.35*x[34]+0.82*x[35]+0.81*x[36]+0.3*x[37]+0.47*x[38]-0.53*x[39]-0.47*x[40]+0.12*x[41]+0.17*x[42]-0.65*x[43]+0.98*x[44]+0.2*x[45]-0.62*x[46]-0.27*x[47]-0.41*x[48]-0.46*x[49]-0.17*x[50]-0.43*x[51] == -0.24)
@constraint(m, e11, -0.15*x[2]-0.27*x[3]-0.44*x[4]+0.95*x[5]+0.63*x[6]-0.53*x[7]-0.73*x[8]+0.99*x[9]-0.26*x[10]+0.3*x[11]+0.94*x[12]+0.85*x[13]+0.61*x[14]+0.22*x[15]-0.72*x[16]-0.57*x[17]-0.41*x[18]-0.64*x[19]+0.5*x[20]+0.8*x[21]+0.96*x[22]+0.93*x[23]-0.12*x[24]-0.19*x[25]-0.67*x[26]-0.68*x[27]+0.8*x[28]+0.1*x[29]+0.81*x[30]+0.22*x[31]-0.06*x[32]+0.13*x[33]-0.18*x[34]-0.48*x[35]+0.06*x[36]-0.95*x[37]-0.11*x[38]-0.05*x[39]-0.78*x[40]-0.62*x[41]-0.24*x[42]+0.45*x[43]-0.85*x[44]+0.69*x[45]-0.85*x[46]-0.26*x[47]+0.45*x[48]-0.25*x[49]+0.14*x[50]-0.7*x[51] == -0.6)
@constraint(m, e12, 0.9*x[2]+0.28*x[3]-0.79*x[4]+0.24*x[5]-0.11*x[6]+0.67*x[7]-0.67*x[8]-0.87*x[9]+0.69*x[10]-0.72*x[11]-0.27*x[12]-0.45*x[13]+0.61*x[14]+0.74*x[15]+0.07*x[16]+0.86*x[17]-0.92*x[18]-0.43*x[19]-0.37*x[20]+0.96*x[21]-0.38*x[22]-0.85*x[23]-0.9*x[24]+0.52*x[25]-0.61*x[26]+0.43*x[27]-0.1*x[28]-0.96*x[29]-0.84*x[30]-0.48*x[31]+0.08*x[32]+0.54*x[33]+0.25*x[34]+0.26*x[35]+0.73*x[36]+0.54*x[37]-0.83*x[38]-0.66*x[39]+0.58*x[40]-0.31*x[41]+0.91*x[42]+0.95*x[43]+0.65*x[44]+0.33*x[45]-0.23*x[46]-0.31*x[47]+0.69*x[48]-0.74*x[49]+0.05*x[50]-0.62*x[51] == -0.34)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
