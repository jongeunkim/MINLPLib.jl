using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 1.0)
set_upper_bound(x[1], 1.0)
set_lower_bound(x[2], 1.0)
set_upper_bound(x[2], 1.0)
set_lower_bound(x[3], 1.0)
set_upper_bound(x[3], 1.0)
set_lower_bound(x[4], 1.0)
set_upper_bound(x[4], 1.0)
set_lower_bound(x[5], 1.0)
set_upper_bound(x[5], 1.0)
set_lower_bound(x[6], -1.0)
set_upper_bound(x[6], -1.0)
set_lower_bound(x[7], -1.0)
set_upper_bound(x[7], -1.0)
set_lower_bound(x[8], -1.0)
set_upper_bound(x[8], -1.0)
set_lower_bound(x[9], -1.0)
set_upper_bound(x[9], -1.0)
set_lower_bound(x[10], -1.0)
set_upper_bound(x[10], -1.0)
set_lower_bound(x[11], -1.0)
set_upper_bound(x[11], 1.0)
set_lower_bound(x[12], -1.0)
set_upper_bound(x[12], 1.0)
set_lower_bound(x[13], -1.0)
set_upper_bound(x[13], 1.0)
set_lower_bound(x[14], -1.0)
set_upper_bound(x[14], 1.0)
set_lower_bound(x[15], -1.0)
set_upper_bound(x[15], 1.0)
set_lower_bound(x[16], -1.0)
set_upper_bound(x[16], 1.0)
set_lower_bound(x[17], -1.0)
set_upper_bound(x[17], 1.0)
set_lower_bound(x[18], -1.0)
set_upper_bound(x[18], 1.0)
set_lower_bound(x[19], -1.0)
set_upper_bound(x[19], 1.0)
set_lower_bound(x[20], -1.0)
set_upper_bound(x[20], 1.0)
set_lower_bound(x[21], -1.0)
set_upper_bound(x[21], 1.0)
set_lower_bound(x[22], -1.0)
set_upper_bound(x[22], 1.0)
set_lower_bound(x[23], -1.0)
set_upper_bound(x[23], 1.0)
set_lower_bound(x[24], -1.0)
set_upper_bound(x[24], 1.0)
set_lower_bound(x[25], -1.0)
set_upper_bound(x[25], 1.0)
set_lower_bound(x[26], -1.0)
set_upper_bound(x[26], 1.0)
set_lower_bound(x[27], -1.0)
set_upper_bound(x[27], 1.0)
set_lower_bound(x[28], -1.0)
set_upper_bound(x[28], 1.0)
set_lower_bound(x[29], -1.0)
set_upper_bound(x[29], 1.0)
set_lower_bound(x[30], -1.0)
set_upper_bound(x[30], 1.0)
set_lower_bound(x[31], -1.0)
set_upper_bound(x[31], 1.0)
set_lower_bound(x[32], -1.0)
set_upper_bound(x[32], 1.0)
set_lower_bound(x[33], -1.0)
set_upper_bound(x[33], 1.0)
set_lower_bound(x[34], -1.0)
set_upper_bound(x[34], 1.0)
set_lower_bound(x[35], -1.0)
set_upper_bound(x[35], 1.0)
set_lower_bound(x[36], -1.0)
set_upper_bound(x[36], 1.0)
set_lower_bound(x[37], -1.0)
set_upper_bound(x[37], 1.0)
set_lower_bound(x[38], -1.0)
set_upper_bound(x[38], 1.0)
set_lower_bound(x[39], -1.0)
set_upper_bound(x[39], 1.0)
set_lower_bound(x[40], -1.0)
set_upper_bound(x[40], 1.0)
set_lower_bound(x[41], -1.0)
set_upper_bound(x[41], 1.0)
set_lower_bound(x[42], -1.0)
set_upper_bound(x[42], 1.0)
set_lower_bound(x[43], -1.0)
set_upper_bound(x[43], 1.0)
set_lower_bound(x[44], -1.0)
set_upper_bound(x[44], 1.0)
set_lower_bound(x[45], -1.0)
set_upper_bound(x[45], 1.0)
set_lower_bound(x[46], -1.0)
set_upper_bound(x[46], 1.0)
set_lower_bound(x[47], -1.0)
set_upper_bound(x[47], 1.0)
set_lower_bound(x[48], -1.0)
set_upper_bound(x[48], 1.0)
set_lower_bound(x[49], -1.0)
set_upper_bound(x[49], 1.0)
set_lower_bound(x[50], -1.0)
set_upper_bound(x[50], 1.0)
set_lower_bound(x[51], -1.0)
set_upper_bound(x[51], 1.0)
set_lower_bound(x[52], -1.0)
set_upper_bound(x[52], 1.0)
set_lower_bound(x[53], -1.0)
set_upper_bound(x[53], 1.0)
set_lower_bound(x[54], -1.0)
set_upper_bound(x[54], 1.0)
set_lower_bound(x[55], -1.0)
set_upper_bound(x[55], 1.0)
set_lower_bound(x[56], -1.0)
set_upper_bound(x[56], 1.0)
set_lower_bound(x[57], -1.0)
set_upper_bound(x[57], 1.0)
set_lower_bound(x[58], -1.0)
set_upper_bound(x[58], 1.0)
set_lower_bound(x[59], -1.0)
set_upper_bound(x[59], 1.0)
set_lower_bound(x[60], -1.0)
set_upper_bound(x[60], 1.0)
set_lower_bound(x[61], -1.0)
set_upper_bound(x[61], 1.0)
set_lower_bound(x[62], -1.0)
set_upper_bound(x[62], 1.0)
set_lower_bound(x[63], -1.0)
set_upper_bound(x[63], 1.0)
set_lower_bound(x[64], -1.0)
set_upper_bound(x[64], 1.0)
set_lower_bound(x[65], -1.0)
set_upper_bound(x[65], 1.0)
set_lower_bound(x[66], -1.0)
set_upper_bound(x[66], 1.0)
set_lower_bound(x[67], -1.0)
set_upper_bound(x[67], 1.0)
set_lower_bound(x[68], -1.0)
set_upper_bound(x[68], 1.0)
set_lower_bound(x[69], -1.0)
set_upper_bound(x[69], 1.0)
set_lower_bound(x[70], -1.0)
set_upper_bound(x[70], 1.0)
set_lower_bound(x[71], -1.0)
set_upper_bound(x[71], 1.0)
set_lower_bound(x[72], -1.0)
set_upper_bound(x[72], 1.0)
set_lower_bound(x[73], -1.0)
set_upper_bound(x[73], 1.0)
set_lower_bound(x[74], -1.0)
set_upper_bound(x[74], 1.0)
set_lower_bound(x[75], -1.0)
set_upper_bound(x[75], 1.0)
set_lower_bound(x[76], -1.0)
set_upper_bound(x[76], 1.0)
set_lower_bound(x[77], -1.0)
set_upper_bound(x[77], 1.0)
set_lower_bound(x[78], -1.0)
set_upper_bound(x[78], 1.0)
set_lower_bound(x[79], -1.0)
set_upper_bound(x[79], 1.0)
set_lower_bound(x[80], -1.0)
set_upper_bound(x[80], 1.0)
set_lower_bound(x[81], -1.0)
set_upper_bound(x[81], 1.0)
set_lower_bound(x[82], -1.0)
set_upper_bound(x[82], 1.0)
set_lower_bound(x[83], -1.0)
set_upper_bound(x[83], 1.0)
set_lower_bound(x[84], -1.0)
set_upper_bound(x[84], 1.0)
set_lower_bound(x[85], -1.0)
set_upper_bound(x[85], 1.0)
set_lower_bound(x[86], -1.0)
set_upper_bound(x[86], 1.0)
set_lower_bound(x[87], -1.0)
set_upper_bound(x[87], 1.0)
set_lower_bound(x[88], -1.0)
set_upper_bound(x[88], 1.0)
set_lower_bound(x[89], -1.0)
set_upper_bound(x[89], 1.0)
set_lower_bound(x[90], -1.0)
set_upper_bound(x[90], 1.0)
set_lower_bound(x[91], -1.0)
set_upper_bound(x[91], 1.0)
set_lower_bound(x[92], -1.0)
set_upper_bound(x[92], 1.0)
set_lower_bound(x[93], -1.0)
set_upper_bound(x[93], 1.0)
set_lower_bound(x[94], -1.0)
set_upper_bound(x[94], 1.0)
set_lower_bound(x[95], -1.0)
set_upper_bound(x[95], 1.0)
set_lower_bound(x[96], -1.0)
set_upper_bound(x[96], 1.0)
set_lower_bound(x[97], -1.0)
set_upper_bound(x[97], 1.0)
set_lower_bound(x[98], -1.0)
set_upper_bound(x[98], 1.0)
set_lower_bound(x[99], -1.0)
set_upper_bound(x[99], 1.0)
set_lower_bound(x[100], -1.0)
set_upper_bound(x[100], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -((-10+x[1]*x[1]+x[2]*x[2]+x[3]*x[3]+x[4]*x[4]+x[5]*x[5]+x[6]*x[6]+x[7]*x[7]+x[8]*x[8]+x[9]*x[9]+x[10]*x[10])*(-10+x[1]*x[1]+x[2]*x[2]+x[3]*x[3]+x[4]*x[4]+x[5]*x[5]+x[6]*x[6]+x[7]*x[7]+x[8]*x[8]+x[9]*x[9]+x[10]*x[10])+(x[1]*x[11]+x[2]*x[12]+x[3]*x[13]+x[4]*x[14]+x[5]*x[15]+x[6]*x[16]+x[7]*x[17]+x[8]*x[18]+x[9]*x[19]+x[10]*x[20])*(x[1]*x[11]+x[2]*x[12]+x[3]*x[13]+x[4]*x[14]+x[5]*x[15]+x[6]*x[16]+x[7]*x[17]+x[8]*x[18]+x[9]*x[19]+x[10]*x[20])+(-10+x[11]*x[11]+x[12]*x[12]+x[13]*x[13]+x[14]*x[14]+x[15]*x[15]+x[16]*x[16]+x[17]*x[17]+x[18]*x[18]+x[19]*x[19]+x[20]*x[20])*(-10+x[11]*x[11]+x[12]*x[12]+x[13]*x[13]+x[14]*x[14]+x[15]*x[15]+x[16]*x[16]+x[17]*x[17]+x[18]*x[18]+x[19]*x[19]+x[20]*x[20])+(x[1]*x[21]+x[2]*x[22]+x[3]*x[23]+x[4]*x[24]+x[5]*x[25]+x[6]*x[26]+x[7]*x[27]+x[8]*x[28]+x[9]*x[29]+x[10]*x[30])*(x[1]*x[21]+x[2]*x[22]+x[3]*x[23]+x[4]*x[24]+x[5]*x[25]+x[6]*x[26]+x[7]*x[27]+x[8]*x[28]+x[9]*x[29]+x[10]*x[30])+(x[11]*x[21]+x[12]*x[22]+x[13]*x[23]+x[14]*x[24]+x[15]*x[25]+x[16]*x[26]+x[17]*x[27]+x[18]*x[28]+x[19]*x[29]+x[20]*x[30])*(x[11]*x[21]+x[12]*x[22]+x[13]*x[23]+x[14]*x[24]+x[15]*x[25]+x[16]*x[26]+x[17]*x[27]+x[18]*x[28]+x[19]*x[29]+x[20]*x[30])+(-10+x[21]*x[21]+x[22]*x[22]+x[23]*x[23]+x[24]*x[24]+x[25]*x[25]+x[26]*x[26]+x[27]*x[27]+x[28]*x[28]+x[29]*x[29]+x[30]*x[30])*(-10+x[21]*x[21]+x[22]*x[22]+x[23]*x[23]+x[24]*x[24]+x[25]*x[25]+x[26]*x[26]+x[27]*x[27]+x[28]*x[28]+x[29]*x[29]+x[30]*x[30])+(x[1]*x[31]+x[2]*x[32]+x[3]*x[33]+x[4]*x[34]+x[5]*x[35]+x[6]*x[36]+x[7]*x[37]+x[8]*x[38]+x[9]*x[39]+x[10]*x[40])*(x[1]*x[31]+x[2]*x[32]+x[3]*x[33]+x[4]*x[34]+x[5]*x[35]+x[6]*x[36]+x[7]*x[37]+x[8]*x[38]+x[9]*x[39]+x[10]*x[40])+(x[11]*x[31]+x[12]*x[32]+x[13]*x[33]+x[14]*x[34]+x[15]*x[35]+x[16]*x[36]+x[17]*x[37]+x[18]*x[38]+x[19]*x[39]+x[20]*x[40])*(x[11]*x[31]+x[12]*x[32]+x[13]*x[33]+x[14]*x[34]+x[15]*x[35]+x[16]*x[36]+x[17]*x[37]+x[18]*x[38]+x[19]*x[39]+x[20]*x[40])+(x[21]*x[31]+x[22]*x[32]+x[23]*x[33]+x[24]*x[34]+x[25]*x[35]+x[26]*x[36]+x[27]*x[37]+x[28]*x[38]+x[29]*x[39]+x[30]*x[40])*(x[21]*x[31]+x[22]*x[32]+x[23]*x[33]+x[24]*x[34]+x[25]*x[35]+x[26]*x[36]+x[27]*x[37]+x[28]*x[38]+x[29]*x[39]+x[30]*x[40])+(-10+x[31]*x[31]+x[32]*x[32]+x[33]*x[33]+x[34]*x[34]+x[35]*x[35]+x[36]*x[36]+x[37]*x[37]+x[38]*x[38]+x[39]*x[39]+x[40]*x[40])*(-10+x[31]*x[31]+x[32]*x[32]+x[33]*x[33]+x[34]*x[34]+x[35]*x[35]+x[36]*x[36]+x[37]*x[37]+x[38]*x[38]+x[39]*x[39]+x[40]*x[40])+(x[1]*x[41]+x[2]*x[42]+x[3]*x[43]+x[4]*x[44]+x[5]*x[45]+x[6]*x[46]+x[7]*x[47]+x[8]*x[48]+x[9]*x[49]+x[10]*x[50])*(x[1]*x[41]+x[2]*x[42]+x[3]*x[43]+x[4]*x[44]+x[5]*x[45]+x[6]*x[46]+x[7]*x[47]+x[8]*x[48]+x[9]*x[49]+x[10]*x[50])+(x[11]*x[41]+x[12]*x[42]+x[13]*x[43]+x[14]*x[44]+x[15]*x[45]+x[16]*x[46]+x[17]*x[47]+x[18]*x[48]+x[19]*x[49]+x[20]*x[50])*(x[11]*x[41]+x[12]*x[42]+x[13]*x[43]+x[14]*x[44]+x[15]*x[45]+x[16]*x[46]+x[17]*x[47]+x[18]*x[48]+x[19]*x[49]+x[20]*x[50])+(x[21]*x[41]+x[22]*x[42]+x[23]*x[43]+x[24]*x[44]+x[25]*x[45]+x[26]*x[46]+x[27]*x[47]+x[28]*x[48]+x[29]*x[49]+x[30]*x[50])*(x[21]*x[41]+x[22]*x[42]+x[23]*x[43]+x[24]*x[44]+x[25]*x[45]+x[26]*x[46]+x[27]*x[47]+x[28]*x[48]+x[29]*x[49]+x[30]*x[50])+(x[31]*x[41]+x[32]*x[42]+x[33]*x[43]+x[34]*x[44]+x[35]*x[45]+x[36]*x[46]+x[37]*x[47]+x[38]*x[48]+x[39]*x[49]+x[40]*x[50])*(x[31]*x[41]+x[32]*x[42]+x[33]*x[43]+x[34]*x[44]+x[35]*x[45]+x[36]*x[46]+x[37]*x[47]+x[38]*x[48]+x[39]*x[49]+x[40]*x[50])+(-10+x[41]*x[41]+x[42]*x[42]+x[43]*x[43]+x[44]*x[44]+x[45]*x[45]+x[46]*x[46]+x[47]*x[47]+x[48]*x[48]+x[49]*x[49]+x[50]*x[50])*(-10+x[41]*x[41]+x[42]*x[42]+x[43]*x[43]+x[44]*x[44]+x[45]*x[45]+x[46]*x[46]+x[47]*x[47]+x[48]*x[48]+x[49]*x[49]+x[50]*x[50])+(x[1]*x[51]+x[2]*x[52]+x[3]*x[53]+x[4]*x[54]+x[5]*x[55]+x[6]*x[56]+x[7]*x[57]+x[8]*x[58]+x[9]*x[59]+x[10]*x[60])*(x[1]*x[51]+x[2]*x[52]+x[3]*x[53]+x[4]*x[54]+x[5]*x[55]+x[6]*x[56]+x[7]*x[57]+x[8]*x[58]+x[9]*x[59]+x[10]*x[60])+(x[11]*x[51]+x[12]*x[52]+x[13]*x[53]+x[14]*x[54]+x[15]*x[55]+x[16]*x[56]+x[17]*x[57]+x[18]*x[58]+x[19]*x[59]+x[20]*x[60])*(x[11]*x[51]+x[12]*x[52]+x[13]*x[53]+x[14]*x[54]+x[15]*x[55]+x[16]*x[56]+x[17]*x[57]+x[18]*x[58]+x[19]*x[59]+x[20]*x[60])+(x[21]*x[51]+x[22]*x[52]+x[23]*x[53]+x[24]*x[54]+x[25]*x[55]+x[26]*x[56]+x[27]*x[57]+x[28]*x[58]+x[29]*x[59]+x[30]*x[60])*(x[21]*x[51]+x[22]*x[52]+x[23]*x[53]+x[24]*x[54]+x[25]*x[55]+x[26]*x[56]+x[27]*x[57]+x[28]*x[58]+x[29]*x[59]+x[30]*x[60])+(x[31]*x[51]+x[32]*x[52]+x[33]*x[53]+x[34]*x[54]+x[35]*x[55]+x[36]*x[56]+x[37]*x[57]+x[38]*x[58]+x[39]*x[59]+x[40]*x[60])*(x[31]*x[51]+x[32]*x[52]+x[33]*x[53]+x[34]*x[54]+x[35]*x[55]+x[36]*x[56]+x[37]*x[57]+x[38]*x[58]+x[39]*x[59]+x[40]*x[60])+(x[41]*x[51]+x[42]*x[52]+x[43]*x[53]+x[44]*x[54]+x[45]*x[55]+x[46]*x[56]+x[47]*x[57]+x[48]*x[58]+x[49]*x[59]+x[50]*x[60])*(x[41]*x[51]+x[42]*x[52]+x[43]*x[53]+x[44]*x[54]+x[45]*x[55]+x[46]*x[56]+x[47]*x[57]+x[48]*x[58]+x[49]*x[59]+x[50]*x[60])+(-10+x[51]*x[51]+x[52]*x[52]+x[53]*x[53]+x[54]*x[54]+x[55]*x[55]+x[56]*x[56]+x[57]*x[57]+x[58]*x[58]+x[59]*x[59]+x[60]*x[60])*(-10+x[51]*x[51]+x[52]*x[52]+x[53]*x[53]+x[54]*x[54]+x[55]*x[55]+x[56]*x[56]+x[57]*x[57]+x[58]*x[58]+x[59]*x[59]+x[60]*x[60])+(x[1]*x[61]+x[2]*x[62]+x[3]*x[63]+x[4]*x[64]+x[5]*x[65]+x[6]*x[66]+x[7]*x[67]+x[8]*x[68]+x[9]*x[69]+x[10]*x[70])*(x[1]*x[61]+x[2]*x[62]+x[3]*x[63]+x[4]*x[64]+x[5]*x[65]+x[6]*x[66]+x[7]*x[67]+x[8]*x[68]+x[9]*x[69]+x[10]*x[70])+(x[11]*x[61]+x[12]*x[62]+x[13]*x[63]+x[14]*x[64]+x[15]*x[65]+x[16]*x[66]+x[17]*x[67]+x[18]*x[68]+x[19]*x[69]+x[20]*x[70])*(x[11]*x[61]+x[12]*x[62]+x[13]*x[63]+x[14]*x[64]+x[15]*x[65]+x[16]*x[66]+x[17]*x[67]+x[18]*x[68]+x[19]*x[69]+x[20]*x[70])+(x[21]*x[61]+x[22]*x[62]+x[23]*x[63]+x[24]*x[64]+x[25]*x[65]+x[26]*x[66]+x[27]*x[67]+x[28]*x[68]+x[29]*x[69]+x[30]*x[70])*(x[21]*x[61]+x[22]*x[62]+x[23]*x[63]+x[24]*x[64]+x[25]*x[65]+x[26]*x[66]+x[27]*x[67]+x[28]*x[68]+x[29]*x[69]+x[30]*x[70])+(x[31]*x[61]+x[32]*x[62]+x[33]*x[63]+x[34]*x[64]+x[35]*x[65]+x[36]*x[66]+x[37]*x[67]+x[38]*x[68]+x[39]*x[69]+x[40]*x[70])*(x[31]*x[61]+x[32]*x[62]+x[33]*x[63]+x[34]*x[64]+x[35]*x[65]+x[36]*x[66]+x[37]*x[67]+x[38]*x[68]+x[39]*x[69]+x[40]*x[70])+(x[41]*x[61]+x[42]*x[62]+x[43]*x[63]+x[44]*x[64]+x[45]*x[65]+x[46]*x[66]+x[47]*x[67]+x[48]*x[68]+x[49]*x[69]+x[50]*x[70])*(x[41]*x[61]+x[42]*x[62]+x[43]*x[63]+x[44]*x[64]+x[45]*x[65]+x[46]*x[66]+x[47]*x[67]+x[48]*x[68]+x[49]*x[69]+x[50]*x[70])+(x[51]*x[61]+x[52]*x[62]+x[53]*x[63]+x[54]*x[64]+x[55]*x[65]+x[56]*x[66]+x[57]*x[67]+x[58]*x[68]+x[59]*x[69]+x[60]*x[70])*(x[51]*x[61]+x[52]*x[62]+x[53]*x[63]+x[54]*x[64]+x[55]*x[65]+x[56]*x[66]+x[57]*x[67]+x[58]*x[68]+x[59]*x[69]+x[60]*x[70])+(-10+x[61]*x[61]+x[62]*x[62]+x[63]*x[63]+x[64]*x[64]+x[65]*x[65]+x[66]*x[66]+x[67]*x[67]+x[68]*x[68]+x[69]*x[69]+x[70]*x[70])*(-10+x[61]*x[61]+x[62]*x[62]+x[63]*x[63]+x[64]*x[64]+x[65]*x[65]+x[66]*x[66]+x[67]*x[67]+x[68]*x[68]+x[69]*x[69]+x[70]*x[70])+(x[1]*x[71]+x[2]*x[72]+x[3]*x[73]+x[4]*x[74]+x[5]*x[75]+x[6]*x[76]+x[7]*x[77]+x[8]*x[78]+x[9]*x[79]+x[10]*x[80])*(x[1]*x[71]+x[2]*x[72]+x[3]*x[73]+x[4]*x[74]+x[5]*x[75]+x[6]*x[76]+x[7]*x[77]+x[8]*x[78]+x[9]*x[79]+x[10]*x[80])+(x[11]*x[71]+x[12]*x[72]+x[13]*x[73]+x[14]*x[74]+x[15]*x[75]+x[16]*x[76]+x[17]*x[77]+x[18]*x[78]+x[19]*x[79]+x[20]*x[80])*(x[11]*x[71]+x[12]*x[72]+x[13]*x[73]+x[14]*x[74]+x[15]*x[75]+x[16]*x[76]+x[17]*x[77]+x[18]*x[78]+x[19]*x[79]+x[20]*x[80])+(x[21]*x[71]+x[22]*x[72]+x[23]*x[73]+x[24]*x[74]+x[25]*x[75]+x[26]*x[76]+x[27]*x[77]+x[28]*x[78]+x[29]*x[79]+x[30]*x[80])*(x[21]*x[71]+x[22]*x[72]+x[23]*x[73]+x[24]*x[74]+x[25]*x[75]+x[26]*x[76]+x[27]*x[77]+x[28]*x[78]+x[29]*x[79]+x[30]*x[80])+(x[31]*x[71]+x[32]*x[72]+x[33]*x[73]+x[34]*x[74]+x[35]*x[75]+x[36]*x[76]+x[37]*x[77]+x[38]*x[78]+x[39]*x[79]+x[40]*x[80])*(x[31]*x[71]+x[32]*x[72]+x[33]*x[73]+x[34]*x[74]+x[35]*x[75]+x[36]*x[76]+x[37]*x[77]+x[38]*x[78]+x[39]*x[79]+x[40]*x[80])+(x[41]*x[71]+x[42]*x[72]+x[43]*x[73]+x[44]*x[74]+x[45]*x[75]+x[46]*x[76]+x[47]*x[77]+x[48]*x[78]+x[49]*x[79]+x[50]*x[80])*(x[41]*x[71]+x[42]*x[72]+x[43]*x[73]+x[44]*x[74]+x[45]*x[75]+x[46]*x[76]+x[47]*x[77]+x[48]*x[78]+x[49]*x[79]+x[50]*x[80])+(x[51]*x[71]+x[52]*x[72]+x[53]*x[73]+x[54]*x[74]+x[55]*x[75]+x[56]*x[76]+x[57]*x[77]+x[58]*x[78]+x[59]*x[79]+x[60]*x[80])*(x[51]*x[71]+x[52]*x[72]+x[53]*x[73]+x[54]*x[74]+x[55]*x[75]+x[56]*x[76]+x[57]*x[77]+x[58]*x[78]+x[59]*x[79]+x[60]*x[80])+(x[61]*x[71]+x[62]*x[72]+x[63]*x[73]+x[64]*x[74]+x[65]*x[75]+x[66]*x[76]+x[67]*x[77]+x[68]*x[78]+x[69]*x[79]+x[70]*x[80])*(x[61]*x[71]+x[62]*x[72]+x[63]*x[73]+x[64]*x[74]+x[65]*x[75]+x[66]*x[76]+x[67]*x[77]+x[68]*x[78]+x[69]*x[79]+x[70]*x[80])+(-10+x[71]*x[71]+x[72]*x[72]+x[73]*x[73]+x[74]*x[74]+x[75]*x[75]+x[76]*x[76]+x[77]*x[77]+x[78]*x[78]+x[79]*x[79]+x[80]*x[80])*(-10+x[71]*x[71]+x[72]*x[72]+x[73]*x[73]+x[74]*x[74]+x[75]*x[75]+x[76]*x[76]+x[77]*x[77]+x[78]*x[78]+x[79]*x[79]+x[80]*x[80])+(x[1]*x[81]+x[2]*x[82]+x[3]*x[83]+x[4]*x[84]+x[5]*x[85]+x[6]*x[86]+x[7]*x[87]+x[8]*x[88]+x[9]*x[89]+x[10]*x[90])*(x[1]*x[81]+x[2]*x[82]+x[3]*x[83]+x[4]*x[84]+x[5]*x[85]+x[6]*x[86]+x[7]*x[87]+x[8]*x[88]+x[9]*x[89]+x[10]*x[90])+(x[11]*x[81]+x[12]*x[82]+x[13]*x[83]+x[14]*x[84]+x[15]*x[85]+x[16]*x[86]+x[17]*x[87]+x[18]*x[88]+x[19]*x[89]+x[20]*x[90])*(x[11]*x[81]+x[12]*x[82]+x[13]*x[83]+x[14]*x[84]+x[15]*x[85]+x[16]*x[86]+x[17]*x[87]+x[18]*x[88]+x[19]*x[89]+x[20]*x[90])+(x[21]*x[81]+x[22]*x[82]+x[23]*x[83]+x[24]*x[84]+x[25]*x[85]+x[26]*x[86]+x[27]*x[87]+x[28]*x[88]+x[29]*x[89]+x[30]*x[90])*(x[21]*x[81]+x[22]*x[82]+x[23]*x[83]+x[24]*x[84]+x[25]*x[85]+x[26]*x[86]+x[27]*x[87]+x[28]*x[88]+x[29]*x[89]+x[30]*x[90])+(x[31]*x[81]+x[32]*x[82]+x[33]*x[83]+x[34]*x[84]+x[35]*x[85]+x[36]*x[86]+x[37]*x[87]+x[38]*x[88]+x[39]*x[89]+x[40]*x[90])*(x[31]*x[81]+x[32]*x[82]+x[33]*x[83]+x[34]*x[84]+x[35]*x[85]+x[36]*x[86]+x[37]*x[87]+x[38]*x[88]+x[39]*x[89]+x[40]*x[90])+(x[41]*x[81]+x[42]*x[82]+x[43]*x[83]+x[44]*x[84]+x[45]*x[85]+x[46]*x[86]+x[47]*x[87]+x[48]*x[88]+x[49]*x[89]+x[50]*x[90])*(x[41]*x[81]+x[42]*x[82]+x[43]*x[83]+x[44]*x[84]+x[45]*x[85]+x[46]*x[86]+x[47]*x[87]+x[48]*x[88]+x[49]*x[89]+x[50]*x[90])+(x[51]*x[81]+x[52]*x[82]+x[53]*x[83]+x[54]*x[84]+x[55]*x[85]+x[56]*x[86]+x[57]*x[87]+x[58]*x[88]+x[59]*x[89]+x[60]*x[90])*(x[51]*x[81]+x[52]*x[82]+x[53]*x[83]+x[54]*x[84]+x[55]*x[85]+x[56]*x[86]+x[57]*x[87]+x[58]*x[88]+x[59]*x[89]+x[60]*x[90])+(x[61]*x[81]+x[62]*x[82]+x[63]*x[83]+x[64]*x[84]+x[65]*x[85]+x[66]*x[86]+x[67]*x[87]+x[68]*x[88]+x[69]*x[89]+x[70]*x[90])*(x[61]*x[81]+x[62]*x[82]+x[63]*x[83]+x[64]*x[84]+x[65]*x[85]+x[66]*x[86]+x[67]*x[87]+x[68]*x[88]+x[69]*x[89]+x[70]*x[90])+(x[71]*x[81]+x[72]*x[82]+x[73]*x[83]+x[74]*x[84]+x[75]*x[85]+x[76]*x[86]+x[77]*x[87]+x[78]*x[88]+x[79]*x[89]+x[80]*x[90])*(x[71]*x[81]+x[72]*x[82]+x[73]*x[83]+x[74]*x[84]+x[75]*x[85]+x[76]*x[86]+x[77]*x[87]+x[78]*x[88]+x[79]*x[89]+x[80]*x[90])+(-10+x[81]*x[81]+x[82]*x[82]+x[83]*x[83]+x[84]*x[84]+x[85]*x[85]+x[86]*x[86]+x[87]*x[87]+x[88]*x[88]+x[89]*x[89]+x[90]*x[90])*(-10+x[81]*x[81]+x[82]*x[82]+x[83]*x[83]+x[84]*x[84]+x[85]*x[85]+x[86]*x[86]+x[87]*x[87]+x[88]*x[88]+x[89]*x[89]+x[90]*x[90])+(x[1]*x[91]+x[2]*x[92]+x[3]*x[93]+x[4]*x[94]+x[5]*x[95]+x[6]*x[96]+x[7]*x[97]+x[8]*x[98]+x[9]*x[99]+x[10]*x[100])*(x[1]*x[91]+x[2]*x[92]+x[3]*x[93]+x[4]*x[94]+x[5]*x[95]+x[6]*x[96]+x[7]*x[97]+x[8]*x[98]+x[9]*x[99]+x[10]*x[100])+(x[11]*x[91]+x[12]*x[92]+x[13]*x[93]+x[14]*x[94]+x[15]*x[95]+x[16]*x[96]+x[17]*x[97]+x[18]*x[98]+x[19]*x[99]+x[20]*x[100])*(x[11]*x[91]+x[12]*x[92]+x[13]*x[93]+x[14]*x[94]+x[15]*x[95]+x[16]*x[96]+x[17]*x[97]+x[18]*x[98]+x[19]*x[99]+x[20]*x[100])+(x[21]*x[91]+x[22]*x[92]+x[23]*x[93]+x[24]*x[94]+x[25]*x[95]+x[26]*x[96]+x[27]*x[97]+x[28]*x[98]+x[29]*x[99]+x[30]*x[100])*(x[21]*x[91]+x[22]*x[92]+x[23]*x[93]+x[24]*x[94]+x[25]*x[95]+x[26]*x[96]+x[27]*x[97]+x[28]*x[98]+x[29]*x[99]+x[30]*x[100])+(x[31]*x[91]+x[32]*x[92]+x[33]*x[93]+x[34]*x[94]+x[35]*x[95]+x[36]*x[96]+x[37]*x[97]+x[38]*x[98]+x[39]*x[99]+x[40]*x[100])*(x[31]*x[91]+x[32]*x[92]+x[33]*x[93]+x[34]*x[94]+x[35]*x[95]+x[36]*x[96]+x[37]*x[97]+x[38]*x[98]+x[39]*x[99]+x[40]*x[100])+(x[41]*x[91]+x[42]*x[92]+x[43]*x[93]+x[44]*x[94]+x[45]*x[95]+x[46]*x[96]+x[47]*x[97]+x[48]*x[98]+x[49]*x[99]+x[50]*x[100])*(x[41]*x[91]+x[42]*x[92]+x[43]*x[93]+x[44]*x[94]+x[45]*x[95]+x[46]*x[96]+x[47]*x[97]+x[48]*x[98]+x[49]*x[99]+x[50]*x[100])+(x[51]*x[91]+x[52]*x[92]+x[53]*x[93]+x[54]*x[94]+x[55]*x[95]+x[56]*x[96]+x[57]*x[97]+x[58]*x[98]+x[59]*x[99]+x[60]*x[100])*(x[51]*x[91]+x[52]*x[92]+x[53]*x[93]+x[54]*x[94]+x[55]*x[95]+x[56]*x[96]+x[57]*x[97]+x[58]*x[98]+x[59]*x[99]+x[60]*x[100])+(x[61]*x[91]+x[62]*x[92]+x[63]*x[93]+x[64]*x[94]+x[65]*x[95]+x[66]*x[96]+x[67]*x[97]+x[68]*x[98]+x[69]*x[99]+x[70]*x[100])*(x[61]*x[91]+x[62]*x[92]+x[63]*x[93]+x[64]*x[94]+x[65]*x[95]+x[66]*x[96]+x[67]*x[97]+x[68]*x[98]+x[69]*x[99]+x[70]*x[100])+(x[71]*x[91]+x[72]*x[92]+x[73]*x[93]+x[74]*x[94]+x[75]*x[95]+x[76]*x[96]+x[77]*x[97]+x[78]*x[98]+x[79]*x[99]+x[80]*x[100])*(x[71]*x[91]+x[72]*x[92]+x[73]*x[93]+x[74]*x[94]+x[75]*x[95]+x[76]*x[96]+x[77]*x[97]+x[78]*x[98]+x[79]*x[99]+x[80]*x[100])+(x[81]*x[91]+x[82]*x[92]+x[83]*x[93]+x[84]*x[94]+x[85]*x[95]+x[86]*x[96]+x[87]*x[97]+x[88]*x[98]+x[89]*x[99]+x[90]*x[100])*(x[81]*x[91]+x[82]*x[92]+x[83]*x[93]+x[84]*x[94]+x[85]*x[95]+x[86]*x[96]+x[87]*x[97]+x[88]*x[98]+x[89]*x[99]+x[90]*x[100])+(-10+x[91]*x[91]+x[92]*x[92]+x[93]*x[93]+x[94]*x[94]+x[95]*x[95]+x[96]*x[96]+x[97]*x[97]+x[98]*x[98]+x[99]*x[99]+x[100]*x[100])*(-10+x[91]*x[91]+x[92]*x[92]+x[93]*x[93]+x[94]*x[94]+x[95]*x[95]+x[96]*x[96]+x[97]*x[97]+x[98]*x[98]+x[99]*x[99]+x[100]*x[100])+(-1+x[2]*x[2])*(-1+x[2]*x[2])+(-1+x[3]*x[3])*(-1+x[3]*x[3])+(-1+x[4]*x[4])*(-1+x[4]*x[4])+(-1+x[5]*x[5])*(-1+x[5]*x[5])+(-1+x[6]*x[6])*(-1+x[6]*x[6])+(-1+x[7]*x[7])*(-1+x[7]*x[7])+(-1+x[8]*x[8])*(-1+x[8]*x[8])+(-1+x[9]*x[9])*(-1+x[9]*x[9])+(-1+x[10]*x[10])*(-1+x[10]*x[10])+(-1+x[12]*x[12])*(-1+x[12]*x[12])+(-1+x[13]*x[13])*(-1+x[13]*x[13])+(-1+x[14]*x[14])*(-1+x[14]*x[14])+(-1+x[15]*x[15])*(-1+x[15]*x[15])+(-1+x[16]*x[16])*(-1+x[16]*x[16])+(-1+x[17]*x[17])*(-1+x[17]*x[17])+(-1+x[18]*x[18])*(-1+x[18]*x[18])+(-1+x[19]*x[19])*(-1+x[19]*x[19])+(-1+x[20]*x[20])*(-1+x[20]*x[20])+(-1+x[22]*x[22])*(-1+x[22]*x[22])+(-1+x[23]*x[23])*(-1+x[23]*x[23])+(-1+x[24]*x[24])*(-1+x[24]*x[24])+(-1+x[25]*x[25])*(-1+x[25]*x[25])+(-1+x[26]*x[26])*(-1+x[26]*x[26])+(-1+x[27]*x[27])*(-1+x[27]*x[27])+(-1+x[28]*x[28])*(-1+x[28]*x[28])+(-1+x[29]*x[29])*(-1+x[29]*x[29])+(-1+x[30]*x[30])*(-1+x[30]*x[30])+(-1+x[32]*x[32])*(-1+x[32]*x[32])+(-1+x[33]*x[33])*(-1+x[33]*x[33])+(-1+x[34]*x[34])*(-1+x[34]*x[34])+(-1+x[35]*x[35])*(-1+x[35]*x[35])+(-1+x[36]*x[36])*(-1+x[36]*x[36])+(-1+x[37]*x[37])*(-1+x[37]*x[37])+(-1+x[38]*x[38])*(-1+x[38]*x[38])+(-1+x[39]*x[39])*(-1+x[39]*x[39])+(-1+x[40]*x[40])*(-1+x[40]*x[40])+(-1+x[42]*x[42])*(-1+x[42]*x[42])+(-1+x[43]*x[43])*(-1+x[43]*x[43])+(-1+x[44]*x[44])*(-1+x[44]*x[44])+(-1+x[45]*x[45])*(-1+x[45]*x[45])+(-1+x[46]*x[46])*(-1+x[46]*x[46])+(-1+x[47]*x[47])*(-1+x[47]*x[47])+(-1+x[48]*x[48])*(-1+x[48]*x[48])+(-1+x[49]*x[49])*(-1+x[49]*x[49])+(-1+x[50]*x[50])*(-1+x[50]*x[50])+(-1+x[52]*x[52])*(-1+x[52]*x[52])+(-1+x[53]*x[53])*(-1+x[53]*x[53])+(-1+x[54]*x[54])*(-1+x[54]*x[54])+(-1+x[55]*x[55])*(-1+x[55]*x[55])+(-1+x[56]*x[56])*(-1+x[56]*x[56])+(-1+x[57]*x[57])*(-1+x[57]*x[57])+(-1+x[58]*x[58])*(-1+x[58]*x[58])+(-1+x[59]*x[59])*(-1+x[59]*x[59])+(-1+x[60]*x[60])*(-1+x[60]*x[60])+(-1+x[62]*x[62])*(-1+x[62]*x[62])+(-1+x[63]*x[63])*(-1+x[63]*x[63])+(-1+x[64]*x[64])*(-1+x[64]*x[64])+(-1+x[65]*x[65])*(-1+x[65]*x[65])+(-1+x[66]*x[66])*(-1+x[66]*x[66])+(-1+x[67]*x[67])*(-1+x[67]*x[67])+(-1+x[68]*x[68])*(-1+x[68]*x[68])+(-1+x[69]*x[69])*(-1+x[69]*x[69])+(-1+x[70]*x[70])*(-1+x[70]*x[70])+(-1+x[72]*x[72])*(-1+x[72]*x[72])+(-1+x[73]*x[73])*(-1+x[73]*x[73])+(-1+x[74]*x[74])*(-1+x[74]*x[74])+(-1+x[75]*x[75])*(-1+x[75]*x[75])+(-1+x[76]*x[76])*(-1+x[76]*x[76])+(-1+x[77]*x[77])*(-1+x[77]*x[77])+(-1+x[78]*x[78])*(-1+x[78]*x[78])+(-1+x[79]*x[79])*(-1+x[79]*x[79])+(-1+x[80]*x[80])*(-1+x[80]*x[80])+(-1+x[82]*x[82])*(-1+x[82]*x[82])+(-1+x[83]*x[83])*(-1+x[83]*x[83])+(-1+x[84]*x[84])*(-1+x[84]*x[84])+(-1+x[85]*x[85])*(-1+x[85]*x[85])+(-1+x[86]*x[86])*(-1+x[86]*x[86])+(-1+x[87]*x[87])*(-1+x[87]*x[87])+(-1+x[88]*x[88])*(-1+x[88]*x[88])+(-1+x[89]*x[89])*(-1+x[89]*x[89])+(-1+x[90]*x[90])*(-1+x[90]*x[90])+(-1+x[92]*x[92])*(-1+x[92]*x[92])+(-1+x[93]*x[93])*(-1+x[93]*x[93])+(-1+x[94]*x[94])*(-1+x[94]*x[94])+(-1+x[95]*x[95])*(-1+x[95]*x[95])+(-1+x[96]*x[96])*(-1+x[96]*x[96])+(-1+x[97]*x[97])*(-1+x[97]*x[97])+(-1+x[98]*x[98])*(-1+x[98]*x[98])+(-1+x[99]*x[99])*(-1+x[99]*x[99])+(-1+x[100]*x[100])*(-1+x[100]*x[100]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
