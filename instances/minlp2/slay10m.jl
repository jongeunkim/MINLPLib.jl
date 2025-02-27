using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290]
@variable(m, x[x_Idx])
b_Idx = Any[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[287], 0.0)
set_lower_bound(x[241], 0.0)
set_lower_bound(x[251], 0.0)
set_lower_bound(x[265], 0.0)
set_lower_bound(x[243], 0.0)
set_lower_bound(x[202], 0.0)
set_lower_bound(x[220], 0.0)
set_lower_bound(x[250], 0.0)
set_lower_bound(x[248], 0.0)
set_lower_bound(x[289], 0.0)
set_lower_bound(x[273], 0.0)
set_lower_bound(x[260], 0.0)
set_lower_bound(x[226], 0.0)
set_lower_bound(x[238], 0.0)
set_lower_bound(x[206], 0.0)
set_lower_bound(x[277], 0.0)
set_lower_bound(x[278], 0.0)
set_lower_bound(x[244], 0.0)
set_lower_bound(x[215], 0.0)
set_lower_bound(x[253], 0.0)
set_lower_bound(x[225], 0.0)
set_lower_bound(x[218], 0.0)
set_lower_bound(x[264], 0.0)
set_lower_bound(x[231], 0.0)
set_lower_bound(x[259], 0.0)
set_lower_bound(x[261], 0.0)
set_lower_bound(x[232], 0.0)
set_lower_bound(x[285], 0.0)
set_lower_bound(x[290], 0.0)
set_lower_bound(x[234], 0.0)
set_lower_bound(x[219], 0.0)
set_lower_bound(x[224], 0.0)
set_lower_bound(x[209], 0.0)
set_lower_bound(x[258], 0.0)
set_lower_bound(x[282], 0.0)
set_lower_bound(x[281], 0.0)
set_lower_bound(x[288], 0.0)
set_lower_bound(x[263], 0.0)
set_lower_bound(x[213], 0.0)
set_lower_bound(x[252], 0.0)
set_lower_bound(x[240], 0.0)
set_lower_bound(x[284], 0.0)
set_lower_bound(x[227], 0.0)
set_lower_bound(x[279], 0.0)
set_lower_bound(x[280], 0.0)
set_lower_bound(x[230], 0.0)
set_lower_bound(x[216], 0.0)
set_lower_bound(x[205], 0.0)
set_lower_bound(x[207], 0.0)
set_lower_bound(x[257], 0.0)
set_lower_bound(x[201], 0.0)
set_lower_bound(x[223], 0.0)
set_lower_bound(x[272], 0.0)
set_lower_bound(x[208], 0.0)
set_lower_bound(x[270], 0.0)
set_lower_bound(x[274], 0.0)
set_lower_bound(x[210], 0.0)
set_lower_bound(x[267], 0.0)
set_lower_bound(x[249], 0.0)
set_lower_bound(x[268], 0.0)
set_lower_bound(x[276], 0.0)
set_lower_bound(x[275], 0.0)
set_lower_bound(x[233], 0.0)
set_lower_bound(x[236], 0.0)
set_lower_bound(x[203], 0.0)
set_lower_bound(x[254], 0.0)
set_lower_bound(x[221], 0.0)
set_lower_bound(x[217], 0.0)
set_lower_bound(x[212], 0.0)
set_lower_bound(x[271], 0.0)
set_lower_bound(x[239], 0.0)
set_lower_bound(x[228], 0.0)
set_lower_bound(x[222], 0.0)
set_lower_bound(x[256], 0.0)
set_lower_bound(x[266], 0.0)
set_lower_bound(x[269], 0.0)
set_lower_bound(x[245], 0.0)
set_lower_bound(x[204], 0.0)
set_lower_bound(x[283], 0.0)
set_lower_bound(x[237], 0.0)
set_lower_bound(x[214], 0.0)
set_lower_bound(x[247], 0.0)
set_lower_bound(x[286], 0.0)
set_lower_bound(x[235], 0.0)
set_lower_bound(x[246], 0.0)
set_lower_bound(x[242], 0.0)
set_lower_bound(x[255], 0.0)
set_lower_bound(x[262], 0.0)
set_lower_bound(x[229], 0.0)
set_lower_bound(x[211], 0.0)
set_lower_bound(x[1], 2.5)
set_upper_bound(x[1], 37.5)
set_lower_bound(x[2], 3.5)
set_upper_bound(x[2], 36.5)
set_lower_bound(x[3], 1.5)
set_upper_bound(x[3], 38.5)
set_lower_bound(x[4], 1.0)
set_upper_bound(x[4], 39.0)
set_lower_bound(x[5], 2.0)
set_upper_bound(x[5], 38.0)
set_lower_bound(x[6], 2.5)
set_upper_bound(x[6], 37.5)
set_lower_bound(x[7], 4.0)
set_upper_bound(x[7], 36.0)
set_lower_bound(x[8], 2.0)
set_upper_bound(x[8], 38.0)
set_lower_bound(x[9], 1.0)
set_upper_bound(x[9], 39.0)
set_lower_bound(x[10], 3.0)
set_upper_bound(x[10], 37.0)
set_lower_bound(x[11], 3.0)
set_upper_bound(x[11], 37.0)
set_lower_bound(x[12], 2.5)
set_upper_bound(x[12], 37.5)
set_lower_bound(x[13], 1.5)
set_upper_bound(x[13], 38.5)
set_lower_bound(x[14], 1.5)
set_upper_bound(x[14], 38.5)
set_lower_bound(x[15], 2.0)
set_upper_bound(x[15], 38.0)
set_lower_bound(x[16], 1.0)
set_upper_bound(x[16], 39.0)
set_lower_bound(x[17], 3.0)
set_upper_bound(x[17], 37.0)
set_lower_bound(x[18], 3.0)
set_upper_bound(x[18], 37.0)
set_lower_bound(x[19], 2.5)
set_upper_bound(x[19], 37.5)
set_lower_bound(x[20], 1.5)
set_upper_bound(x[20], 38.5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(150*( ((-4)+x[1])^2+ ((-10)+x[11])^2)+390*( ((-10)+x[2])^2+ ((-15)+x[12])^2)+240*( ((-7)+x[3])^2+ ((-9)+x[13])^2)+70*( ((-3)+x[4])^2+ ((-3)+x[14])^2)+165*( ((-20)+x[5])^2+ ((-17)+x[15])^2)+100*( ((-18)+x[6])^2+ ((-8)+x[16])^2)+200*( ((-30)+x[7])^2+ ((-20)+x[17])^2)+400*( ((-24)+x[8])^2+ ((-10)+x[18])^2)+330*( ((-22)+x[9])^2+ ((-6)+x[19])^2)+220*( ((-11)+x[10])^2+ ((-12)+x[20])^2))-300*x[201]-240*x[202]-210*x[203]-140*x[204]-300*x[205]-250*x[206]-300*x[207]-210*x[208]-320*x[209]-100*x[210]-150*x[211]-220*x[212]-200*x[213]-300*x[214]-290*x[215]-400*x[216]-220*x[217]-120*x[218]-300*x[219]-150*x[220]-150*x[221]-100*x[222]-290*x[223]-110*x[224]-100*x[225]-120*x[226]-180*x[227]-220*x[228]-110*x[229]-100*x[230]-130*x[231]-190*x[232]-110*x[233]-160*x[234]-400*x[235]-220*x[236]-140*x[237]-120*x[238]-230*x[239]-260*x[240]-220*x[241]-310*x[242]-140*x[243]-150*x[244]-130*x[245]-300*x[246]-240*x[247]-210*x[248]-140*x[249]-300*x[250]-250*x[251]-300*x[252]-210*x[253]-320*x[254]-100*x[255]-150*x[256]-220*x[257]-200*x[258]-300*x[259]-290*x[260]-400*x[261]-220*x[262]-120*x[263]-300*x[264]-150*x[265]-150*x[266]-100*x[267]-290*x[268]-110*x[269]-100*x[270]-120*x[271]-180*x[272]-220*x[273]-110*x[274]-100*x[275]-130*x[276]-190*x[277]-110*x[278]-160*x[279]-400*x[280]-220*x[281]-140*x[282]-120*x[283]-230*x[284]-260*x[285]-220*x[286]-310*x[287]-140*x[288]-150*x[289]-130*x[290]+objvar == 0.0)
@constraint(m, e2, -x[1]+x[2]+x[201] >= 0.0)
@constraint(m, e3, -x[1]+x[3]+x[202] >= 0.0)
@constraint(m, e4, -x[1]+x[4]+x[203] >= 0.0)
@constraint(m, e5, -x[1]+x[5]+x[204] >= 0.0)
@constraint(m, e6, -x[1]+x[6]+x[205] >= 0.0)
@constraint(m, e7, -x[1]+x[7]+x[206] >= 0.0)
@constraint(m, e8, -x[1]+x[8]+x[207] >= 0.0)
@constraint(m, e9, -x[1]+x[9]+x[208] >= 0.0)
@constraint(m, e10, -x[1]+x[10]+x[209] >= 0.0)
@constraint(m, e11, -x[2]+x[3]+x[210] >= 0.0)
@constraint(m, e12, -x[2]+x[4]+x[211] >= 0.0)
@constraint(m, e13, -x[2]+x[5]+x[212] >= 0.0)
@constraint(m, e14, -x[2]+x[6]+x[213] >= 0.0)
@constraint(m, e15, -x[2]+x[7]+x[214] >= 0.0)
@constraint(m, e16, -x[2]+x[8]+x[215] >= 0.0)
@constraint(m, e17, -x[2]+x[9]+x[216] >= 0.0)
@constraint(m, e18, -x[2]+x[10]+x[217] >= 0.0)
@constraint(m, e19, -x[3]+x[4]+x[218] >= 0.0)
@constraint(m, e20, -x[3]+x[5]+x[219] >= 0.0)
@constraint(m, e21, -x[3]+x[6]+x[220] >= 0.0)
@constraint(m, e22, -x[3]+x[7]+x[221] >= 0.0)
@constraint(m, e23, -x[3]+x[8]+x[222] >= 0.0)
@constraint(m, e24, -x[3]+x[9]+x[223] >= 0.0)
@constraint(m, e25, -x[3]+x[10]+x[224] >= 0.0)
@constraint(m, e26, -x[4]+x[5]+x[225] >= 0.0)
@constraint(m, e27, -x[4]+x[6]+x[226] >= 0.0)
@constraint(m, e28, -x[4]+x[7]+x[227] >= 0.0)
@constraint(m, e29, -x[4]+x[8]+x[228] >= 0.0)
@constraint(m, e30, -x[4]+x[9]+x[229] >= 0.0)
@constraint(m, e31, -x[4]+x[10]+x[230] >= 0.0)
@constraint(m, e32, -x[5]+x[6]+x[231] >= 0.0)
@constraint(m, e33, -x[5]+x[7]+x[232] >= 0.0)
@constraint(m, e34, -x[5]+x[8]+x[233] >= 0.0)
@constraint(m, e35, -x[5]+x[9]+x[234] >= 0.0)
@constraint(m, e36, -x[5]+x[10]+x[235] >= 0.0)
@constraint(m, e37, -x[6]+x[7]+x[236] >= 0.0)
@constraint(m, e38, -x[6]+x[8]+x[237] >= 0.0)
@constraint(m, e39, -x[6]+x[9]+x[238] >= 0.0)
@constraint(m, e40, -x[6]+x[10]+x[239] >= 0.0)
@constraint(m, e41, -x[7]+x[8]+x[240] >= 0.0)
@constraint(m, e42, -x[7]+x[9]+x[241] >= 0.0)
@constraint(m, e43, -x[7]+x[10]+x[242] >= 0.0)
@constraint(m, e44, -x[8]+x[9]+x[243] >= 0.0)
@constraint(m, e45, -x[8]+x[10]+x[244] >= 0.0)
@constraint(m, e46, -x[9]+x[10]+x[245] >= 0.0)
@constraint(m, e47, x[1]-x[2]+x[201] >= 0.0)
@constraint(m, e48, x[1]-x[3]+x[202] >= 0.0)
@constraint(m, e49, x[1]-x[4]+x[203] >= 0.0)
@constraint(m, e50, x[1]-x[5]+x[204] >= 0.0)
@constraint(m, e51, x[1]-x[6]+x[205] >= 0.0)
@constraint(m, e52, x[1]-x[7]+x[206] >= 0.0)
@constraint(m, e53, x[1]-x[8]+x[207] >= 0.0)
@constraint(m, e54, x[1]-x[9]+x[208] >= 0.0)
@constraint(m, e55, x[1]-x[10]+x[209] >= 0.0)
@constraint(m, e56, x[2]-x[3]+x[210] >= 0.0)
@constraint(m, e57, x[2]-x[4]+x[211] >= 0.0)
@constraint(m, e58, x[2]-x[5]+x[212] >= 0.0)
@constraint(m, e59, x[2]-x[6]+x[213] >= 0.0)
@constraint(m, e60, x[2]-x[7]+x[214] >= 0.0)
@constraint(m, e61, x[2]-x[8]+x[215] >= 0.0)
@constraint(m, e62, x[2]-x[9]+x[216] >= 0.0)
@constraint(m, e63, x[2]-x[10]+x[217] >= 0.0)
@constraint(m, e64, x[3]-x[4]+x[218] >= 0.0)
@constraint(m, e65, x[3]-x[5]+x[219] >= 0.0)
@constraint(m, e66, x[3]-x[6]+x[220] >= 0.0)
@constraint(m, e67, x[3]-x[7]+x[221] >= 0.0)
@constraint(m, e68, x[3]-x[8]+x[222] >= 0.0)
@constraint(m, e69, x[3]-x[9]+x[223] >= 0.0)
@constraint(m, e70, x[3]-x[10]+x[224] >= 0.0)
@constraint(m, e71, x[4]-x[5]+x[225] >= 0.0)
@constraint(m, e72, x[4]-x[6]+x[226] >= 0.0)
@constraint(m, e73, x[4]-x[7]+x[227] >= 0.0)
@constraint(m, e74, x[4]-x[8]+x[228] >= 0.0)
@constraint(m, e75, x[4]-x[9]+x[229] >= 0.0)
@constraint(m, e76, x[4]-x[10]+x[230] >= 0.0)
@constraint(m, e77, x[5]-x[6]+x[231] >= 0.0)
@constraint(m, e78, x[5]-x[7]+x[232] >= 0.0)
@constraint(m, e79, x[5]-x[8]+x[233] >= 0.0)
@constraint(m, e80, x[5]-x[9]+x[234] >= 0.0)
@constraint(m, e81, x[5]-x[10]+x[235] >= 0.0)
@constraint(m, e82, x[6]-x[7]+x[236] >= 0.0)
@constraint(m, e83, x[6]-x[8]+x[237] >= 0.0)
@constraint(m, e84, x[6]-x[9]+x[238] >= 0.0)
@constraint(m, e85, x[6]-x[10]+x[239] >= 0.0)
@constraint(m, e86, x[7]-x[8]+x[240] >= 0.0)
@constraint(m, e87, x[7]-x[9]+x[241] >= 0.0)
@constraint(m, e88, x[7]-x[10]+x[242] >= 0.0)
@constraint(m, e89, x[8]-x[9]+x[243] >= 0.0)
@constraint(m, e90, x[8]-x[10]+x[244] >= 0.0)
@constraint(m, e91, x[9]-x[10]+x[245] >= 0.0)
@constraint(m, e92, -x[11]+x[12]+x[246] >= 0.0)
@constraint(m, e93, -x[11]+x[13]+x[247] >= 0.0)
@constraint(m, e94, -x[11]+x[14]+x[248] >= 0.0)
@constraint(m, e95, -x[11]+x[15]+x[249] >= 0.0)
@constraint(m, e96, -x[11]+x[16]+x[250] >= 0.0)
@constraint(m, e97, -x[11]+x[17]+x[251] >= 0.0)
@constraint(m, e98, -x[11]+x[18]+x[252] >= 0.0)
@constraint(m, e99, -x[11]+x[19]+x[253] >= 0.0)
@constraint(m, e100, -x[11]+x[20]+x[254] >= 0.0)
@constraint(m, e101, -x[12]+x[13]+x[255] >= 0.0)
@constraint(m, e102, -x[12]+x[14]+x[256] >= 0.0)
@constraint(m, e103, -x[12]+x[15]+x[257] >= 0.0)
@constraint(m, e104, -x[12]+x[16]+x[258] >= 0.0)
@constraint(m, e105, -x[12]+x[17]+x[259] >= 0.0)
@constraint(m, e106, -x[12]+x[18]+x[260] >= 0.0)
@constraint(m, e107, -x[12]+x[19]+x[261] >= 0.0)
@constraint(m, e108, -x[12]+x[20]+x[262] >= 0.0)
@constraint(m, e109, -x[13]+x[14]+x[263] >= 0.0)
@constraint(m, e110, -x[13]+x[15]+x[264] >= 0.0)
@constraint(m, e111, -x[13]+x[16]+x[265] >= 0.0)
@constraint(m, e112, -x[13]+x[17]+x[266] >= 0.0)
@constraint(m, e113, -x[13]+x[18]+x[267] >= 0.0)
@constraint(m, e114, -x[13]+x[19]+x[268] >= 0.0)
@constraint(m, e115, -x[13]+x[20]+x[269] >= 0.0)
@constraint(m, e116, -x[14]+x[15]+x[270] >= 0.0)
@constraint(m, e117, -x[14]+x[16]+x[271] >= 0.0)
@constraint(m, e118, -x[14]+x[17]+x[272] >= 0.0)
@constraint(m, e119, -x[14]+x[18]+x[273] >= 0.0)
@constraint(m, e120, -x[14]+x[19]+x[274] >= 0.0)
@constraint(m, e121, -x[14]+x[20]+x[275] >= 0.0)
@constraint(m, e122, -x[15]+x[16]+x[276] >= 0.0)
@constraint(m, e123, -x[15]+x[17]+x[277] >= 0.0)
@constraint(m, e124, -x[15]+x[18]+x[278] >= 0.0)
@constraint(m, e125, -x[15]+x[19]+x[279] >= 0.0)
@constraint(m, e126, -x[15]+x[20]+x[280] >= 0.0)
@constraint(m, e127, -x[16]+x[17]+x[281] >= 0.0)
@constraint(m, e128, -x[16]+x[18]+x[282] >= 0.0)
@constraint(m, e129, -x[16]+x[19]+x[283] >= 0.0)
@constraint(m, e130, -x[16]+x[20]+x[284] >= 0.0)
@constraint(m, e131, -x[17]+x[18]+x[285] >= 0.0)
@constraint(m, e132, -x[17]+x[19]+x[286] >= 0.0)
@constraint(m, e133, -x[17]+x[20]+x[287] >= 0.0)
@constraint(m, e134, -x[18]+x[19]+x[288] >= 0.0)
@constraint(m, e135, -x[18]+x[20]+x[289] >= 0.0)
@constraint(m, e136, -x[19]+x[20]+x[290] >= 0.0)
@constraint(m, e137, x[11]-x[12]+x[246] >= 0.0)
@constraint(m, e138, x[11]-x[13]+x[247] >= 0.0)
@constraint(m, e139, x[11]-x[14]+x[248] >= 0.0)
@constraint(m, e140, x[11]-x[15]+x[249] >= 0.0)
@constraint(m, e141, x[11]-x[16]+x[250] >= 0.0)
@constraint(m, e142, x[11]-x[17]+x[251] >= 0.0)
@constraint(m, e143, x[11]-x[18]+x[252] >= 0.0)
@constraint(m, e144, x[11]-x[19]+x[253] >= 0.0)
@constraint(m, e145, x[11]-x[20]+x[254] >= 0.0)
@constraint(m, e146, x[12]-x[13]+x[255] >= 0.0)
@constraint(m, e147, x[12]-x[14]+x[256] >= 0.0)
@constraint(m, e148, x[12]-x[15]+x[257] >= 0.0)
@constraint(m, e149, x[12]-x[16]+x[258] >= 0.0)
@constraint(m, e150, x[12]-x[17]+x[259] >= 0.0)
@constraint(m, e151, x[12]-x[18]+x[260] >= 0.0)
@constraint(m, e152, x[12]-x[19]+x[261] >= 0.0)
@constraint(m, e153, x[12]-x[20]+x[262] >= 0.0)
@constraint(m, e154, x[13]-x[14]+x[263] >= 0.0)
@constraint(m, e155, x[13]-x[15]+x[264] >= 0.0)
@constraint(m, e156, x[13]-x[16]+x[265] >= 0.0)
@constraint(m, e157, x[13]-x[17]+x[266] >= 0.0)
@constraint(m, e158, x[13]-x[18]+x[267] >= 0.0)
@constraint(m, e159, x[13]-x[19]+x[268] >= 0.0)
@constraint(m, e160, x[13]-x[20]+x[269] >= 0.0)
@constraint(m, e161, x[14]-x[15]+x[270] >= 0.0)
@constraint(m, e162, x[14]-x[16]+x[271] >= 0.0)
@constraint(m, e163, x[14]-x[17]+x[272] >= 0.0)
@constraint(m, e164, x[14]-x[18]+x[273] >= 0.0)
@constraint(m, e165, x[14]-x[19]+x[274] >= 0.0)
@constraint(m, e166, x[14]-x[20]+x[275] >= 0.0)
@constraint(m, e167, x[15]-x[16]+x[276] >= 0.0)
@constraint(m, e168, x[15]-x[17]+x[277] >= 0.0)
@constraint(m, e169, x[15]-x[18]+x[278] >= 0.0)
@constraint(m, e170, x[15]-x[19]+x[279] >= 0.0)
@constraint(m, e171, x[15]-x[20]+x[280] >= 0.0)
@constraint(m, e172, x[16]-x[17]+x[281] >= 0.0)
@constraint(m, e173, x[16]-x[18]+x[282] >= 0.0)
@constraint(m, e174, x[16]-x[19]+x[283] >= 0.0)
@constraint(m, e175, x[16]-x[20]+x[284] >= 0.0)
@constraint(m, e176, x[17]-x[18]+x[285] >= 0.0)
@constraint(m, e177, x[17]-x[19]+x[286] >= 0.0)
@constraint(m, e178, x[17]-x[20]+x[287] >= 0.0)
@constraint(m, e179, x[18]-x[19]+x[288] >= 0.0)
@constraint(m, e180, x[18]-x[20]+x[289] >= 0.0)
@constraint(m, e181, x[19]-x[20]+x[290] >= 0.0)
@constraint(m, e182, x[1]-x[2]+40*b[21] <= 34.0)
@constraint(m, e183, x[1]-x[3]+40*b[22] <= 36.0)
@constraint(m, e184, x[1]-x[4]+40*b[23] <= 36.5)
@constraint(m, e185, x[1]-x[5]+40*b[24] <= 35.5)
@constraint(m, e186, x[1]-x[6]+40*b[25] <= 35.0)
@constraint(m, e187, x[1]-x[7]+40*b[26] <= 33.5)
@constraint(m, e188, x[1]-x[8]+40*b[27] <= 35.5)
@constraint(m, e189, x[1]-x[9]+40*b[28] <= 36.5)
@constraint(m, e190, x[1]-x[10]+40*b[29] <= 34.5)
@constraint(m, e191, x[2]-x[3]+40*b[30] <= 35.0)
@constraint(m, e192, x[2]-x[4]+40*b[31] <= 35.5)
@constraint(m, e193, x[2]-x[5]+40*b[32] <= 34.5)
@constraint(m, e194, x[2]-x[6]+40*b[33] <= 34.0)
@constraint(m, e195, x[2]-x[7]+40*b[34] <= 32.5)
@constraint(m, e196, x[2]-x[8]+40*b[35] <= 34.5)
@constraint(m, e197, x[2]-x[9]+40*b[36] <= 35.5)
@constraint(m, e198, x[2]-x[10]+40*b[37] <= 33.5)
@constraint(m, e199, x[3]-x[4]+40*b[38] <= 37.5)
@constraint(m, e200, x[3]-x[5]+40*b[39] <= 36.5)
@constraint(m, e201, x[3]-x[6]+40*b[40] <= 36.0)
@constraint(m, e202, x[3]-x[7]+40*b[41] <= 34.5)
@constraint(m, e203, x[3]-x[8]+40*b[42] <= 36.5)
@constraint(m, e204, x[3]-x[9]+40*b[43] <= 37.5)
@constraint(m, e205, x[3]-x[10]+40*b[44] <= 35.5)
@constraint(m, e206, x[4]-x[5]+40*b[45] <= 37.0)
@constraint(m, e207, x[4]-x[6]+40*b[46] <= 36.5)
@constraint(m, e208, x[4]-x[7]+40*b[47] <= 35.0)
@constraint(m, e209, x[4]-x[8]+40*b[48] <= 37.0)
@constraint(m, e210, x[4]-x[9]+40*b[49] <= 38.0)
@constraint(m, e211, x[4]-x[10]+40*b[50] <= 36.0)
@constraint(m, e212, x[5]-x[6]+40*b[51] <= 35.5)
@constraint(m, e213, x[5]-x[7]+40*b[52] <= 34.0)
@constraint(m, e214, x[5]-x[8]+40*b[53] <= 36.0)
@constraint(m, e215, x[5]-x[9]+40*b[54] <= 37.0)
@constraint(m, e216, x[5]-x[10]+40*b[55] <= 35.0)
@constraint(m, e217, x[6]-x[7]+40*b[56] <= 33.5)
@constraint(m, e218, x[6]-x[8]+40*b[57] <= 35.5)
@constraint(m, e219, x[6]-x[9]+40*b[58] <= 36.5)
@constraint(m, e220, x[6]-x[10]+40*b[59] <= 34.5)
@constraint(m, e221, x[7]-x[8]+40*b[60] <= 34.0)
@constraint(m, e222, x[7]-x[9]+40*b[61] <= 35.0)
@constraint(m, e223, x[7]-x[10]+40*b[62] <= 33.0)
@constraint(m, e224, x[8]-x[9]+40*b[63] <= 37.0)
@constraint(m, e225, x[8]-x[10]+40*b[64] <= 35.0)
@constraint(m, e226, x[9]-x[10]+40*b[65] <= 36.0)
@constraint(m, e227, -x[1]+x[2]+40*b[66] <= 34.0)
@constraint(m, e228, -x[1]+x[3]+40*b[67] <= 36.0)
@constraint(m, e229, -x[1]+x[4]+40*b[68] <= 36.5)
@constraint(m, e230, -x[1]+x[5]+40*b[69] <= 35.5)
@constraint(m, e231, -x[1]+x[6]+40*b[70] <= 35.0)
@constraint(m, e232, -x[1]+x[7]+40*b[71] <= 33.5)
@constraint(m, e233, -x[1]+x[8]+40*b[72] <= 35.5)
@constraint(m, e234, -x[1]+x[9]+40*b[73] <= 36.5)
@constraint(m, e235, -x[1]+x[10]+40*b[74] <= 34.5)
@constraint(m, e236, -x[2]+x[3]+40*b[75] <= 35.0)
@constraint(m, e237, -x[2]+x[4]+40*b[76] <= 35.5)
@constraint(m, e238, -x[2]+x[5]+40*b[77] <= 34.5)
@constraint(m, e239, -x[2]+x[6]+40*b[78] <= 34.0)
@constraint(m, e240, -x[2]+x[7]+40*b[79] <= 32.5)
@constraint(m, e241, -x[2]+x[8]+40*b[80] <= 34.5)
@constraint(m, e242, -x[2]+x[9]+40*b[81] <= 35.5)
@constraint(m, e243, -x[2]+x[10]+40*b[82] <= 33.5)
@constraint(m, e244, -x[3]+x[4]+40*b[83] <= 37.5)
@constraint(m, e245, -x[3]+x[5]+40*b[84] <= 36.5)
@constraint(m, e246, -x[3]+x[6]+40*b[85] <= 36.0)
@constraint(m, e247, -x[3]+x[7]+40*b[86] <= 34.5)
@constraint(m, e248, -x[3]+x[8]+40*b[87] <= 36.5)
@constraint(m, e249, -x[3]+x[9]+40*b[88] <= 37.5)
@constraint(m, e250, -x[3]+x[10]+40*b[89] <= 35.5)
@constraint(m, e251, -x[4]+x[5]+40*b[90] <= 37.0)
@constraint(m, e252, -x[4]+x[6]+40*b[91] <= 36.5)
@constraint(m, e253, -x[4]+x[7]+40*b[92] <= 35.0)
@constraint(m, e254, -x[4]+x[8]+40*b[93] <= 37.0)
@constraint(m, e255, -x[4]+x[9]+40*b[94] <= 38.0)
@constraint(m, e256, -x[4]+x[10]+40*b[95] <= 36.0)
@constraint(m, e257, -x[5]+x[6]+40*b[96] <= 35.5)
@constraint(m, e258, -x[5]+x[7]+40*b[97] <= 34.0)
@constraint(m, e259, -x[5]+x[8]+40*b[98] <= 36.0)
@constraint(m, e260, -x[5]+x[9]+40*b[99] <= 37.0)
@constraint(m, e261, -x[5]+x[10]+40*b[100] <= 35.0)
@constraint(m, e262, -x[6]+x[7]+40*b[101] <= 33.5)
@constraint(m, e263, -x[6]+x[8]+40*b[102] <= 35.5)
@constraint(m, e264, -x[6]+x[9]+40*b[103] <= 36.5)
@constraint(m, e265, -x[6]+x[10]+40*b[104] <= 34.5)
@constraint(m, e266, -x[7]+x[8]+40*b[105] <= 34.0)
@constraint(m, e267, -x[7]+x[9]+40*b[106] <= 35.0)
@constraint(m, e268, -x[7]+x[10]+40*b[107] <= 33.0)
@constraint(m, e269, -x[8]+x[9]+40*b[108] <= 37.0)
@constraint(m, e270, -x[8]+x[10]+40*b[109] <= 35.0)
@constraint(m, e271, -x[9]+x[10]+40*b[110] <= 36.0)
@constraint(m, e272, x[11]-x[12]+40*b[111] <= 34.5)
@constraint(m, e273, x[11]-x[13]+40*b[112] <= 35.5)
@constraint(m, e274, x[11]-x[14]+40*b[113] <= 35.5)
@constraint(m, e275, x[11]-x[15]+40*b[114] <= 35.0)
@constraint(m, e276, x[11]-x[16]+40*b[115] <= 36.0)
@constraint(m, e277, x[11]-x[17]+40*b[116] <= 34.0)
@constraint(m, e278, x[11]-x[18]+40*b[117] <= 34.0)
@constraint(m, e279, x[11]-x[19]+40*b[118] <= 34.5)
@constraint(m, e280, x[11]-x[20]+40*b[119] <= 35.5)
@constraint(m, e281, x[12]-x[13]+40*b[120] <= 36.0)
@constraint(m, e282, x[12]-x[14]+40*b[121] <= 36.0)
@constraint(m, e283, x[12]-x[15]+40*b[122] <= 35.5)
@constraint(m, e284, x[12]-x[16]+40*b[123] <= 36.5)
@constraint(m, e285, x[12]-x[17]+40*b[124] <= 34.5)
@constraint(m, e286, x[12]-x[18]+40*b[125] <= 34.5)
@constraint(m, e287, x[12]-x[19]+40*b[126] <= 35.0)
@constraint(m, e288, x[12]-x[20]+40*b[127] <= 36.0)
@constraint(m, e289, x[13]-x[14]+40*b[128] <= 37.0)
@constraint(m, e290, x[13]-x[15]+40*b[129] <= 36.5)
@constraint(m, e291, x[13]-x[16]+40*b[130] <= 37.5)
@constraint(m, e292, x[13]-x[17]+40*b[131] <= 35.5)
@constraint(m, e293, x[13]-x[18]+40*b[132] <= 35.5)
@constraint(m, e294, x[13]-x[19]+40*b[133] <= 36.0)
@constraint(m, e295, x[13]-x[20]+40*b[134] <= 37.0)
@constraint(m, e296, x[14]-x[15]+40*b[135] <= 36.5)
@constraint(m, e297, x[14]-x[16]+40*b[136] <= 37.5)
@constraint(m, e298, x[14]-x[17]+40*b[137] <= 35.5)
@constraint(m, e299, x[14]-x[18]+40*b[138] <= 35.5)
@constraint(m, e300, x[14]-x[19]+40*b[139] <= 36.0)
@constraint(m, e301, x[14]-x[20]+40*b[140] <= 37.0)
@constraint(m, e302, x[15]-x[16]+40*b[141] <= 37.0)
@constraint(m, e303, x[15]-x[17]+40*b[142] <= 35.0)
@constraint(m, e304, x[15]-x[18]+40*b[143] <= 35.0)
@constraint(m, e305, x[15]-x[19]+40*b[144] <= 35.5)
@constraint(m, e306, x[15]-x[20]+40*b[145] <= 36.5)
@constraint(m, e307, x[16]-x[17]+40*b[146] <= 36.0)
@constraint(m, e308, x[16]-x[18]+40*b[147] <= 36.0)
@constraint(m, e309, x[16]-x[19]+40*b[148] <= 36.5)
@constraint(m, e310, x[16]-x[20]+40*b[149] <= 37.5)
@constraint(m, e311, x[17]-x[18]+40*b[150] <= 34.0)
@constraint(m, e312, x[17]-x[19]+40*b[151] <= 34.5)
@constraint(m, e313, x[17]-x[20]+40*b[152] <= 35.5)
@constraint(m, e314, x[18]-x[19]+40*b[153] <= 34.5)
@constraint(m, e315, x[18]-x[20]+40*b[154] <= 35.5)
@constraint(m, e316, x[19]-x[20]+40*b[155] <= 36.0)
@constraint(m, e317, -x[11]+x[12]+40*b[156] <= 34.5)
@constraint(m, e318, -x[11]+x[13]+40*b[157] <= 35.5)
@constraint(m, e319, -x[11]+x[14]+40*b[158] <= 35.5)
@constraint(m, e320, -x[11]+x[15]+40*b[159] <= 35.0)
@constraint(m, e321, -x[11]+x[16]+40*b[160] <= 36.0)
@constraint(m, e322, -x[11]+x[17]+40*b[161] <= 34.0)
@constraint(m, e323, -x[11]+x[18]+40*b[162] <= 34.0)
@constraint(m, e324, -x[11]+x[19]+40*b[163] <= 34.5)
@constraint(m, e325, -x[11]+x[20]+40*b[164] <= 35.5)
@constraint(m, e326, -x[12]+x[13]+40*b[165] <= 36.0)
@constraint(m, e327, -x[12]+x[14]+40*b[166] <= 36.0)
@constraint(m, e328, -x[12]+x[15]+40*b[167] <= 35.5)
@constraint(m, e329, -x[12]+x[16]+40*b[168] <= 36.5)
@constraint(m, e330, -x[12]+x[17]+40*b[169] <= 34.5)
@constraint(m, e331, -x[12]+x[18]+40*b[170] <= 34.5)
@constraint(m, e332, -x[12]+x[19]+40*b[171] <= 35.0)
@constraint(m, e333, -x[12]+x[20]+40*b[172] <= 36.0)
@constraint(m, e334, -x[13]+x[14]+40*b[173] <= 37.0)
@constraint(m, e335, -x[13]+x[15]+40*b[174] <= 36.5)
@constraint(m, e336, -x[13]+x[16]+40*b[175] <= 37.5)
@constraint(m, e337, -x[13]+x[17]+40*b[176] <= 35.5)
@constraint(m, e338, -x[13]+x[18]+40*b[177] <= 35.5)
@constraint(m, e339, -x[13]+x[19]+40*b[178] <= 36.0)
@constraint(m, e340, -x[13]+x[20]+40*b[179] <= 37.0)
@constraint(m, e341, -x[14]+x[15]+40*b[180] <= 36.5)
@constraint(m, e342, -x[14]+x[16]+40*b[181] <= 37.5)
@constraint(m, e343, -x[14]+x[17]+40*b[182] <= 35.5)
@constraint(m, e344, -x[14]+x[18]+40*b[183] <= 35.5)
@constraint(m, e345, -x[14]+x[19]+40*b[184] <= 36.0)
@constraint(m, e346, -x[14]+x[20]+40*b[185] <= 37.0)
@constraint(m, e347, -x[15]+x[16]+40*b[186] <= 37.0)
@constraint(m, e348, -x[15]+x[17]+40*b[187] <= 35.0)
@constraint(m, e349, -x[15]+x[18]+40*b[188] <= 35.0)
@constraint(m, e350, -x[15]+x[19]+40*b[189] <= 35.5)
@constraint(m, e351, -x[15]+x[20]+40*b[190] <= 36.5)
@constraint(m, e352, -x[16]+x[17]+40*b[191] <= 36.0)
@constraint(m, e353, -x[16]+x[18]+40*b[192] <= 36.0)
@constraint(m, e354, -x[16]+x[19]+40*b[193] <= 36.5)
@constraint(m, e355, -x[16]+x[20]+40*b[194] <= 37.5)
@constraint(m, e356, -x[17]+x[18]+40*b[195] <= 34.0)
@constraint(m, e357, -x[17]+x[19]+40*b[196] <= 34.5)
@constraint(m, e358, -x[17]+x[20]+40*b[197] <= 35.5)
@constraint(m, e359, -x[18]+x[19]+40*b[198] <= 34.5)
@constraint(m, e360, -x[18]+x[20]+40*b[199] <= 35.5)
@constraint(m, e361, -x[19]+x[20]+40*b[200] <= 36.0)
@constraint(m, e362, b[21]+b[66]+b[111]+b[156] == 1.0)
@constraint(m, e363, b[22]+b[67]+b[112]+b[157] == 1.0)
@constraint(m, e364, b[23]+b[68]+b[113]+b[158] == 1.0)
@constraint(m, e365, b[24]+b[69]+b[114]+b[159] == 1.0)
@constraint(m, e366, b[25]+b[70]+b[115]+b[160] == 1.0)
@constraint(m, e367, b[26]+b[71]+b[116]+b[161] == 1.0)
@constraint(m, e368, b[27]+b[72]+b[117]+b[162] == 1.0)
@constraint(m, e369, b[28]+b[73]+b[118]+b[163] == 1.0)
@constraint(m, e370, b[29]+b[74]+b[119]+b[164] == 1.0)
@constraint(m, e371, b[30]+b[75]+b[120]+b[165] == 1.0)
@constraint(m, e372, b[31]+b[76]+b[121]+b[166] == 1.0)
@constraint(m, e373, b[32]+b[77]+b[122]+b[167] == 1.0)
@constraint(m, e374, b[33]+b[78]+b[123]+b[168] == 1.0)
@constraint(m, e375, b[34]+b[79]+b[124]+b[169] == 1.0)
@constraint(m, e376, b[35]+b[80]+b[125]+b[170] == 1.0)
@constraint(m, e377, b[36]+b[81]+b[126]+b[171] == 1.0)
@constraint(m, e378, b[37]+b[82]+b[127]+b[172] == 1.0)
@constraint(m, e379, b[38]+b[83]+b[128]+b[173] == 1.0)
@constraint(m, e380, b[39]+b[84]+b[129]+b[174] == 1.0)
@constraint(m, e381, b[40]+b[85]+b[130]+b[175] == 1.0)
@constraint(m, e382, b[41]+b[86]+b[131]+b[176] == 1.0)
@constraint(m, e383, b[42]+b[87]+b[132]+b[177] == 1.0)
@constraint(m, e384, b[43]+b[88]+b[133]+b[178] == 1.0)
@constraint(m, e385, b[44]+b[89]+b[134]+b[179] == 1.0)
@constraint(m, e386, b[45]+b[90]+b[135]+b[180] == 1.0)
@constraint(m, e387, b[46]+b[91]+b[136]+b[181] == 1.0)
@constraint(m, e388, b[47]+b[92]+b[137]+b[182] == 1.0)
@constraint(m, e389, b[48]+b[93]+b[138]+b[183] == 1.0)
@constraint(m, e390, b[49]+b[94]+b[139]+b[184] == 1.0)
@constraint(m, e391, b[50]+b[95]+b[140]+b[185] == 1.0)
@constraint(m, e392, b[51]+b[96]+b[141]+b[186] == 1.0)
@constraint(m, e393, b[52]+b[97]+b[142]+b[187] == 1.0)
@constraint(m, e394, b[53]+b[98]+b[143]+b[188] == 1.0)
@constraint(m, e395, b[54]+b[99]+b[144]+b[189] == 1.0)
@constraint(m, e396, b[55]+b[100]+b[145]+b[190] == 1.0)
@constraint(m, e397, b[56]+b[101]+b[146]+b[191] == 1.0)
@constraint(m, e398, b[57]+b[102]+b[147]+b[192] == 1.0)
@constraint(m, e399, b[58]+b[103]+b[148]+b[193] == 1.0)
@constraint(m, e400, b[59]+b[104]+b[149]+b[194] == 1.0)
@constraint(m, e401, b[60]+b[105]+b[150]+b[195] == 1.0)
@constraint(m, e402, b[61]+b[106]+b[151]+b[196] == 1.0)
@constraint(m, e403, b[62]+b[107]+b[152]+b[197] == 1.0)
@constraint(m, e404, b[63]+b[108]+b[153]+b[198] == 1.0)
@constraint(m, e405, b[64]+b[109]+b[154]+b[199] == 1.0)
@constraint(m, e406, b[65]+b[110]+b[155]+b[200] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
