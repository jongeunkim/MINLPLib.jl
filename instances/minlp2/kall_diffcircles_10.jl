using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23]
@variable(m, x[x_Idx])
set_lower_bound(x[23], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[1], 4.0)
set_upper_bound(x[1], 60.0)
set_lower_bound(x[2], 1.2)
set_upper_bound(x[2], 13.8)
set_lower_bound(x[3], 1.2)
set_upper_bound(x[3], 2.8)
set_lower_bound(x[4], 0.6)
set_upper_bound(x[4], 14.4)
set_lower_bound(x[5], 0.6)
set_upper_bound(x[5], 3.4)
set_lower_bound(x[6], 0.8)
set_upper_bound(x[6], 14.2)
set_lower_bound(x[7], 0.8)
set_upper_bound(x[7], 3.2)
set_lower_bound(x[8], 1.7)
set_upper_bound(x[8], 13.3)
set_lower_bound(x[9], 1.7)
set_upper_bound(x[9], 2.3)
set_lower_bound(x[10], 0.5)
set_upper_bound(x[10], 14.5)
set_lower_bound(x[11], 0.5)
set_upper_bound(x[11], 3.5)
set_lower_bound(x[12], 1.3)
set_upper_bound(x[12], 13.7)
set_lower_bound(x[13], 1.3)
set_upper_bound(x[13], 2.7)
set_lower_bound(x[14], 2.0)
set_upper_bound(x[14], 13.0)
set_lower_bound(x[15], 2.0)
set_upper_bound(x[15], 2.0)
set_lower_bound(x[16], 1.3)
set_upper_bound(x[16], 13.7)
set_lower_bound(x[17], 1.3)
set_upper_bound(x[17], 2.7)
set_lower_bound(x[18], 0.6)
set_upper_bound(x[18], 14.4)
set_lower_bound(x[19], 0.6)
set_upper_bound(x[19], 3.4)
set_lower_bound(x[20], 0.7)
set_upper_bound(x[20], 14.3)
set_lower_bound(x[21], 0.7)
set_upper_bound(x[21], 3.3)
set_upper_bound(x[22], 15.0)
set_upper_bound(x[23], 4.0)
set_lower_bound(objvar, 0.0)
set_upper_bound(objvar, 60.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+objvar == -43.385394546075)
@NLconstraint(m, e2, -x[22]*x[23]+x[1] == 0.0)
@NLconstraint(m, e3, (x[2]-x[4])*(x[2]-x[4])+(x[3]-x[5])*(x[3]-x[5]) >= 3.24)
@NLconstraint(m, e4, (x[2]-x[6])*(x[2]-x[6])+(x[3]-x[7])*(x[3]-x[7]) >= 4.0)
@NLconstraint(m, e5, (x[2]-x[8])*(x[2]-x[8])+(x[3]-x[9])*(x[3]-x[9]) >= 8.41)
@NLconstraint(m, e6, (x[2]-x[10])*(x[2]-x[10])+(x[3]-x[11])*(x[3]-x[11]) >= 2.89)
@NLconstraint(m, e7, (x[2]-x[12])*(x[2]-x[12])+(x[3]-x[13])*(x[3]-x[13]) >= 6.25)
@NLconstraint(m, e8, (x[2]-x[14])*(x[2]-x[14])+(x[3]-x[15])*(x[3]-x[15]) >= 10.24)
@NLconstraint(m, e9, (x[2]-x[16])*(x[2]-x[16])+(x[3]-x[17])*(x[3]-x[17]) >= 6.25)
@NLconstraint(m, e10, (x[2]-x[18])*(x[2]-x[18])+(x[3]-x[19])*(x[3]-x[19]) >= 3.24)
@NLconstraint(m, e11, (x[2]-x[20])*(x[2]-x[20])+(x[3]-x[21])*(x[3]-x[21]) >= 3.61)
@NLconstraint(m, e12, (x[4]-x[6])*(x[4]-x[6])+(x[5]-x[7])*(x[5]-x[7]) >= 1.96)
@NLconstraint(m, e13, (x[4]-x[8])*(x[4]-x[8])+(x[5]-x[9])*(x[5]-x[9]) >= 5.29)
@NLconstraint(m, e14, (x[4]-x[10])*(x[4]-x[10])+(x[5]-x[11])*(x[5]-x[11]) >= 1.21)
@NLconstraint(m, e15, (x[4]-x[12])*(x[4]-x[12])+(x[5]-x[13])*(x[5]-x[13]) >= 3.61)
@NLconstraint(m, e16, (x[4]-x[14])*(x[4]-x[14])+(x[5]-x[15])*(x[5]-x[15]) >= 6.76)
@NLconstraint(m, e17, (x[4]-x[16])*(x[4]-x[16])+(x[5]-x[17])*(x[5]-x[17]) >= 3.61)
@NLconstraint(m, e18, (x[4]-x[18])*(x[4]-x[18])+(x[5]-x[19])*(x[5]-x[19]) >= 1.44)
@NLconstraint(m, e19, (x[4]-x[20])*(x[4]-x[20])+(x[5]-x[21])*(x[5]-x[21]) >= 1.69)
@NLconstraint(m, e20, (x[6]-x[8])*(x[6]-x[8])+(x[7]-x[9])*(x[7]-x[9]) >= 6.25)
@NLconstraint(m, e21, (x[6]-x[10])*(x[6]-x[10])+(x[7]-x[11])*(x[7]-x[11]) >= 1.69)
@NLconstraint(m, e22, (x[6]-x[12])*(x[6]-x[12])+(x[7]-x[13])*(x[7]-x[13]) >= 4.41)
@NLconstraint(m, e23, (x[6]-x[14])*(x[6]-x[14])+(x[7]-x[15])*(x[7]-x[15]) >= 7.84)
@NLconstraint(m, e24, (x[6]-x[16])*(x[6]-x[16])+(x[7]-x[17])*(x[7]-x[17]) >= 4.41)
@NLconstraint(m, e25, (x[6]-x[18])*(x[6]-x[18])+(x[7]-x[19])*(x[7]-x[19]) >= 1.96)
@NLconstraint(m, e26, (x[6]-x[20])*(x[6]-x[20])+(x[7]-x[21])*(x[7]-x[21]) >= 2.25)
@NLconstraint(m, e27, (x[8]-x[10])*(x[8]-x[10])+(x[9]-x[11])*(x[9]-x[11]) >= 4.84)
@NLconstraint(m, e28, (x[8]-x[12])*(x[8]-x[12])+(x[9]-x[13])*(x[9]-x[13]) >= 9.0)
@NLconstraint(m, e29, (x[8]-x[14])*(x[8]-x[14])+(x[9]-x[15])*(x[9]-x[15]) >= 13.69)
@NLconstraint(m, e30, (x[8]-x[16])*(x[8]-x[16])+(x[9]-x[17])*(x[9]-x[17]) >= 9.0)
@NLconstraint(m, e31, (x[8]-x[18])*(x[8]-x[18])+(x[9]-x[19])*(x[9]-x[19]) >= 5.29)
@NLconstraint(m, e32, (x[8]-x[20])*(x[8]-x[20])+(x[9]-x[21])*(x[9]-x[21]) >= 5.76)
@NLconstraint(m, e33, (x[10]-x[12])*(x[10]-x[12])+(x[11]-x[13])*(x[11]-x[13]) >= 3.24)
@NLconstraint(m, e34, (x[10]-x[14])*(x[10]-x[14])+(x[11]-x[15])*(x[11]-x[15]) >= 6.25)
@NLconstraint(m, e35, (x[10]-x[16])*(x[10]-x[16])+(x[11]-x[17])*(x[11]-x[17]) >= 3.24)
@NLconstraint(m, e36, (x[10]-x[18])*(x[10]-x[18])+(x[11]-x[19])*(x[11]-x[19]) >= 1.21)
@NLconstraint(m, e37, (x[10]-x[20])*(x[10]-x[20])+(x[11]-x[21])*(x[11]-x[21]) >= 1.44)
@NLconstraint(m, e38, (x[12]-x[14])*(x[12]-x[14])+(x[13]-x[15])*(x[13]-x[15]) >= 10.89)
@NLconstraint(m, e39, (x[12]-x[16])*(x[12]-x[16])+(x[13]-x[17])*(x[13]-x[17]) >= 6.76)
@NLconstraint(m, e40, (x[12]-x[18])*(x[12]-x[18])+(x[13]-x[19])*(x[13]-x[19]) >= 3.61)
@NLconstraint(m, e41, (x[12]-x[20])*(x[12]-x[20])+(x[13]-x[21])*(x[13]-x[21]) >= 4.0)
@NLconstraint(m, e42, (x[14]-x[16])*(x[14]-x[16])+(x[15]-x[17])*(x[15]-x[17]) >= 10.89)
@NLconstraint(m, e43, (x[14]-x[18])*(x[14]-x[18])+(x[15]-x[19])*(x[15]-x[19]) >= 6.76)
@NLconstraint(m, e44, (x[14]-x[20])*(x[14]-x[20])+(x[15]-x[21])*(x[15]-x[21]) >= 7.29)
@NLconstraint(m, e45, (x[16]-x[18])*(x[16]-x[18])+(x[17]-x[19])*(x[17]-x[19]) >= 3.61)
@NLconstraint(m, e46, (x[16]-x[20])*(x[16]-x[20])+(x[17]-x[21])*(x[17]-x[21]) >= 4.0)
@NLconstraint(m, e47, (x[18]-x[20])*(x[18]-x[20])+(x[19]-x[21])*(x[19]-x[21]) >= 1.69)
@constraint(m, e48, x[2]-x[22] <= -1.2)
@constraint(m, e49, x[3]-x[23] <= -1.2)
@constraint(m, e50, x[4]-x[22] <= -0.6)
@constraint(m, e51, x[5]-x[23] <= -0.6)
@constraint(m, e52, x[6]-x[22] <= -0.8)
@constraint(m, e53, x[7]-x[23] <= -0.8)
@constraint(m, e54, x[8]-x[22] <= -1.7)
@constraint(m, e55, x[9]-x[23] <= -1.7)
@constraint(m, e56, x[10]-x[22] <= -0.5)
@constraint(m, e57, x[11]-x[23] <= -0.5)
@constraint(m, e58, x[12]-x[22] <= -1.3)
@constraint(m, e59, x[13]-x[23] <= -1.3)
@constraint(m, e60, x[14]-x[22] <= -2.0)
@constraint(m, e61, x[15]-x[23] <= -2.0)
@constraint(m, e62, x[16]-x[22] <= -1.3)
@constraint(m, e63, x[17]-x[23] <= -1.3)
@constraint(m, e64, x[18]-x[22] <= -0.6)
@constraint(m, e65, x[19]-x[23] <= -0.6)
@constraint(m, e66, x[20]-x[22] <= -0.7)
@constraint(m, e67, x[21]-x[23] <= -0.7)
@constraint(m, e68, x[2] <= 7.5)
@constraint(m, e69, x[3] <= 2.0)
@constraint(m, e70, x[4]-x[18] <= 0.0)
@constraint(m, e71, x[12]-x[16] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
