using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241]
@variable(m, x[x_Idx])
b_Idx = Any[88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281]
@variable(m, b[b_Idx],  Bin)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[164], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[241], 0.0)
set_lower_bound(x[165], 0.0)
set_lower_bound(x[186], 0.0)
set_lower_bound(x[202], 0.0)
set_lower_bound(x[220], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[172], 0.0)
set_lower_bound(x[226], 0.0)
set_lower_bound(x[188], 0.0)
set_lower_bound(x[160], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[238], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[162], 0.0)
set_lower_bound(x[200], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[206], 0.0)
set_lower_bound(x[215], 0.0)
set_lower_bound(x[174], 0.0)
set_lower_bound(x[169], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[197], 0.0)
set_lower_bound(x[198], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[218], 0.0)
set_lower_bound(x[225], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[231], 0.0)
set_lower_bound(x[190], 0.0)
set_lower_bound(x[196], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[232], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[171], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[234], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[219], 0.0)
set_lower_bound(x[185], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[224], 0.0)
set_lower_bound(x[179], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[175], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[209], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[161], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[199], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[213], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[173], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[176], 0.0)
set_lower_bound(x[240], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[227], 0.0)
set_lower_bound(x[189], 0.0)
set_lower_bound(x[187], 0.0)
set_lower_bound(x[166], 0.0)
set_lower_bound(x[157], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[163], 0.0)
set_lower_bound(x[230], 0.0)
set_lower_bound(x[216], 0.0)
set_lower_bound(x[192], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[207], 0.0)
set_lower_bound(x[205], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[195], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[181], 0.0)
set_lower_bound(x[153], 0.0)
set_lower_bound(x[201], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[223], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[208], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[210], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[182], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[191], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[177], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[152], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[233], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[184], 0.0)
set_lower_bound(x[236], 0.0)
set_lower_bound(x[158], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[203], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[170], 0.0)
set_lower_bound(x[221], 0.0)
set_lower_bound(x[217], 0.0)
set_lower_bound(x[212], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[183], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[167], 0.0)
set_lower_bound(x[239], 0.0)
set_lower_bound(x[228], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[222], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[155], 0.0)
set_lower_bound(x[204], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[193], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[180], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[237], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[194], 0.0)
set_lower_bound(x[214], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[178], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[235], 0.0)
set_lower_bound(x[168], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[159], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[229], 0.0)
set_lower_bound(x[211], 0.0)
set_upper_bound(x[152], 40.0)
set_upper_bound(x[163], 30.0)
set_upper_bound(x[180], 20.0)
set_upper_bound(x[181], 20.0)
set_upper_bound(x[208], 30.0)
set_upper_bound(x[225], 25.0)
set_upper_bound(x[226], 25.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+10*x[2]+15*x[7]+18*x[11]+19*x[23]-35*x[27]-28*x[29]+16*x[30]-2*x[33]-3*x[34]-5*x[35]-4*x[36]+6*b[89]+40*b[90]+46*b[91]+7*b[93]+30*b[94]+37*b[95]+7*b[97]+15*b[98]+22*b[99]+11*b[101]+13*b[102]+24*b[103]+10*b[105]+13*b[106]+23*b[107]+9*b[109]+30*b[110]+39*b[111]+8*b[113]+20*b[114]+28*b[115]+8*b[117]+15*b[118]+23*b[119]+x[152]-5*x[158]+2*x[163]+10*x[180]+5*x[181]-40*x[188]-15*x[189]-10*x[190]-30*x[191]-35*x[192]-20*x[193]-25*x[194]-15*x[195]-30*x[203]+x[208]+5*x[225]+x[226]-120*x[233]-140*x[234]-90*x[235]-80*x[236]-285*x[237]-290*x[238]-280*x[239]-290*x[240]-350*x[241]+5*b[242]+8*b[243]+6*b[244]+10*b[245]+6*b[246]+7*b[247]+4*b[248]+5*b[249]+2*b[250]+4*b[251]+3*b[252]+7*b[253]+3*b[254]+2*b[255]+4*b[256]+2*b[257]+3*b[258]+5*b[259]+2*b[260]+b[261]+2*b[262]+9*b[263]+5*b[264]+2*b[265]+10*b[266]+4*b[267]+7*b[268]+4*b[269]+2*b[270]+8*b[271]+9*b[272]+3*b[273]+5*b[274]+5*b[275]+6*b[276]+2*b[277]+6*b[278]+3*b[279]+5*b[280]+9*b[281] == 0.0)
@constraint(m, e2, x[2]-0.2*x[37] == 0.0)
@constraint(m, e3, x[3]-0.2*x[38] == 0.0)
@constraint(m, e4, x[4]-0.2*x[39] == 0.0)
@constraint(m, e5, x[5]-0.2*x[40] == 0.0)
@constraint(m, e6, x[6]-0.2*x[41] == 0.0)
@constraint(m, e7, x[7]-0.5*x[42] == 0.0)
@constraint(m, e8, x[8]-0.5*x[43] == 0.0)
@constraint(m, e9, x[9]-0.7*x[44] == 0.0)
@constraint(m, e10, x[10]-0.7*x[45] == 0.0)
@constraint(m, e11, x[11]-1.2*x[46] == 0.0)
@constraint(m, e12, x[12]-1.2*x[47] == 0.0)
@constraint(m, e13, x[13]-0.5*x[48] == 0.0)
@constraint(m, e14, x[14]-0.7*x[49] == 0.0)
@constraint(m, e15, x[15]-1.2*x[50] == 0.0)
@constraint(m, e16, x[16]-1.2*x[51] == 0.0)
@constraint(m, e17, x[17]-1.2*x[52] == 0.0)
@constraint(m, e18, x[18]-1.2*x[53] == 0.0)
@constraint(m, e19, x[19]-0.3*x[54] == 0.0)
@constraint(m, e20, x[20]-0.9*x[55] == 0.0)
@constraint(m, e21, x[21]-0.3*x[56] == 0.0)
@constraint(m, e22, x[22]-0.9*x[57] == 0.0)
@constraint(m, e23, x[23]-0.4*x[58] == 0.0)
@constraint(m, e24, x[24]-0.4*x[59] == 0.0)
@constraint(m, e25, x[25]-0.4*x[60] == 0.0)
@constraint(m, e26, x[26]-1.6*x[61] == 0.0)
@constraint(m, e27, x[27]-1.6*x[62] == 0.0)
@constraint(m, e28, x[28]-1.1*x[63] == 0.0)
@constraint(m, e29, x[29]-1.1*x[64] == 0.0)
@constraint(m, e30, x[30]-0.7*x[65] == 0.0)
@constraint(m, e31, x[31]-0.7*x[66] == 0.0)
@constraint(m, e32, x[32]-0.7*x[67] == 0.0)
@constraint(m, e33, x[33]-0.2*x[68] == 0.0)
@constraint(m, e34, x[34]-0.7*x[69] == 0.0)
@constraint(m, e35, x[35]-0.3*x[70] == 0.0)
@constraint(m, e36, x[36]-0.9*x[71] == 0.0)
@constraint(m, e37, x[27] >= 1.2)
@constraint(m, e38, x[29] >= 1.2)
@constraint(m, e39, x[33] >= 1.1)
@constraint(m, e40, x[34] >= 1.1)
@constraint(m, e41, x[35] >= 1.4)
@constraint(m, e42, x[36] >= 1.3)
@constraint(m, e43, x[2] <= 35.0)
@constraint(m, e44, x[7] <= 36.0)
@constraint(m, e45, x[11] <= 25.0)
@constraint(m, e46, x[23] <= 24.0)
@constraint(m, e47, x[30] <= 30.0)
@constraint(m, e48, x[2]-x[3]-x[4] == 0.0)
@constraint(m, e49, x[5]-x[6] == 0.0)
@constraint(m, e50, x[7]-x[8]+x[13] == 0.0)
@constraint(m, e51, x[9]-x[10]+x[14] == 0.0)
@constraint(m, e52, x[11]-x[12]-x[15] == 0.0)
@constraint(m, e53, x[16]-x[17]-x[18] == 0.0)
@constraint(m, e54, x[19]-x[21] == 0.0)
@constraint(m, e55, x[20]-x[22] == 0.0)
@constraint(m, e56, x[23]-x[24]-x[25] == 0.0)
@constraint(m, e57, x[26]-x[27] == 0.0)
@constraint(m, e58, x[28]-x[29] == 0.0)
@constraint(m, e59, x[30]-x[31] == 0.0)
@constraint(m, e60, x[3]-x[5]-x[72] == 0.0)
@constraint(m, e61, x[4]+x[8]-x[9]-x[73] == 0.0)
@constraint(m, e62, x[12]-x[13]-x[14]-x[74] == 0.0)
@constraint(m, e63, x[15]-x[16]-x[75] == 0.0)
@constraint(m, e64, x[18]-x[19]-x[20]-x[76] == 0.0)
@constraint(m, e65, x[17]+x[24]-x[26]-x[77] == 0.0)
@constraint(m, e66, x[25]-x[28]+x[32]-x[78] == 0.0)
@constraint(m, e67, x[31]-x[32]-x[79] == 0.0)
@constraint(m, e68, x[39]-x[43] <= 0.0)
@constraint(m, e69, x[52]-x[59] <= 0.0)
@constraint(m, e70, x[60]-x[67] <= 0.0)
@constraint(m, e71, -0.8*x[38]+x[40]+148.75*b[88] <= 148.75)
@constraint(m, e72, -0.85*x[38]+x[40]+148.75*b[89] <= 148.75)
@constraint(m, e73, -0.8*x[38]+x[40]+148.75*b[90] <= 148.75)
@constraint(m, e74, -0.85*x[38]+x[40]+148.75*b[91] <= 148.75)
@constraint(m, e75, -0.8*x[38]+x[40]-148.75*b[88] >= -148.75)
@constraint(m, e76, -0.85*x[38]+x[40]-148.75*b[89] >= -148.75)
@constraint(m, e77, -0.8*x[38]+x[40]-148.75*b[90] >= -148.75)
@constraint(m, e78, -0.85*x[38]+x[40]-148.75*b[91] >= -148.75)
@constraint(m, e79, -0.9*x[39]+x[44]+254.045833333333*b[92] <= 254.045833333333)
@constraint(m, e80, -0.95*x[39]+x[44]+254.045833333333*b[93] <= 254.045833333333)
@constraint(m, e81, -0.9*x[39]+x[44]+254.045833333333*b[94] <= 254.045833333333)
@constraint(m, e82, -0.95*x[39]+x[44]+254.045833333333*b[95] <= 254.045833333333)
@constraint(m, e83, -0.9*x[39]+x[44]-166.25*b[92] >= -166.25)
@constraint(m, e84, -0.95*x[39]+x[44]-166.25*b[93] >= -166.25)
@constraint(m, e85, -0.9*x[39]+x[44]-166.25*b[94] >= -166.25)
@constraint(m, e86, -0.95*x[39]+x[44]-166.25*b[95] >= -166.25)
@constraint(m, e87, -0.85*x[47]+x[48]+20.4166666666667*b[96] <= 20.4166666666667)
@constraint(m, e88, -0.98*x[47]+x[48]+20.4166666666667*b[97] <= 20.4166666666667)
@constraint(m, e89, -0.85*x[47]+x[48]+20.4166666666667*b[98] <= 20.4166666666667)
@constraint(m, e90, -0.98*x[47]+x[48]+20.4166666666667*b[99] <= 20.4166666666667)
@constraint(m, e91, -0.85*x[47]+x[49]+20.4166666666667*b[96] <= 20.4166666666667)
@constraint(m, e92, -0.98*x[47]+x[49]+20.4166666666667*b[97] <= 20.4166666666667)
@constraint(m, e93, -0.85*x[47]+x[49]+20.4166666666667*b[98] <= 20.4166666666667)
@constraint(m, e94, -0.98*x[47]+x[49]+20.4166666666667*b[99] <= 20.4166666666667)
@constraint(m, e95, -0.85*x[47]+x[48]-20.4166666666667*b[96] >= -20.4166666666667)
@constraint(m, e96, -0.98*x[47]+x[48]-20.4166666666667*b[97] >= -20.4166666666667)
@constraint(m, e97, -0.85*x[47]+x[48]-20.4166666666667*b[98] >= -20.4166666666667)
@constraint(m, e98, -0.98*x[47]+x[48]-20.4166666666667*b[99] >= -20.4166666666667)
@constraint(m, e99, -0.85*x[47]+x[49]-20.4166666666667*b[96] >= -20.4166666666667)
@constraint(m, e100, -0.98*x[47]+x[49]-20.4166666666667*b[97] >= -20.4166666666667)
@constraint(m, e101, -0.85*x[47]+x[49]-20.4166666666667*b[98] >= -20.4166666666667)
@constraint(m, e102, -0.98*x[47]+x[49]-20.4166666666667*b[99] >= -20.4166666666667)
@constraint(m, e103, -0.85*x[50]+x[51]+18.75*b[100] <= 18.75)
@constraint(m, e104, -0.9*x[50]+x[51]+18.75*b[101] <= 18.75)
@constraint(m, e105, -0.85*x[50]+x[51]+18.75*b[102] <= 18.75)
@constraint(m, e106, -0.9*x[50]+x[51]+18.75*b[103] <= 18.75)
@constraint(m, e107, -0.85*x[50]+x[51]-18.75*b[100] >= -18.75)
@constraint(m, e108, -0.9*x[50]+x[51]-18.75*b[101] >= -18.75)
@constraint(m, e109, -0.85*x[50]+x[51]-18.75*b[102] >= -18.75)
@constraint(m, e110, -0.9*x[50]+x[51]-18.75*b[103] >= -18.75)
@constraint(m, e111, -0.75*x[53]+x[54]+17.8125*b[104] <= 17.8125)
@constraint(m, e112, -0.95*x[53]+x[54]+17.8125*b[105] <= 17.8125)
@constraint(m, e113, -0.9*x[53]+x[54]+17.8125*b[106] <= 17.8125)
@constraint(m, e114, -0.95*x[53]+x[54]+17.8125*b[107] <= 17.8125)
@constraint(m, e115, -0.75*x[53]+x[55]+17.8125*b[104] <= 17.8125)
@constraint(m, e116, -0.95*x[53]+x[55]+17.8125*b[105] <= 17.8125)
@constraint(m, e117, -0.9*x[53]+x[55]+17.8125*b[106] <= 17.8125)
@constraint(m, e118, -0.95*x[53]+x[55]+17.8125*b[107] <= 17.8125)
@constraint(m, e119, -0.75*x[53]+x[54]-17.8125*b[104] >= -17.8125)
@constraint(m, e120, -0.95*x[53]+x[54]-17.8125*b[105] >= -17.8125)
@constraint(m, e121, -0.9*x[53]+x[54]-17.8125*b[106] >= -17.8125)
@constraint(m, e122, -0.95*x[53]+x[54]-17.8125*b[107] >= -17.8125)
@constraint(m, e123, -0.75*x[53]+x[55]-17.8125*b[104] >= -17.8125)
@constraint(m, e124, -0.95*x[53]+x[55]-17.8125*b[105] >= -17.8125)
@constraint(m, e125, -0.9*x[53]+x[55]-17.8125*b[106] >= -17.8125)
@constraint(m, e126, -0.95*x[53]+x[55]-17.8125*b[107] >= -17.8125)
@constraint(m, e127, -0.8*x[52]+x[61]+66.9375*b[108] <= 66.9375)
@constraint(m, e128, -0.85*x[52]+x[61]+66.9375*b[109] <= 66.9375)
@constraint(m, e129, -0.8*x[52]+x[61]+66.9375*b[110] <= 66.9375)
@constraint(m, e130, -0.85*x[52]+x[61]+66.9375*b[111] <= 66.9375)
@constraint(m, e131, -0.8*x[52]+x[61]-15.9375*b[108] >= -15.9375)
@constraint(m, e132, -0.85*x[52]+x[61]-15.9375*b[109] >= -15.9375)
@constraint(m, e133, -0.8*x[52]+x[61]-15.9375*b[110] >= -15.9375)
@constraint(m, e134, -0.85*x[52]+x[61]-15.9375*b[111] >= -15.9375)
@constraint(m, e135, -0.85*x[60]+x[63]+94.4571428571429*b[112] <= 94.4571428571429)
@constraint(m, e136, -0.95*x[60]+x[63]+94.4571428571429*b[113] <= 94.4571428571429)
@constraint(m, e137, -0.85*x[60]+x[63]+94.4571428571429*b[114] <= 94.4571428571429)
@constraint(m, e138, -0.95*x[60]+x[63]+94.4571428571429*b[115] <= 94.4571428571429)
@constraint(m, e139, -0.85*x[60]+x[63]-57*b[112] >= -57.0)
@constraint(m, e140, -0.95*x[60]+x[63]-57*b[113] >= -57.0)
@constraint(m, e141, -0.85*x[60]+x[63]-57*b[114] >= -57.0)
@constraint(m, e142, -0.95*x[60]+x[63]-57*b[115] >= -57.0)
@constraint(m, e143, -0.8*x[66]+x[67]+39.4285714285714*b[116] <= 39.4285714285714)
@constraint(m, e144, -0.92*x[66]+x[67]+39.4285714285714*b[117] <= 39.4285714285714)
@constraint(m, e145, -0.8*x[66]+x[67]+39.4285714285714*b[118] <= 39.4285714285714)
@constraint(m, e146, -0.92*x[66]+x[67]+39.4285714285714*b[119] <= 39.4285714285714)
@constraint(m, e147, -0.8*x[66]+x[67]-39.4285714285714*b[116] >= -39.4285714285714)
@constraint(m, e148, -0.92*x[66]+x[67]-39.4285714285714*b[117] >= -39.4285714285714)
@constraint(m, e149, -0.8*x[66]+x[67]-39.4285714285714*b[118] >= -39.4285714285714)
@constraint(m, e150, -0.92*x[66]+x[67]-39.4285714285714*b[119] >= -39.4285714285714)
@constraint(m, e151, x[3]+25*b[88] <= 35.0)
@constraint(m, e152, x[3]+25*b[89] <= 35.0)
@constraint(m, e153, x[3]-15*b[90] <= 35.0)
@constraint(m, e154, x[3]-15*b[91] <= 35.0)
@constraint(m, e155, x[4]+x[8]+56*b[92] <= 96.0)
@constraint(m, e156, x[4]+x[8]+56*b[93] <= 96.0)
@constraint(m, e157, x[4]+x[8]+36*b[94] <= 96.0)
@constraint(m, e158, x[4]+x[8]+36*b[95] <= 96.0)
@constraint(m, e159, x[12]+10*b[96] <= 25.0)
@constraint(m, e160, x[12]+10*b[97] <= 25.0)
@constraint(m, e161, x[12] <= 25.0)
@constraint(m, e162, x[12] <= 25.0)
@constraint(m, e163, x[15]+10*b[100] <= 25.0)
@constraint(m, e164, x[15]+10*b[101] <= 25.0)
@constraint(m, e165, x[15]+5*b[102] <= 25.0)
@constraint(m, e166, x[15]+5*b[103] <= 25.0)
@constraint(m, e167, x[18]+15*b[104] <= 25.0)
@constraint(m, e168, x[18]+15*b[105] <= 25.0)
@constraint(m, e169, x[18]+5*b[106] <= 25.0)
@constraint(m, e170, x[18]+5*b[107] <= 25.0)
@constraint(m, e171, x[17]+x[24]+29*b[108] <= 49.0)
@constraint(m, e172, x[17]+x[24]+29*b[109] <= 49.0)
@constraint(m, e173, x[17]+x[24]-6*b[110] <= 49.0)
@constraint(m, e174, x[17]+x[24]-6*b[111] <= 49.0)
@constraint(m, e175, x[25]+x[32]+29*b[112] <= 54.0)
@constraint(m, e176, x[25]+x[32]+29*b[113] <= 54.0)
@constraint(m, e177, x[25]+x[32]+4*b[114] <= 54.0)
@constraint(m, e178, x[25]+x[32]+4*b[115] <= 54.0)
@constraint(m, e179, x[31]+15*b[116] <= 30.0)
@constraint(m, e180, x[31]+15*b[117] <= 30.0)
@constraint(m, e181, x[31]-5*b[118] <= 30.0)
@constraint(m, e182, x[31]-5*b[119] <= 30.0)
@constraint(m, e183, x[80]+46*b[120] <= 46.0)
@constraint(m, e184, x[80]+40*b[121] <= 46.0)
@constraint(m, e185, x[80]+6*b[122] <= 46.0)
@constraint(m, e186, x[80] <= 46.0)
@constraint(m, e187, x[81]+37*b[124] <= 37.0)
@constraint(m, e188, x[81]+30*b[125] <= 37.0)
@constraint(m, e189, x[81]+7*b[126] <= 37.0)
@constraint(m, e190, x[81] <= 37.0)
@constraint(m, e191, x[82]+22*b[128] <= 22.0)
@constraint(m, e192, x[82]+15*b[129] <= 22.0)
@constraint(m, e193, x[82]+7*b[130] <= 22.0)
@constraint(m, e194, x[82] <= 22.0)
@constraint(m, e195, x[83]+24*b[132] <= 24.0)
@constraint(m, e196, x[83]+13*b[133] <= 24.0)
@constraint(m, e197, x[83]+11*b[134] <= 24.0)
@constraint(m, e198, x[83] <= 24.0)
@constraint(m, e199, x[84]+23*b[136] <= 23.0)
@constraint(m, e200, x[84]+13*b[137] <= 23.0)
@constraint(m, e201, x[84]+10*b[138] <= 23.0)
@constraint(m, e202, x[84] <= 23.0)
@constraint(m, e203, x[85]+39*b[140] <= 39.0)
@constraint(m, e204, x[85]+30*b[141] <= 39.0)
@constraint(m, e205, x[85]+9*b[142] <= 39.0)
@constraint(m, e206, x[85] <= 39.0)
@constraint(m, e207, x[86]+28*b[144] <= 28.0)
@constraint(m, e208, x[86]+20*b[145] <= 28.0)
@constraint(m, e209, x[86]+8*b[146] <= 28.0)
@constraint(m, e210, x[86] <= 28.0)
@constraint(m, e211, x[87]+23*b[148] <= 23.0)
@constraint(m, e212, x[87]+15*b[149] <= 23.0)
@constraint(m, e213, x[87]+8*b[150] <= 23.0)
@constraint(m, e214, x[87] <= 23.0)
@constraint(m, e215, x[80] >= 0.0)
@constraint(m, e216, x[80]-6*b[121] >= 0.0)
@constraint(m, e217, x[80]-40*b[122] >= 0.0)
@constraint(m, e218, x[80]-46*b[123] >= 0.0)
@constraint(m, e219, x[81] >= 0.0)
@constraint(m, e220, x[81]-7*b[125] >= 0.0)
@constraint(m, e221, x[81]-30*b[126] >= 0.0)
@constraint(m, e222, x[81]-37*b[127] >= 0.0)
@constraint(m, e223, x[82] >= 0.0)
@constraint(m, e224, x[82]-7*b[129] >= 0.0)
@constraint(m, e225, x[82]-15*b[130] >= 0.0)
@constraint(m, e226, x[82]-22*b[131] >= 0.0)
@constraint(m, e227, x[83] >= 0.0)
@constraint(m, e228, x[83]-11*b[133] >= 0.0)
@constraint(m, e229, x[83]-13*b[134] >= 0.0)
@constraint(m, e230, x[83]-24*b[135] >= 0.0)
@constraint(m, e231, x[84] >= 0.0)
@constraint(m, e232, x[84]-10*b[137] >= 0.0)
@constraint(m, e233, x[84]-13*b[138] >= 0.0)
@constraint(m, e234, x[84]-23*b[139] >= 0.0)
@constraint(m, e235, x[85] >= 0.0)
@constraint(m, e236, x[85]-9*b[141] >= 0.0)
@constraint(m, e237, x[85]-30*b[142] >= 0.0)
@constraint(m, e238, x[85]-39*b[143] >= 0.0)
@constraint(m, e239, x[86] >= 0.0)
@constraint(m, e240, x[86]-8*b[145] >= 0.0)
@constraint(m, e241, x[86]-20*b[146] >= 0.0)
@constraint(m, e242, x[86]-28*b[147] >= 0.0)
@constraint(m, e243, x[87] >= 0.0)
@constraint(m, e244, x[87]-8*b[149] >= 0.0)
@constraint(m, e245, x[87]-15*b[150] >= 0.0)
@constraint(m, e246, x[87]-23*b[151] >= 0.0)
@constraint(m, e247, 10*x[2]+15*x[7]+18*x[11]+19*x[23]+16*x[30]+x[80]+x[81]+x[82]+x[83]+x[84]+x[85]+x[86]+x[87] <= 4000.0)
@constraint(m, e248, b[88]+b[89]+b[90]+b[91] == 1.0)
@constraint(m, e249, b[92]+b[93]+b[94]+b[95] == 1.0)
@constraint(m, e250, b[96]+b[97]+b[98]+b[99] == 1.0)
@constraint(m, e251, b[100]+b[101]+b[102]+b[103] == 1.0)
@constraint(m, e252, b[104]+b[105]+b[106]+b[107] == 1.0)
@constraint(m, e253, b[108]+b[109]+b[110]+b[111] == 1.0)
@constraint(m, e254, b[112]+b[113]+b[114]+b[115] == 1.0)
@constraint(m, e255, b[116]+b[117]+b[118]+b[119] == 1.0)
@constraint(m, e256, x[6]-x[33]-x[152] == 0.0)
@constraint(m, e257, x[10]-x[34]-x[163] == 0.0)
@constraint(m, e258, x[21]-x[35]-x[180] == 0.0)
@constraint(m, e259, x[22]-x[36]-x[181] == 0.0)
@constraint(m, e260, x[152]-x[153]-x[154] == 0.0)
@constraint(m, e261, -x[155]-x[156]+x[157] == 0.0)
@constraint(m, e262, x[157]-x[158]-x[159] == 0.0)
@constraint(m, e263, x[159]-x[160]-x[161]-x[162] == 0.0)
@constraint(m, e264, x[164]-x[167]-x[168] == 0.0)
@constraint(m, e265, x[166]-x[169]-x[170]-x[171] == 0.0)
@constraint(m, e266, x[174]-x[178]-x[179] == 0.0)
@constraint(m, e267, -x[175]-x[181]+x[182] == 0.0)
@constraint(m, e268, x[176]-x[183]-x[184] == 0.0)
@constraint(m, e269, x[177]-x[185]-x[186]-x[187] == 0.0)
@constraint(m, e270, x[196]-x[197] == 0.0)
@constraint(m, e271, x[197]-x[198]-x[199] == 0.0)
@constraint(m, e272, -x[200]-x[201]+x[202] == 0.0)
@constraint(m, e273, x[202]-x[203]-x[204] == 0.0)
@constraint(m, e274, x[204]-x[205]-x[206]-x[207] == 0.0)
@constraint(m, e275, x[209]-x[212]-x[213] == 0.0)
@constraint(m, e276, x[211]-x[214]-x[215]-x[216] == 0.0)
@constraint(m, e277, x[219]-x[223]-x[224] == 0.0)
@constraint(m, e278, -x[220]-x[226]+x[227] == 0.0)
@constraint(m, e279, x[221]-x[228]-x[229] == 0.0)
@constraint(m, e280, x[222]-x[230]-x[231]-x[232] == 0.0)
@NLconstraint(m, e281, -log(1+x[153])+x[155]+b[242] <= 1.0)
@constraint(m, e282, x[153]-40*b[242] <= 0.0)
@constraint(m, e283, x[155]-3.71357206670431*b[242] <= 0.0)
@NLconstraint(m, e284, -1.2*log(1+x[154])+x[156]+b[243] <= 1.0)
@constraint(m, e285, x[154]-40*b[243] <= 0.0)
@constraint(m, e286, x[156]-4.45628648004517*b[243] <= 0.0)
@constraint(m, e287, -0.75*x[160]+x[164]+b[244] <= 1.0)
@constraint(m, e288, -0.75*x[160]+x[164]-b[244] >= -1.0)
@constraint(m, e289, x[160]-4.45628648004517*b[244] <= 0.0)
@constraint(m, e290, x[164]-3.34221486003388*b[244] <= 0.0)
@NLconstraint(m, e291, -1.5*log(1+x[161])+x[165]+b[245] <= 1.0)
@constraint(m, e292, x[161]-4.45628648004517*b[245] <= 0.0)
@constraint(m, e293, x[165]-2.54515263975353*b[245] <= 0.0)
@constraint(m, e294, -x[162]+x[166]+b[246] <= 1.0)
@constraint(m, e295, -x[162]+x[166]-b[246] >= -1.0)
@constraint(m, e296, -0.5*x[163]+x[166]+b[246] <= 1.0)
@constraint(m, e297, -0.5*x[163]+x[166]-b[246] >= -1.0)
@constraint(m, e298, x[162]-4.45628648004517*b[246] <= 0.0)
@constraint(m, e299, x[163]-30*b[246] <= 0.0)
@constraint(m, e300, x[166]-15*b[246] <= 0.0)
@NLconstraint(m, e301, -1.25*log(1+x[167])+x[172]+b[247] <= 1.0)
@constraint(m, e302, x[167]-3.34221486003388*b[247] <= 0.0)
@constraint(m, e303, x[172]-1.83548069293539*b[247] <= 0.0)
@NLconstraint(m, e304, -0.9*log(1+x[168])+x[173]+b[248] <= 1.0)
@constraint(m, e305, x[168]-3.34221486003388*b[248] <= 0.0)
@constraint(m, e306, x[173]-1.32154609891348*b[248] <= 0.0)
@NLconstraint(m, e307, -log(1+x[165])+x[174]+b[249] <= 1.0)
@constraint(m, e308, x[165]-2.54515263975353*b[249] <= 0.0)
@constraint(m, e309, x[174]-1.26558121681553*b[249] <= 0.0)
@constraint(m, e310, -0.9*x[169]+x[175]+b[250] <= 1.0)
@constraint(m, e311, -0.9*x[169]+x[175]-b[250] >= -1.0)
@constraint(m, e312, x[169]-15*b[250] <= 0.0)
@constraint(m, e313, x[175]-13.5*b[250] <= 0.0)
@constraint(m, e314, -0.6*x[170]+x[176]+b[251] <= 1.0)
@constraint(m, e315, -0.6*x[170]+x[176]-b[251] >= -1.0)
@constraint(m, e316, x[170]-15*b[251] <= 0.0)
@constraint(m, e317, x[176]-9*b[251] <= 0.0)
@NLconstraint(m, e318, -1.1*log(1+x[171])+x[177]+b[252] <= 1.0)
@constraint(m, e319, x[171]-15*b[252] <= 0.0)
@constraint(m, e320, x[177]-3.04984759446376*b[252] <= 0.0)
@constraint(m, e321, -0.9*x[172]+x[188]+b[253] <= 1.0)
@constraint(m, e322, -0.9*x[172]+x[188]-b[253] >= -1.0)
@constraint(m, e323, -x[180]+x[188]+b[253] <= 1.0)
@constraint(m, e324, -x[180]+x[188]-b[253] >= -1.0)
@constraint(m, e325, x[172]-1.83548069293539*b[253] <= 0.0)
@constraint(m, e326, x[180]-20*b[253] <= 0.0)
@constraint(m, e327, x[188]-20*b[253] <= 0.0)
@NLconstraint(m, e328, -log(1+x[173])+x[189]+b[254] <= 1.0)
@constraint(m, e329, x[173]-1.32154609891348*b[254] <= 0.0)
@constraint(m, e330, x[189]-0.842233385663186*b[254] <= 0.0)
@NLconstraint(m, e331, -0.7*log(1+x[178])+x[190]+b[255] <= 1.0)
@constraint(m, e332, x[178]-1.26558121681553*b[255] <= 0.0)
@constraint(m, e333, x[190]-0.572481933717686*b[255] <= 0.0)
@NLconstraint(m, e334, -0.65*log(1+x[179])+x[191]+b[256] <= 1.0)
@NLconstraint(m, e335, -0.65*log(1+x[182])+x[191]+b[256] <= 1.0)
@constraint(m, e336, x[179]-1.26558121681553*b[256] <= 0.0)
@constraint(m, e337, x[182]-33.5*b[256] <= 0.0)
@constraint(m, e338, x[191]-2.30162356062425*b[256] <= 0.0)
@constraint(m, e339, -x[183]+x[192]+b[257] <= 1.0)
@constraint(m, e340, -x[183]+x[192]-b[257] >= -1.0)
@constraint(m, e341, x[183]-9*b[257] <= 0.0)
@constraint(m, e342, x[192]-9*b[257] <= 0.0)
@constraint(m, e343, -x[184]+x[193]+b[258] <= 1.0)
@constraint(m, e344, -x[184]+x[193]-b[258] >= -1.0)
@constraint(m, e345, x[184]-9*b[258] <= 0.0)
@constraint(m, e346, x[193]-9*b[258] <= 0.0)
@NLconstraint(m, e347, -0.75*log(1+x[185])+x[194]+b[259] <= 1.0)
@constraint(m, e348, x[185]-3.04984759446376*b[259] <= 0.0)
@constraint(m, e349, x[194]-1.04900943706034*b[259] <= 0.0)
@NLconstraint(m, e350, -0.8*log(1+x[186])+x[195]+b[260] <= 1.0)
@constraint(m, e351, x[186]-3.04984759446376*b[260] <= 0.0)
@constraint(m, e352, x[195]-1.11894339953103*b[260] <= 0.0)
@NLconstraint(m, e353, -0.85*log(1+x[187])+x[196]+b[261] <= 1.0)
@constraint(m, e354, x[187]-3.04984759446376*b[261] <= 0.0)
@constraint(m, e355, x[196]-1.18887736200171*b[261] <= 0.0)
@NLconstraint(m, e356, -log(1+x[198])+x[200]+b[262] <= 1.0)
@constraint(m, e357, x[198]-1.18887736200171*b[262] <= 0.0)
@constraint(m, e358, x[200]-0.78338879230327*b[262] <= 0.0)
@NLconstraint(m, e359, -1.2*log(1+x[199])+x[201]+b[263] <= 1.0)
@constraint(m, e360, x[199]-1.18887736200171*b[263] <= 0.0)
@constraint(m, e361, x[201]-0.940066550763924*b[263] <= 0.0)
@constraint(m, e362, -0.75*x[205]+x[209]+b[264] <= 1.0)
@constraint(m, e363, -0.75*x[205]+x[209]-b[264] >= -1.0)
@constraint(m, e364, x[205]-0.940066550763924*b[264] <= 0.0)
@constraint(m, e365, x[209]-0.705049913072943*b[264] <= 0.0)
@NLconstraint(m, e366, -1.5*log(1+x[206])+x[210]+b[265] <= 1.0)
@constraint(m, e367, x[206]-0.940066550763924*b[265] <= 0.0)
@constraint(m, e368, x[210]-0.994083415506506*b[265] <= 0.0)
@constraint(m, e369, -x[207]+x[211]+b[266] <= 1.0)
@constraint(m, e370, -x[207]+x[211]-b[266] >= -1.0)
@constraint(m, e371, -0.5*x[208]+x[211]+b[266] <= 1.0)
@constraint(m, e372, -0.5*x[208]+x[211]-b[266] >= -1.0)
@constraint(m, e373, x[207]-0.940066550763924*b[266] <= 0.0)
@constraint(m, e374, x[208]-30*b[266] <= 0.0)
@constraint(m, e375, x[211]-15*b[266] <= 0.0)
@NLconstraint(m, e376, -1.25*log(1+x[212])+x[217]+b[267] <= 1.0)
@constraint(m, e377, x[212]-0.705049913072943*b[267] <= 0.0)
@constraint(m, e378, x[217]-0.666992981045719*b[267] <= 0.0)
@NLconstraint(m, e379, -0.9*log(1+x[213])+x[218]+b[268] <= 1.0)
@constraint(m, e380, x[213]-0.705049913072943*b[268] <= 0.0)
@constraint(m, e381, x[218]-0.480234946352917*b[268] <= 0.0)
@NLconstraint(m, e382, -log(1+x[210])+x[219]+b[269] <= 1.0)
@constraint(m, e383, x[210]-0.994083415506506*b[269] <= 0.0)
@constraint(m, e384, x[219]-0.690184503917672*b[269] <= 0.0)
@constraint(m, e385, -0.9*x[214]+x[220]+b[270] <= 1.0)
@constraint(m, e386, -0.9*x[214]+x[220]-b[270] >= -1.0)
@constraint(m, e387, x[214]-15*b[270] <= 0.0)
@constraint(m, e388, x[220]-13.5*b[270] <= 0.0)
@constraint(m, e389, -0.6*x[215]+x[221]+b[271] <= 1.0)
@constraint(m, e390, -0.6*x[215]+x[221]-b[271] >= -1.0)
@constraint(m, e391, x[215]-15*b[271] <= 0.0)
@constraint(m, e392, x[221]-9*b[271] <= 0.0)
@NLconstraint(m, e393, -1.1*log(1+x[216])+x[222]+b[272] <= 1.0)
@constraint(m, e394, x[216]-15*b[272] <= 0.0)
@constraint(m, e395, x[222]-3.04984759446376*b[272] <= 0.0)
@constraint(m, e396, -0.9*x[217]+x[233]+b[273] <= 1.0)
@constraint(m, e397, -0.9*x[217]+x[233]-b[273] >= -1.0)
@constraint(m, e398, -x[225]+x[233]+b[273] <= 1.0)
@constraint(m, e399, -x[225]+x[233]-b[273] >= -1.0)
@constraint(m, e400, x[217]-0.666992981045719*b[273] <= 0.0)
@constraint(m, e401, x[225]-25*b[273] <= 0.0)
@constraint(m, e402, x[233]-25*b[273] <= 0.0)
@NLconstraint(m, e403, -log(1+x[218])+x[234]+b[274] <= 1.0)
@constraint(m, e404, x[218]-0.480234946352917*b[274] <= 0.0)
@constraint(m, e405, x[234]-0.392200822712722*b[274] <= 0.0)
@NLconstraint(m, e406, -0.7*log(1+x[223])+x[235]+b[275] <= 1.0)
@constraint(m, e407, x[223]-0.690184503917672*b[275] <= 0.0)
@constraint(m, e408, x[235]-0.367386387824208*b[275] <= 0.0)
@NLconstraint(m, e409, -0.65*log(1+x[224])+x[236]+b[276] <= 1.0)
@NLconstraint(m, e410, -0.65*log(1+x[227])+x[236]+b[276] <= 1.0)
@constraint(m, e411, x[224]-0.690184503917672*b[276] <= 0.0)
@constraint(m, e412, x[227]-38.5*b[276] <= 0.0)
@constraint(m, e413, x[236]-2.3895954367396*b[276] <= 0.0)
@constraint(m, e414, -x[228]+x[237]+b[277] <= 1.0)
@constraint(m, e415, -x[228]+x[237]-b[277] >= -1.0)
@constraint(m, e416, x[228]-9*b[277] <= 0.0)
@constraint(m, e417, x[237]-9*b[277] <= 0.0)
@constraint(m, e418, -x[229]+x[238]+b[278] <= 1.0)
@constraint(m, e419, -x[229]+x[238]-b[278] >= -1.0)
@constraint(m, e420, x[229]-9*b[278] <= 0.0)
@constraint(m, e421, x[238]-9*b[278] <= 0.0)
@NLconstraint(m, e422, -0.75*log(1+x[230])+x[239]+b[279] <= 1.0)
@constraint(m, e423, x[230]-3.04984759446376*b[279] <= 0.0)
@constraint(m, e424, x[239]-1.04900943706034*b[279] <= 0.0)
@NLconstraint(m, e425, -0.8*log(1+x[231])+x[240]+b[280] <= 1.0)
@constraint(m, e426, x[231]-3.04984759446376*b[280] <= 0.0)
@constraint(m, e427, x[240]-1.11894339953103*b[280] <= 0.0)
@NLconstraint(m, e428, -0.85*log(1+x[232])+x[241]+b[281] <= 1.0)
@constraint(m, e429, x[232]-3.04984759446376*b[281] <= 0.0)
@constraint(m, e430, x[241]-1.18887736200171*b[281] <= 0.0)
@constraint(m, e431, b[242]+b[243] == 1.0)
@constraint(m, e432, -b[244]+b[247]+b[248] >= 0.0)
@constraint(m, e433, -b[247]+b[253] >= 0.0)
@constraint(m, e434, -b[248]+b[254] >= 0.0)
@constraint(m, e435, -b[245]+b[249] >= 0.0)
@constraint(m, e436, -b[249]+b[255]+b[256] >= 0.0)
@constraint(m, e437, -b[246]+b[250]+b[251]+b[252] >= 0.0)
@constraint(m, e438, -b[250]+b[256] >= 0.0)
@constraint(m, e439, -b[251]+b[257]+b[258] >= 0.0)
@constraint(m, e440, -b[252]+b[259]+b[260]+b[261] >= 0.0)
@constraint(m, e441, b[244]-b[247] >= 0.0)
@constraint(m, e442, b[244]-b[248] >= 0.0)
@constraint(m, e443, b[245]-b[249] >= 0.0)
@constraint(m, e444, b[246]-b[250] >= 0.0)
@constraint(m, e445, b[246]-b[251] >= 0.0)
@constraint(m, e446, b[246]-b[252] >= 0.0)
@constraint(m, e447, b[247]-b[253] >= 0.0)
@constraint(m, e448, b[248]-b[254] >= 0.0)
@constraint(m, e449, b[249]-b[255] >= 0.0)
@constraint(m, e450, b[249]-b[256] >= 0.0)
@constraint(m, e451, b[251]-b[257] >= 0.0)
@constraint(m, e452, b[251]-b[258] >= 0.0)
@constraint(m, e453, b[252]-b[259] >= 0.0)
@constraint(m, e454, b[252]-b[260] >= 0.0)
@constraint(m, e455, b[252]-b[261] >= 0.0)
@constraint(m, e456, -b[261]+b[262]+b[263] >= 0.0)
@constraint(m, e457, -b[264]+b[267]+b[268] >= 0.0)
@constraint(m, e458, -b[267]+b[273] >= 0.0)
@constraint(m, e459, -b[268]+b[274] >= 0.0)
@constraint(m, e460, -b[265]+b[269] >= 0.0)
@constraint(m, e461, -b[269]+b[275]+b[276] >= 0.0)
@constraint(m, e462, -b[266]+b[270]+b[271]+b[272] >= 0.0)
@constraint(m, e463, -b[270]+b[276] >= 0.0)
@constraint(m, e464, -b[271]+b[277]+b[278] >= 0.0)
@constraint(m, e465, -b[272]+b[279]+b[280]+b[281] >= 0.0)
@constraint(m, e466, b[264]-b[267] >= 0.0)
@constraint(m, e467, b[264]-b[268] >= 0.0)
@constraint(m, e468, b[267]-b[273] >= 0.0)
@constraint(m, e469, b[268]-b[274] >= 0.0)
@constraint(m, e470, b[265]-b[269] >= 0.0)
@constraint(m, e471, b[269]-b[275] >= 0.0)
@constraint(m, e472, b[269]-b[276] >= 0.0)
@constraint(m, e473, b[266]-b[270] >= 0.0)
@constraint(m, e474, b[266]-b[271] >= 0.0)
@constraint(m, e475, b[266]-b[272] >= 0.0)
@constraint(m, e476, b[271]-b[277] >= 0.0)
@constraint(m, e477, b[271]-b[278] >= 0.0)
@constraint(m, e478, b[272]-b[279] >= 0.0)
@constraint(m, e479, b[272]-b[280] >= 0.0)
@constraint(m, e480, b[272]-b[281] >= 0.0)
@constraint(m, e481, b[242]+b[243]-b[244] >= 0.0)
@constraint(m, e482, b[242]+b[243]-b[245] >= 0.0)
@constraint(m, e483, b[242]+b[243]-b[246] >= 0.0)
@constraint(m, e484, b[261]-b[262] >= 0.0)
@constraint(m, e485, b[261]-b[263] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, x[1])

 
