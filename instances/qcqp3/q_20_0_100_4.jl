using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[1], 1.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.8139*x[1]*x[1]+0.8304*x[1]*x[2]-0.3323*x[1]*x[3]-0.4014*x[1]*x[4]+0.6574*x[1]*x[5]-0.0813*x[1]*x[6]-0.9703*x[1]*x[7]-0.3218*x[1]*x[8]-0.8836*x[1]*x[9]-0.8145*x[1]*x[10]+0.3035*x[1]*x[11]-0.2096*x[1]*x[12]+0.2399*x[1]*x[13]+0.6504*x[1]*x[14]-0.3218*x[1]*x[15]-0.3831*x[1]*x[16]-0.2782*x[1]*x[17]-0.1766*x[1]*x[18]-0.0781*x[1]*x[19]-0.2352*x[1]*x[20]+0.2862*x[2]*x[2]-0.5167*x[2]*x[3]+0.4314*x[2]*x[4]+0.7136*x[2]*x[5]-0.6721*x[2]*x[6]+0.4626*x[2]*x[7]+0.0198*x[2]*x[8]-0.4397*x[2]*x[9]+0.9861*x[2]*x[10]+0.5225*x[2]*x[11]-0.9346*x[2]*x[12]+0.4133*x[2]*x[13]+0.3442*x[2]*x[14]-0.8199*x[2]*x[15]-0.0776*x[2]*x[16]-0.4723*x[2]*x[17]-0.289*x[2]*x[18]+0.4463*x[2]*x[19]-0.9454*x[2]*x[20]+0.1697*x[3]*x[3]+0.3885*x[3]*x[4]-0.7786*x[3]*x[5]+0.0525*x[3]*x[6]+0.9874*x[3]*x[7]+0.4525*x[3]*x[8]+0.521*x[3]*x[9]-0.5928*x[3]*x[10]+0.7265*x[3]*x[11]-0.615*x[3]*x[12]-0.8237*x[3]*x[13]-0.5174*x[3]*x[14]+0.821*x[3]*x[15]+0.6597*x[3]*x[16]-0.8449*x[3]*x[17]+0.743*x[3]*x[18]+0.1144*x[3]*x[19]-0.2056*x[3]*x[20]+0.9986*x[4]*x[4]+0.54*x[4]*x[5]+0.5713*x[4]*x[6]+0.5068*x[4]*x[7]+0.1204*x[4]*x[8]+0.3888*x[4]*x[9]+0.7512*x[4]*x[10]-0.9713*x[4]*x[11]-0.4285*x[4]*x[12]-0.6373*x[4]*x[13]+0.6154*x[4]*x[14]+0.1051*x[4]*x[15]-0.0283*x[4]*x[16]+0.0735*x[4]*x[17]-0.9093*x[4]*x[18]-0.7123*x[4]*x[19]+0.5603*x[4]*x[20]+0.5412*x[5]*x[5]-0.6809*x[5]*x[6]-0.0621*x[5]*x[7]-0.674*x[5]*x[8]+0.0977*x[5]*x[9]-0.3899*x[5]*x[10]-0.6912*x[5]*x[11]+0.15*x[5]*x[12]-0.7118*x[5]*x[13]-0.6134*x[5]*x[14]+0.3822*x[5]*x[15]+0.9004*x[5]*x[16]-0.7372*x[5]*x[17]+0.42*x[5]*x[18]-0.2405*x[5]*x[19]-0.204*x[5]*x[20]-0.998*x[6]*x[6]-0.1736*x[6]*x[7]+0.6076*x[6]*x[8]+0.7557*x[6]*x[9]-0.7184*x[6]*x[10]-0.9139*x[6]*x[11]+0.1313*x[6]*x[12]-0.8836*x[6]*x[13]+0.7427*x[6]*x[14]-0.3114*x[6]*x[15]-0.0203*x[6]*x[16]-0.4356*x[6]*x[17]-0.5229*x[6]*x[18]+0.0993*x[6]*x[19]+0.4277*x[6]*x[20]+0.8057*x[7]*x[7]+0.5147*x[7]*x[8]+0.0785*x[7]*x[9]+0.2918*x[7]*x[10]+0.5539*x[7]*x[11]+0.758*x[7]*x[12]+0.2055*x[7]*x[13]-0.877*x[7]*x[14]-0.1218*x[7]*x[15]-0.9826*x[7]*x[16]-0.4008*x[7]*x[17]+0.947*x[7]*x[18]+0.9103*x[7]*x[19]-0.5734*x[7]*x[20]+0.3479*x[8]*x[8]+0.0723*x[8]*x[9]-0.2806*x[8]*x[10]-0.9973*x[8]*x[11]+0.6989*x[8]*x[12]-0.1571*x[8]*x[13]+0.4957*x[8]*x[14]-0.9767*x[8]*x[15]+0.2287*x[8]*x[16]-0.1111*x[8]*x[17]+0.3253*x[8]*x[18]+0.3775*x[8]*x[19]+0.8783*x[8]*x[20]+0.4335*x[9]*x[9]-0.0967*x[9]*x[10]+0.269*x[9]*x[11]-0.5516*x[9]*x[12]-0.2037*x[9]*x[13]+0.6602*x[9]*x[14]-0.722*x[9]*x[15]+0.5119*x[9]*x[16]+0.586*x[9]*x[17]-0.5442*x[9]*x[18]+0.0562*x[9]*x[19]-0.7251*x[9]*x[20]-0.6521*x[10]*x[10]-0.7049*x[10]*x[11]+0.62*x[10]*x[12]-0.497*x[10]*x[13]-0.1799*x[10]*x[14]+0.9132*x[10]*x[15]+0.4395*x[10]*x[16]+0.6708*x[10]*x[17]+0.5537*x[10]*x[18]+0.0758*x[10]*x[19]+0.2226*x[10]*x[20]+0.3882*x[11]*x[11]+0.2014*x[11]*x[12]-0.8073*x[11]*x[13]+0.0984*x[11]*x[14]-0.4142*x[11]*x[15]-0.5883*x[11]*x[16]+0.6861*x[11]*x[17]+0.303*x[11]*x[18]+0.9262*x[11]*x[19]+0.2199*x[11]*x[20]-0.1922*x[12]*x[12]-0.7428*x[12]*x[13]-0.7244*x[12]*x[14]-0.5698*x[12]*x[15]+0.046*x[12]*x[16]+0.4195*x[12]*x[17]+0.0448*x[12]*x[18]-0.6311*x[12]*x[19]+0.7262*x[12]*x[20]-0.3714*x[13]*x[13]-0.9939*x[13]*x[14]+0.9992*x[13]*x[15]+0.7608*x[13]*x[16]-0.5125*x[13]*x[17]+0.0878*x[13]*x[18]+0.522*x[13]*x[19]+0.3632*x[13]*x[20]-0.1574*x[14]*x[14]+0.1895*x[14]*x[15]-0.1071*x[14]*x[16]+0.889*x[14]*x[17]-0.6673*x[14]*x[18]+0.9491*x[14]*x[19]-0.8262*x[14]*x[20]-0.6978*x[15]*x[15]+0.8198*x[15]*x[16]-0.5889*x[15]*x[17]-0.5569*x[15]*x[18]-0.7317*x[15]*x[19]+0.3949*x[15]*x[20]+0.9541*x[16]*x[16]-0.9943*x[16]*x[17]-0.0116*x[16]*x[18]-0.5047*x[16]*x[19]+0.8051*x[16]*x[20]-0.7914*x[17]*x[17]+0.5505*x[17]*x[18]-0.7908*x[17]*x[19]+0.2414*x[17]*x[20]-0.3313*x[18]*x[18]+0.9555*x[18]*x[19]+0.3839*x[18]*x[20]+0.6554*x[19]*x[19]+0.9363*x[19]*x[20]-0.4451*x[20]*x[20]-0.2679*x[1]-0.6916*x[2]+0.9618*x[3]+0.8635*x[4]-0.5314*x[5]-0.7532*x[6]-0.2676*x[7]+0.6789*x[8]-0.7484*x[9]+0.9799*x[10]-0.04*x[11]+0.9229*x[12]+0.9211*x[13]+0.5065*x[14]+0.2912*x[15]+0.3298*x[16]+0.7586*x[17]+0.4593*x[18]+0.3926*x[19]+0.0687*x[20])+x[21] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[21])

 
