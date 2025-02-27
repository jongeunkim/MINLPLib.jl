using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160]
@variable(m, x[x_Idx])
b_Idx = Any[162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[146], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[153], 0.0)
set_lower_bound(x[132], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[143], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[151], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[147], 0.0)
set_lower_bound(x[138], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[130], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[155], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[131], 0.0)
set_lower_bound(x[137], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[142], 0.0)
set_lower_bound(x[144], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[145], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[160], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[152], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[158], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[149], 0.0)
set_lower_bound(x[148], 0.0)
set_lower_bound(x[150], 0.0)
set_lower_bound(x[157], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[159], 0.0)
set_lower_bound(x[135], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[133], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[2], 0.9)
set_upper_bound(x[2], 1.05)
set_lower_bound(x[4], 0.9)
set_upper_bound(x[4], 1.05)
set_lower_bound(x[6], 0.9)
set_upper_bound(x[6], 1.05)
set_lower_bound(x[7], 0.9)
set_upper_bound(x[7], 1.05)
set_lower_bound(x[9], 0.9)
set_upper_bound(x[9], 1.05)
set_lower_bound(x[10], 0.9)
set_upper_bound(x[10], 1.05)
set_lower_bound(x[11], 0.9)
set_upper_bound(x[11], 1.05)
set_lower_bound(x[12], 0.9)
set_upper_bound(x[12], 1.05)
set_lower_bound(x[13], 0.9)
set_upper_bound(x[13], 1.05)
set_lower_bound(x[14], 0.9)
set_upper_bound(x[14], 1.05)
set_lower_bound(x[15], 0.9)
set_upper_bound(x[15], 1.05)
set_lower_bound(x[17], 1.06)
set_upper_bound(x[17], 1.06)
set_lower_bound(x[49], 0.0)
set_upper_bound(x[49], 0.0)
set_upper_bound(x[65], 4.0)
set_lower_bound(x[66], 0.0)
set_upper_bound(x[66], 0.0)
set_upper_bound(x[67], 0.8)
set_lower_bound(x[68], 0.0)
set_upper_bound(x[68], 0.0)
set_upper_bound(x[69], 1.2)
set_lower_bound(x[70], 0.0)
set_upper_bound(x[70], 0.0)
set_lower_bound(x[71], 0.0)
set_upper_bound(x[71], 0.0)
set_upper_bound(x[72], 0.24)
set_lower_bound(x[73], 0.0)
set_upper_bound(x[73], 0.0)
set_lower_bound(x[74], 0.0)
set_upper_bound(x[74], 0.0)
set_lower_bound(x[75], 0.0)
set_upper_bound(x[75], 0.0)
set_lower_bound(x[76], 0.0)
set_upper_bound(x[76], 0.0)
set_lower_bound(x[77], 0.0)
set_upper_bound(x[77], 0.0)
set_lower_bound(x[78], 0.0)
set_upper_bound(x[78], 0.0)
set_lower_bound(x[79], 0.0)
set_upper_bound(x[79], 0.0)
set_upper_bound(x[80], 0.5)
set_lower_bound(x[81], -0.2)
set_upper_bound(x[81], 0.6)
set_lower_bound(x[82], 0.0)
set_upper_bound(x[82], 0.0)
set_lower_bound(x[83], -0.08)
set_upper_bound(x[83], 0.2)
set_lower_bound(x[84], 0.0)
set_upper_bound(x[84], 0.0)
set_lower_bound(x[85], -0.3)
set_upper_bound(x[85], 0.6)
set_lower_bound(x[86], 0.0)
set_upper_bound(x[86], 0.0)
set_lower_bound(x[87], 0.0)
set_upper_bound(x[87], 0.0)
set_lower_bound(x[88], -0.1)
set_upper_bound(x[88], 0.13)
set_lower_bound(x[89], 0.0)
set_upper_bound(x[89], 0.0)
set_lower_bound(x[90], 0.0)
set_upper_bound(x[90], 0.0)
set_lower_bound(x[91], 0.0)
set_upper_bound(x[91], 0.0)
set_lower_bound(x[92], 0.0)
set_upper_bound(x[92], 0.0)
set_lower_bound(x[93], 0.0)
set_upper_bound(x[93], 0.0)
set_lower_bound(x[94], 0.0)
set_upper_bound(x[94], 0.0)
set_lower_bound(x[95], 0.0)
set_upper_bound(x[95], 0.0)
set_lower_bound(x[96], -0.04)
set_upper_bound(x[96], 0.24)
set_lower_bound(x[129], 0.0)
set_upper_bound(x[129], 0.0)
set_lower_bound(x[131], 0.0)
set_upper_bound(x[131], 0.0)
set_lower_bound(x[133], 0.0)
set_upper_bound(x[133], 0.0)
set_lower_bound(x[136], 0.0)
set_upper_bound(x[136], 0.0)
set_lower_bound(x[144], 0.0)
set_upper_bound(x[144], 0.0)
set_lower_bound(x[145], 0.0)
set_upper_bound(x[145], 0.0)
set_lower_bound(x[147], 0.0)
set_upper_bound(x[147], 0.0)
set_lower_bound(x[149], 0.0)
set_upper_bound(x[149], 0.0)
set_lower_bound(x[152], 0.0)
set_upper_bound(x[152], 0.0)
set_lower_bound(x[160], 0.0)
set_upper_bound(x[160], 0.0)
set_lower_bound(b[173], 0.0)
set_upper_bound(b[173], 0.0)
set_lower_bound(b[174], 0.0)
set_upper_bound(b[174], 0.0)
set_lower_bound(b[175], 0.0)
set_upper_bound(b[175], 0.0)
set_lower_bound(b[176], 0.0)
set_upper_bound(b[176], 0.0)
set_lower_bound(b[177], 0.0)
set_upper_bound(b[177], 0.0)
set_lower_bound(b[178], 0.0)
set_upper_bound(b[178], 0.0)
set_lower_bound(b[179], 0.0)
set_upper_bound(b[179], 0.0)
set_lower_bound(b[180], 0.0)
set_upper_bound(b[180], 0.0)
set_lower_bound(b[181], 0.0)
set_upper_bound(b[181], 0.0)
set_lower_bound(b[182], 0.0)
set_upper_bound(b[182], 0.0)
set_lower_bound(b[183], 0.0)
set_upper_bound(b[183], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(15.8964171454635*x[1]*x[1]+x[1]*x[2]*(-2.26704183302539*cos(x[34]-x[33])-18.5374266808153*sin(x[34]-x[33]))+x[1]*x[5]*(-13.6293753124381*cos(x[37]-x[33])-7.07407023136926*sin(x[37]-x[33])))+x[65] == 0.0)
@NLconstraint(m, e2, -(x[2]*x[1]*(-2.26704183302539*cos(x[33]-x[34])-18.5374266808153*sin(x[33]-x[34]))+3.53430764694598*x[2]*x[2]+x[2]*x[3]*(-1.26726581392059*cos(x[35]-x[34])-7.28131607739717*sin(x[35]-x[34])))+x[66] == 0.0)
@NLconstraint(m, e3, -(x[3]*x[2]*(-1.26726581392059*cos(x[34]-x[35])-7.28131607739717*sin(x[34]-x[35]))+1.5448109718374*x[3]*x[3]+x[3]*x[4]*(-0.27754515791681*cos(x[36]-x[35])-1.6615816969355*sin(x[36]-x[35])))+x[67] == 0.0)
@NLconstraint(m, e4, -(x[4]*x[3]*(-0.27754515791681*cos(x[35]-x[36])-1.6615816969355*sin(x[35]-x[36]))+2.29003563010891*x[4]*x[4]+x[4]*x[6]*(-0.864296115364742*cos(x[38]-x[36])-6.06886185353939*sin(x[38]-x[36]))+x[4]*x[7]*(-0.824884423842853*cos(x[39]-x[36])-6.35284123437183*sin(x[39]-x[36]))+x[4]*x[9]*(-0.323309932984507*cos(x[41]-x[36])-3.06668980551481*sin(x[41]-x[36]))-10*x[4]*x[16]*sin(x[48]-x[36]))+x[68] == 0.0)
@NLconstraint(m, e5, -(x[5]*x[1]*(-13.6293753124381*cos(x[33]-x[37])-7.07407023136926*sin(x[33]-x[37]))+14.9328222636193*x[5]*x[5]+x[5]*x[6]*(-0.556466438117951*cos(x[38]-x[37])-3.59715804640533*sin(x[38]-x[37]))+x[5]*x[7]*(-0.746980513063235*cos(x[39]-x[37])-3.99601522253739*sin(x[39]-x[37])))+x[69] == 0.0)
@NLconstraint(m, e6, -(x[6]*x[4]*(-0.864296115364742*cos(x[36]-x[38])-6.06886185353939*sin(x[36]-x[38]))+x[6]*x[5]*(-0.556466438117951*cos(x[37]-x[38])-3.59715804640533*sin(x[37]-x[38]))+1.42076255348269*x[6]*x[6])+x[70] == 0.28)
@NLconstraint(m, e7, -(x[7]*x[4]*(-0.824884423842853*cos(x[36]-x[39])-6.35284123437183*sin(x[36]-x[39]))+x[7]*x[5]*(-0.746980513063235*cos(x[37]-x[39])-3.99601522253739*sin(x[37]-x[39]))+8.01827911901728*x[7]*x[7]+x[7]*x[8]*(-6.44641418211119*cos(x[40]-x[39])-56.4061240934729*sin(x[40]-x[39]))-20*x[7]*x[15]*sin(x[47]-x[39]))+x[71] == 0.0)
@NLconstraint(m, e8, -(x[8]*x[7]*(-6.44641418211119*cos(x[39]-x[40])-56.4061240934729*sin(x[39]-x[40]))+7.92491432585426*x[8]*x[8]+x[8]*x[9]*(-1.47850014374307*cos(x[41]-x[40])-12.7315290155653*sin(x[41]-x[40])))+x[72] == 0.0)
@NLconstraint(m, e9, -(x[9]*x[4]*(-0.323309932984507*cos(x[36]-x[41])-3.06668980551481*sin(x[36]-x[41]))+x[9]*x[8]*(-1.47850014374307*cos(x[40]-x[41])-12.7315290155653*sin(x[40]-x[41]))+3.67227520253507*x[9]*x[9]+x[9]*x[10]*(-1.53864841883629*cos(x[42]-x[41])-12.6331133336033*sin(x[42]-x[41]))+x[9]*x[11]*(-0.331816706971196*cos(x[43]-x[41])-2.02240182793204*sin(x[43]-x[41]))-6.66666666666667*x[9]*x[14]*sin(x[46]-x[41]))+x[73] == 0.0)
@NLconstraint(m, e10, -(x[10]*x[9]*(-1.53864841883629*cos(x[41]-x[42])-12.6331133336033*sin(x[41]-x[42]))+1.87592107119826*x[10]*x[10]+x[10]*x[11]*(-0.337272652361963*cos(x[43]-x[42])-2.74800558799463*sin(x[43]-x[42]))-6.66666666666667*x[10]*x[12]*sin(x[44]-x[42]))+x[74] == 0.0)
@NLconstraint(m, e11, -(x[11]*x[9]*(-0.331816706971196*cos(x[41]-x[43])-2.02240182793204*sin(x[41]-x[43]))+x[11]*x[10]*(-0.337272652361963*cos(x[42]-x[43])-2.74800558799463*sin(x[42]-x[43]))+0.669089359333159*x[11]*x[11]-6.66666666666667*x[11]*x[13]*sin(x[45]-x[43]))+x[75] == 0.3)
@NLconstraint(m, e12, 6.66666666666667*x[12]*x[10]*sin(x[42]-x[44])+x[76] == 0.56)
@NLconstraint(m, e13, 6.66666666666667*x[13]*x[11]*sin(x[43]-x[45])+x[77] == 0.0)
@NLconstraint(m, e14, 6.66666666666667*x[14]*x[9]*sin(x[41]-x[46])+x[78] == 0.44)
@NLconstraint(m, e15, 20*x[15]*x[7]*sin(x[39]-x[47])+x[79] == 2.4)
@NLconstraint(m, e16, 10*x[16]*x[4]*sin(x[36]-x[48])+x[80] == 0.0)
@NLconstraint(m, e17, -(25.4742969121846*x[1]*x[1]+x[1]*x[2]*(2.26704183302539*sin(x[34]-x[33])-18.5374266808153*cos(x[34]-x[33]))+x[1]*x[5]*(13.6293753124381*sin(x[37]-x[33])-7.07407023136926*cos(x[37]-x[33])))+x[81]+x[129]-x[145] == 0.0)
@NLconstraint(m, e18, -(x[2]*x[1]*(2.26704183302539*sin(x[33]-x[34])-18.5374266808153*cos(x[33]-x[34]))+25.7248427582125*x[2]*x[2]+x[2]*x[3]*(1.26726581392059*sin(x[35]-x[34])-7.28131607739717*cos(x[35]-x[34])))+x[82]+x[130]-x[146] == 0.0)
@NLconstraint(m, e19, -(x[3]*x[2]*(1.26726581392059*sin(x[34]-x[35])-7.28131607739717*cos(x[34]-x[35]))+8.82609777433267*x[3]*x[3]+x[3]*x[4]*(0.27754515791681*sin(x[36]-x[35])-1.6615816969355*cos(x[36]-x[35])))+x[83]+x[131]-x[147] == 0.0)
@NLconstraint(m, e20, -(x[4]*x[3]*(0.27754515791681*sin(x[35]-x[36])-1.6615816969355*cos(x[35]-x[36]))+27.0030745903615*x[4]*x[4]+x[4]*x[6]*(0.864296115364742*sin(x[38]-x[36])-6.06886185353939*cos(x[38]-x[36]))+x[4]*x[7]*(0.824884423842853*sin(x[39]-x[36])-6.35284123437183*cos(x[39]-x[36]))+x[4]*x[9]*(0.323309932984507*sin(x[41]-x[36])-3.06668980551481*cos(x[41]-x[36]))-10*x[4]*x[16]*cos(x[48]-x[36]))+x[84]+x[132]-x[148] == 0.0)
@NLconstraint(m, e21, -(x[5]*x[1]*(13.6293753124381*sin(x[33]-x[37])-7.07407023136926*cos(x[33]-x[37]))+14.428443500312*x[5]*x[5]+x[5]*x[6]*(0.556466438117951*sin(x[38]-x[37])-3.59715804640533*cos(x[38]-x[37]))+x[5]*x[7]*(0.746980513063235*sin(x[39]-x[37])-3.99601522253739*cos(x[39]-x[37])))+x[85]+x[133]-x[149] == 0.0)
@NLconstraint(m, e22, -(x[6]*x[4]*(0.864296115364742*sin(x[36]-x[38])-6.06886185353939*cos(x[36]-x[38]))+x[6]*x[5]*(0.556466438117951*sin(x[37]-x[38])-3.59715804640533*cos(x[37]-x[38]))+9.58501989994471*x[6]*x[6])+x[86]+x[134]-x[150] == 0.08)
@NLconstraint(m, e23, -(x[7]*x[4]*(0.824884423842853*sin(x[36]-x[39])-6.35284123437183*cos(x[36]-x[39]))+x[7]*x[5]*(0.746980513063235*sin(x[37]-x[39])-3.99601522253739*cos(x[37]-x[39]))+86.6293805503822*x[7]*x[7]+x[7]*x[8]*(6.44641418211119*sin(x[40]-x[39])-56.4061240934729*cos(x[40]-x[39]))-20*x[7]*x[15]*cos(x[47]-x[39]))+x[87]+x[135]-x[151] == -0.5)
@NLconstraint(m, e24, -(x[8]*x[7]*(6.44641418211119*sin(x[39]-x[40])-56.4061240934729*cos(x[39]-x[40]))+69.1318531090383*x[8]*x[8]+x[8]*x[9]*(1.47850014374307*sin(x[41]-x[40])-12.7315290155653*cos(x[41]-x[40])))+x[88]+x[136]-x[152] == 0.0)
@NLconstraint(m, e25, -(x[9]*x[4]*(0.323309932984507*sin(x[36]-x[41])-3.06668980551481*cos(x[36]-x[41]))+x[9]*x[8]*(1.47850014374307*sin(x[40]-x[41])-12.7315290155653*cos(x[40]-x[41]))+37.0715006492821*x[9]*x[9]+x[9]*x[10]*(1.53864841883629*sin(x[42]-x[41])-12.6331133336033*cos(x[42]-x[41]))+x[9]*x[11]*(0.331816706971196*sin(x[43]-x[41])-2.02240182793204*cos(x[43]-x[41]))-6.66666666666667*x[9]*x[14]*cos(x[46]-x[41]))+x[89]+x[137]-x[153] == -0.2)
@NLconstraint(m, e26, -(x[10]*x[9]*(1.53864841883629*sin(x[41]-x[42])-12.6331133336033*cos(x[41]-x[42]))+22.0194855882646*x[10]*x[10]+x[10]*x[11]*(0.337272652361963*sin(x[43]-x[42])-2.74800558799463*cos(x[43]-x[42]))-6.66666666666667*x[10]*x[12]*cos(x[44]-x[42]))+x[90]+x[138]-x[154] == -0.2)
@NLconstraint(m, e27, -(x[11]*x[9]*(0.331816706971196*sin(x[41]-x[43])-2.02240182793204*cos(x[41]-x[43]))+x[11]*x[10]*(0.337272652361963*sin(x[42]-x[43])-2.74800558799463*cos(x[42]-x[43]))+11.3946740825933*x[11]*x[11]-6.66666666666667*x[11]*x[13]*cos(x[45]-x[43]))+x[91]+x[139]-x[155] == 0.1)
@NLconstraint(m, e28, -(6.66666666666667*x[12]*x[12]-6.66666666666667*x[12]*x[10]*cos(x[42]-x[44]))+x[92]+x[140]-x[156] == -0.08)
@NLconstraint(m, e29, -(6.66666666666667*x[13]*x[13]-6.66666666666667*x[13]*x[11]*cos(x[43]-x[45]))+x[93]+x[141]-x[157] == -0.2)
@NLconstraint(m, e30, -(6.66666666666667*x[14]*x[14]-6.66666666666667*x[14]*x[9]*cos(x[41]-x[46]))+x[94]+x[142]-x[158] == -0.1)
@NLconstraint(m, e31, -(20*x[15]*x[15]-20*x[15]*x[7]*cos(x[39]-x[47]))+x[95]+x[143]-x[159] == 0.0)
@NLconstraint(m, e32, -(10*x[16]*x[16]-10*x[16]*x[4]*cos(x[36]-x[48]))+x[96]+x[144]-x[160] == 0.0)
@constraint(m, e33, x[33] == 0.0)
@NLconstraint(m, e34, 15.8964171454635*x[17]*x[17]+x[17]*x[18]*(-2.26704183302539*cos(x[50]-x[49])-18.5374266808153*sin(x[50]-x[49]))+x[17]*x[21]*(-13.6293753124381*cos(x[53]-x[49])-7.07407023136926*sin(x[53]-x[49]))-x[97] == 0.0)
@NLconstraint(m, e35, x[18]*x[17]*(-2.26704183302539*cos(x[49]-x[50])-18.5374266808153*sin(x[49]-x[50]))+3.53430764694598*x[18]*x[18]+x[18]*x[19]*(-1.26726581392059*cos(x[51]-x[50])-7.28131607739717*sin(x[51]-x[50]))-x[98] == 0.0)
@NLconstraint(m, e36, x[19]*x[18]*(-1.26726581392059*cos(x[50]-x[51])-7.28131607739717*sin(x[50]-x[51]))+1.5448109718374*x[19]*x[19]+x[19]*x[20]*(-0.27754515791681*cos(x[52]-x[51])-1.6615816969355*sin(x[52]-x[51]))-x[99] == 0.0)
@NLconstraint(m, e37, x[20]*x[19]*(-0.27754515791681*cos(x[51]-x[52])-1.6615816969355*sin(x[51]-x[52]))+2.29003563010891*x[20]*x[20]+x[20]*x[22]*(-0.864296115364742*cos(x[54]-x[52])-6.06886185353939*sin(x[54]-x[52]))+x[20]*x[23]*(-0.824884423842853*cos(x[55]-x[52])-6.35284123437183*sin(x[55]-x[52]))+x[20]*x[25]*(-0.323309932984507*cos(x[57]-x[52])-3.06668980551481*sin(x[57]-x[52]))-10*x[20]*x[32]*sin(x[64]-x[52])-x[100] == 0.0)
@NLconstraint(m, e38, x[21]*x[17]*(-13.6293753124381*cos(x[49]-x[53])-7.07407023136926*sin(x[49]-x[53]))+14.9328222636193*x[21]*x[21]+x[21]*x[22]*(-0.556466438117951*cos(x[54]-x[53])-3.59715804640533*sin(x[54]-x[53]))+x[21]*x[23]*(-0.746980513063235*cos(x[55]-x[53])-3.99601522253739*sin(x[55]-x[53]))-x[101] == 0.0)
@NLconstraint(m, e39, x[22]*x[20]*(-0.864296115364742*cos(x[52]-x[54])-6.06886185353939*sin(x[52]-x[54]))+x[22]*x[21]*(-0.556466438117951*cos(x[53]-x[54])-3.59715804640533*sin(x[53]-x[54]))+1.42076255348269*x[22]*x[22]-x[102] == 0.0)
@NLconstraint(m, e40, x[23]*x[20]*(-0.824884423842853*cos(x[52]-x[55])-6.35284123437183*sin(x[52]-x[55]))+x[23]*x[21]*(-0.746980513063235*cos(x[53]-x[55])-3.99601522253739*sin(x[53]-x[55]))+8.01827911901728*x[23]*x[23]+x[23]*x[24]*(-6.44641418211119*cos(x[56]-x[55])-56.4061240934729*sin(x[56]-x[55]))-20*x[23]*x[31]*sin(x[63]-x[55])-x[103] == 0.0)
@NLconstraint(m, e41, x[24]*x[23]*(-6.44641418211119*cos(x[55]-x[56])-56.4061240934729*sin(x[55]-x[56]))+7.92491432585426*x[24]*x[24]+x[24]*x[25]*(-1.47850014374307*cos(x[57]-x[56])-12.7315290155653*sin(x[57]-x[56]))-x[104] == 0.0)
@NLconstraint(m, e42, x[25]*x[20]*(-0.323309932984507*cos(x[52]-x[57])-3.06668980551481*sin(x[52]-x[57]))+x[25]*x[24]*(-1.47850014374307*cos(x[56]-x[57])-12.7315290155653*sin(x[56]-x[57]))+3.67227520253507*x[25]*x[25]+x[25]*x[26]*(-1.53864841883629*cos(x[58]-x[57])-12.6331133336033*sin(x[58]-x[57]))+x[25]*x[27]*(-0.331816706971196*cos(x[59]-x[57])-2.02240182793204*sin(x[59]-x[57]))-6.66666666666667*x[25]*x[30]*sin(x[62]-x[57])-x[105] == 0.0)
@NLconstraint(m, e43, x[26]*x[25]*(-1.53864841883629*cos(x[57]-x[58])-12.6331133336033*sin(x[57]-x[58]))+1.87592107119826*x[26]*x[26]+x[26]*x[27]*(-0.337272652361963*cos(x[59]-x[58])-2.74800558799463*sin(x[59]-x[58]))-6.66666666666667*x[26]*x[28]*sin(x[60]-x[58])-x[106] == 0.0)
@NLconstraint(m, e44, x[27]*x[25]*(-0.331816706971196*cos(x[57]-x[59])-2.02240182793204*sin(x[57]-x[59]))+x[27]*x[26]*(-0.337272652361963*cos(x[58]-x[59])-2.74800558799463*sin(x[58]-x[59]))+0.669089359333159*x[27]*x[27]-6.66666666666667*x[27]*x[29]*sin(x[61]-x[59])-x[107] == 0.0)
@NLconstraint(m, e45, -6.66666666666667*x[28]*x[26]*sin(x[58]-x[60])-x[108] == 0.0)
@NLconstraint(m, e46, -6.66666666666667*x[29]*x[27]*sin(x[59]-x[61])-x[109] == 0.0)
@NLconstraint(m, e47, -6.66666666666667*x[30]*x[25]*sin(x[57]-x[62])-x[110] == 0.0)
@NLconstraint(m, e48, -20*x[31]*x[23]*sin(x[55]-x[63])-x[111] == 0.0)
@NLconstraint(m, e49, -10*x[32]*x[20]*sin(x[52]-x[64])-x[112] == 0.0)
@NLconstraint(m, e50, 25.4742969121846*x[17]*x[17]+x[17]*x[18]*(2.26704183302539*sin(x[50]-x[49])-18.5374266808153*cos(x[50]-x[49]))+x[17]*x[21]*(13.6293753124381*sin(x[53]-x[49])-7.07407023136926*cos(x[53]-x[49]))-x[113]-x[129]+x[145] == 0.0)
@NLconstraint(m, e51, x[18]*x[17]*(2.26704183302539*sin(x[49]-x[50])-18.5374266808153*cos(x[49]-x[50]))+25.7248427582125*x[18]*x[18]+x[18]*x[19]*(1.26726581392059*sin(x[51]-x[50])-7.28131607739717*cos(x[51]-x[50]))-x[114]-x[130]+x[146] == 0.0)
@NLconstraint(m, e52, x[19]*x[18]*(1.26726581392059*sin(x[50]-x[51])-7.28131607739717*cos(x[50]-x[51]))+8.82609777433267*x[19]*x[19]+x[19]*x[20]*(0.27754515791681*sin(x[52]-x[51])-1.6615816969355*cos(x[52]-x[51]))-x[115]-x[131]+x[147] == 0.0)
@NLconstraint(m, e53, x[20]*x[19]*(0.27754515791681*sin(x[51]-x[52])-1.6615816969355*cos(x[51]-x[52]))+27.0030745903615*x[20]*x[20]+x[20]*x[22]*(0.864296115364742*sin(x[54]-x[52])-6.06886185353939*cos(x[54]-x[52]))+x[20]*x[23]*(0.824884423842853*sin(x[55]-x[52])-6.35284123437183*cos(x[55]-x[52]))+x[20]*x[25]*(0.323309932984507*sin(x[57]-x[52])-3.06668980551481*cos(x[57]-x[52]))-10*x[20]*x[32]*cos(x[64]-x[52])-x[116]-x[132]+x[148] == 0.0)
@NLconstraint(m, e54, x[21]*x[17]*(13.6293753124381*sin(x[49]-x[53])-7.07407023136926*cos(x[49]-x[53]))+14.428443500312*x[21]*x[21]+x[21]*x[22]*(0.556466438117951*sin(x[54]-x[53])-3.59715804640533*cos(x[54]-x[53]))+x[21]*x[23]*(0.746980513063235*sin(x[55]-x[53])-3.99601522253739*cos(x[55]-x[53]))-x[117]-x[133]+x[149] == 0.0)
@NLconstraint(m, e55, x[22]*x[20]*(0.864296115364742*sin(x[52]-x[54])-6.06886185353939*cos(x[52]-x[54]))+x[22]*x[21]*(0.556466438117951*sin(x[53]-x[54])-3.59715804640533*cos(x[53]-x[54]))+9.58501989994471*x[22]*x[22]-x[118]-x[134]+x[150] == 0.0)
@NLconstraint(m, e56, x[23]*x[20]*(0.824884423842853*sin(x[52]-x[55])-6.35284123437183*cos(x[52]-x[55]))+x[23]*x[21]*(0.746980513063235*sin(x[53]-x[55])-3.99601522253739*cos(x[53]-x[55]))+86.6293805503822*x[23]*x[23]+x[23]*x[24]*(6.44641418211119*sin(x[56]-x[55])-56.4061240934729*cos(x[56]-x[55]))-20*x[23]*x[31]*cos(x[63]-x[55])-x[119]-x[135]+x[151] == 0.5)
@NLconstraint(m, e57, x[24]*x[23]*(6.44641418211119*sin(x[55]-x[56])-56.4061240934729*cos(x[55]-x[56]))+69.1318531090383*x[24]*x[24]+x[24]*x[25]*(1.47850014374307*sin(x[57]-x[56])-12.7315290155653*cos(x[57]-x[56]))-x[120]-x[136]+x[152] == 0.0)
@NLconstraint(m, e58, x[25]*x[20]*(0.323309932984507*sin(x[52]-x[57])-3.06668980551481*cos(x[52]-x[57]))+x[25]*x[24]*(1.47850014374307*sin(x[56]-x[57])-12.7315290155653*cos(x[56]-x[57]))+37.0715006492821*x[25]*x[25]+x[25]*x[26]*(1.53864841883629*sin(x[58]-x[57])-12.6331133336033*cos(x[58]-x[57]))+x[25]*x[27]*(0.331816706971196*sin(x[59]-x[57])-2.02240182793204*cos(x[59]-x[57]))-6.66666666666667*x[25]*x[30]*cos(x[62]-x[57])-x[121]-x[137]+x[153] == 0.2)
@NLconstraint(m, e59, x[26]*x[25]*(1.53864841883629*sin(x[57]-x[58])-12.6331133336033*cos(x[57]-x[58]))+22.0194855882646*x[26]*x[26]+x[26]*x[27]*(0.337272652361963*sin(x[59]-x[58])-2.74800558799463*cos(x[59]-x[58]))-6.66666666666667*x[26]*x[28]*cos(x[60]-x[58])-x[122]-x[138]+x[154] == 0.2)
@NLconstraint(m, e60, x[27]*x[25]*(0.331816706971196*sin(x[57]-x[59])-2.02240182793204*cos(x[57]-x[59]))+x[27]*x[26]*(0.337272652361963*sin(x[58]-x[59])-2.74800558799463*cos(x[58]-x[59]))+11.3946740825933*x[27]*x[27]-6.66666666666667*x[27]*x[29]*cos(x[61]-x[59])-x[123]-x[139]+x[155] == 0.0)
@NLconstraint(m, e61, 6.66666666666667*x[28]*x[28]-6.66666666666667*x[28]*x[26]*cos(x[58]-x[60])-x[124]-x[140]+x[156] == 0.2)
@NLconstraint(m, e62, 6.66666666666667*x[29]*x[29]-6.66666666666667*x[29]*x[27]*cos(x[59]-x[61])-x[125]-x[141]+x[157] == 0.2)
@NLconstraint(m, e63, 6.66666666666667*x[30]*x[30]-6.66666666666667*x[30]*x[25]*cos(x[57]-x[62])-x[126]-x[142]+x[158] == 0.2)
@NLconstraint(m, e64, 20*x[31]*x[31]-20*x[31]*x[23]*cos(x[55]-x[63])-x[127]-x[143]+x[159] == 0.5)
@NLconstraint(m, e65, 10*x[32]*x[32]-10*x[32]*x[20]*cos(x[52]-x[64])-x[128]-x[144]+x[160] == 0.0)
@constraint(m, e66, -x[97] >= -4.0)
@constraint(m, e67, -x[99] >= -0.8)
@constraint(m, e68, -x[101] >= -1.2)
@constraint(m, e69, -x[104] >= -0.24)
@constraint(m, e70, -x[112] >= -0.5)
@constraint(m, e71, x[97] >= 0.0)
@constraint(m, e72, x[99] >= 0.0)
@constraint(m, e73, x[101] >= 0.0)
@constraint(m, e74, x[104] >= 0.0)
@constraint(m, e75, x[112] >= 0.0)
@constraint(m, e76, -x[113] >= -0.6)
@constraint(m, e77, -x[115] >= -0.2)
@constraint(m, e78, -x[117] >= -0.6)
@constraint(m, e79, -x[120] >= -0.13)
@constraint(m, e80, -x[128] >= -0.24)
@constraint(m, e81, x[113] >= -0.2)
@constraint(m, e82, x[115] >= -0.08)
@constraint(m, e83, x[117] >= -0.3)
@constraint(m, e84, x[120] >= -0.1)
@constraint(m, e85, x[128] >= -0.04)
@constraint(m, e86, x[98] <= 0.0)
@constraint(m, e87, x[100] <= 0.0)
@constraint(m, e88, x[102] <= -0.329411764705882)
@constraint(m, e89, x[103] <= 0.0)
@constraint(m, e90, x[105] <= 0.0)
@constraint(m, e91, x[106] <= 0.0)
@constraint(m, e92, x[107] <= -0.352941176470588)
@constraint(m, e93, x[108] <= -0.658823529411765)
@constraint(m, e94, x[109] <= 0.0)
@constraint(m, e95, x[110] <= -0.517647058823529)
@constraint(m, e96, x[111] <= -2.82352941176471)
@constraint(m, e97, x[114] <= 0.0)
@constraint(m, e98, x[116] <= 0.0)
@constraint(m, e99, x[118] <= -0.0941176470588235)
@constraint(m, e100, x[119] <= 0.0)
@constraint(m, e101, x[121] <= 0.0)
@constraint(m, e102, x[122] <= 0.0)
@constraint(m, e103, x[123] <= -0.117647058823529)
@constraint(m, e104, x[124] <= -0.141176470588235)
@constraint(m, e105, x[125] <= 0.0)
@constraint(m, e106, x[126] <= -0.117647058823529)
@constraint(m, e107, x[127] <= -0.588235294117648)
@constraint(m, e108, -100*x[130]-100*x[132]-100*x[134]-100*x[135]-100*x[137]-100*x[138]-100*x[139]-100*x[140]-100*x[141]-100*x[142]-100*x[143]-100*x[146]-100*x[148]-100*x[150]-100*x[151]-100*x[153]-100*x[154]-100*x[155]-100*x[156]-100*x[157]-100*x[158]-100*x[159]+objvar-10*b[162]-10*b[163]-10*b[164]-10*b[165]-10*b[166]-10*b[167]-10*b[168]-10*b[169]-10*b[170]-10*b[171]-10*b[172]-10*b[173]-10*b[174]-10*b[175]-10*b[176]-10*b[177]-10*b[178]-10*b[179]-10*b[180]-10*b[181]-10*b[182]-10*b[183] == 0.0)
@constraint(m, e109, x[130]-0.4*b[162] <= 0.0)
@constraint(m, e110, x[132]-0.4*b[163] <= 0.0)
@constraint(m, e111, x[134]-0.4*b[164] <= 0.0)
@constraint(m, e112, x[135]-0.4*b[165] <= 0.0)
@constraint(m, e113, x[137]-0.4*b[166] <= 0.0)
@constraint(m, e114, x[138]-0.4*b[167] <= 0.0)
@constraint(m, e115, x[139]-0.4*b[168] <= 0.0)
@constraint(m, e116, x[140]-0.4*b[169] <= 0.0)
@constraint(m, e117, x[141]-0.4*b[170] <= 0.0)
@constraint(m, e118, x[142]-0.4*b[171] <= 0.0)
@constraint(m, e119, x[143]-0.4*b[172] <= 0.0)
@constraint(m, e120, x[146]-0.4*b[173] <= 0.0)
@constraint(m, e121, x[148]-0.4*b[174] <= 0.0)
@constraint(m, e122, x[150]-0.4*b[175] <= 0.0)
@constraint(m, e123, x[151]-0.4*b[176] <= 0.0)
@constraint(m, e124, x[153]-0.4*b[177] <= 0.0)
@constraint(m, e125, x[154]-0.4*b[178] <= 0.0)
@constraint(m, e126, x[155]-0.4*b[179] <= 0.0)
@constraint(m, e127, x[156]-0.4*b[180] <= 0.0)
@constraint(m, e128, x[157]-0.4*b[181] <= 0.0)
@constraint(m, e129, x[158]-0.4*b[182] <= 0.0)
@constraint(m, e130, x[159]-0.4*b[183] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
