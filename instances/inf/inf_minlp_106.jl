using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[5]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4]
@variable(m, i[i_Idx], Int)
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
set_lower_bound(i[1], 0.0)
set_upper_bound(i[1], 100.0)
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_upper_bound(i[1], 100.0)
set_upper_bound(i[2], 100.0)
set_upper_bound(i[3], 100.0)
set_upper_bound(i[4], 100.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(4*i[1]*i[2]-712*i[1]-9*i[2]-6*i[1]*i[3]-11*i[1]*i[4]+437*i[4]-162*i[2]*i[3]+171*i[2]*i[4]-3*i[3]*i[4]+24* (i[1])^2+4* (i[2])^2+140* (i[3])^2-187* (i[4])^2)+x[5] == 5197.0)
@NLconstraint(m, e2, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 <= -264.0)
@NLconstraint(m, e3, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 <= -264.0)
@NLconstraint(m, e4, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 <= -264.0)
@NLconstraint(m, e5, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 <= -264.0)
@NLconstraint(m, e6, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 <= -264.0)
@NLconstraint(m, e7, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 <= -264.0)
@NLconstraint(m, e8, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 <= -264.0)
@NLconstraint(m, e9, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 <= -264.0)
@NLconstraint(m, e10, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 <= -264.0)
@NLconstraint(m, e11, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 <= -264.0)
@NLconstraint(m, e12, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 <= -264.0)
@NLconstraint(m, e13, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 <= -264.0)
@NLconstraint(m, e14, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 <= -264.0)
@NLconstraint(m, e15, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 <= -264.0)
@NLconstraint(m, e16, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 <= -264.0)
@NLconstraint(m, e17, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 <= 27.0)
@NLconstraint(m, e18, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 <= 27.0)
@NLconstraint(m, e19, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 <= 27.0)
@NLconstraint(m, e20, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 <= 27.0)
@NLconstraint(m, e21, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 <= 27.0)
@NLconstraint(m, e22, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 <= 27.0)
@NLconstraint(m, e23, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 <= 27.0)
@NLconstraint(m, e24, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 <= 27.0)
@NLconstraint(m, e25, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 <= 27.0)
@NLconstraint(m, e26, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 <= 27.0)
@NLconstraint(m, e27, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 <= 27.0)
@NLconstraint(m, e28, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 <= 27.0)
@NLconstraint(m, e29, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 <= 27.0)
@NLconstraint(m, e30, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 <= 27.0)
@NLconstraint(m, e31, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 <= 27.0)
@NLconstraint(m, e32, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 <= -25578.0)
@NLconstraint(m, e33, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 <= -25578.0)
@NLconstraint(m, e34, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 <= -25578.0)
@NLconstraint(m, e35, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 <= -25578.0)
@NLconstraint(m, e36, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 <= -25578.0)
@NLconstraint(m, e37, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 <= -25578.0)
@NLconstraint(m, e38, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 <= -25578.0)
@NLconstraint(m, e39, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 <= -25578.0)
@NLconstraint(m, e40, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 <= -25578.0)
@NLconstraint(m, e41, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 <= -25578.0)
@NLconstraint(m, e42, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 <= -25578.0)
@NLconstraint(m, e43, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 <= -25578.0)
@NLconstraint(m, e44, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 <= -25578.0)
@NLconstraint(m, e45, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 <= -25578.0)
@NLconstraint(m, e46, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 <= -25578.0)
@NLconstraint(m, e47, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 <= 9.2228)
@NLconstraint(m, e48, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 <= 9.2228)
@NLconstraint(m, e49, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 <= 9.2228)
@NLconstraint(m, e50, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 <= 9.2228)
@NLconstraint(m, e51, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 <= 9.2228)
@NLconstraint(m, e52, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 <= 9.2228)
@NLconstraint(m, e53, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 <= 9.2228)
@NLconstraint(m, e54, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 <= 9.2228)
@NLconstraint(m, e55, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 <= 9.2228)
@NLconstraint(m, e56, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 <= 9.2228)
@NLconstraint(m, e57, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 <= 9.2228)
@NLconstraint(m, e58, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 <= 9.2228)
@NLconstraint(m, e59, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 <= 9.2228)
@NLconstraint(m, e60, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 <= 9.2228)
@NLconstraint(m, e61, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 <= 9.2228)
@NLconstraint(m, e62, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 <= 6.87)
@NLconstraint(m, e63, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 <= 6.87)
@NLconstraint(m, e64, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 <= 6.87)
@NLconstraint(m, e65, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 <= 6.87)
@NLconstraint(m, e66, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 <= 6.87)
@NLconstraint(m, e67, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 <= 6.87)
@NLconstraint(m, e68, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 <= 6.87)
@NLconstraint(m, e69, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 <= 6.87)
@NLconstraint(m, e70, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 <= 6.87)
@NLconstraint(m, e71, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 <= 6.87)
@NLconstraint(m, e72, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 <= 6.87)
@NLconstraint(m, e73, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 <= 6.87)
@NLconstraint(m, e74, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 <= 6.87)
@NLconstraint(m, e75, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 <= 6.87)
@NLconstraint(m, e76, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 <= 6.87)
@NLconstraint(m, e77, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 >= -464.0)
@NLconstraint(m, e78, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 >= -464.0)
@NLconstraint(m, e79, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 >= -464.0)
@NLconstraint(m, e80, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 >= -464.0)
@NLconstraint(m, e81, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 >= -464.0)
@NLconstraint(m, e82, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 >= -464.0)
@NLconstraint(m, e83, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 >= -464.0)
@NLconstraint(m, e84, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 >= -464.0)
@NLconstraint(m, e85, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 >= -464.0)
@NLconstraint(m, e86, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 >= -464.0)
@NLconstraint(m, e87, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 >= -464.0)
@NLconstraint(m, e88, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 >= -464.0)
@NLconstraint(m, e89, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 >= -464.0)
@NLconstraint(m, e90, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 >= -464.0)
@NLconstraint(m, e91, (-3*i[1]*i[2])-23*i[1]+118*i[2]+12*i[1]*i[3]+11*i[1]*i[4]-474*i[4]+196*i[2]*i[3]-180*i[2]*i[4]-8*i[3]*i[4]-19* (i[2])^2-173* (i[3])^2+207* (i[4])^2 >= -464.0)
@NLconstraint(m, e92, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 >= -173.0)
@NLconstraint(m, e93, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 >= -173.0)
@NLconstraint(m, e94, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 >= -173.0)
@NLconstraint(m, e95, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 >= -173.0)
@NLconstraint(m, e96, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 >= -173.0)
@NLconstraint(m, e97, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 >= -173.0)
@NLconstraint(m, e98, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 >= -173.0)
@NLconstraint(m, e99, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 >= -173.0)
@NLconstraint(m, e100, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 >= -173.0)
@NLconstraint(m, e101, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 >= -173.0)
@NLconstraint(m, e102, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 >= -173.0)
@NLconstraint(m, e103, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 >= -173.0)
@NLconstraint(m, e104, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 >= -173.0)
@NLconstraint(m, e105, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 >= -173.0)
@NLconstraint(m, e106, 119*i[1]-6*i[1]*i[2]+263*i[2]+45*i[1]*i[3]+37*i[1]*i[4]-1609*i[4]+810*i[2]*i[3]-798*i[2]*i[4]-31*i[3]*i[4]-7* (i[1])^2-36* (i[2])^2-712* (i[3])^2+857* (i[4])^2 >= -173.0)
@NLconstraint(m, e107, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 >= -25778.0)
@NLconstraint(m, e108, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 >= -25778.0)
@NLconstraint(m, e109, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 >= -25778.0)
@NLconstraint(m, e110, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 >= -25778.0)
@NLconstraint(m, e111, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 >= -25778.0)
@NLconstraint(m, e112, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 >= -25778.0)
@NLconstraint(m, e113, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 >= -25778.0)
@NLconstraint(m, e114, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 >= -25778.0)
@NLconstraint(m, e115, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 >= -25778.0)
@NLconstraint(m, e116, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 >= -25778.0)
@NLconstraint(m, e117, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 >= -25778.0)
@NLconstraint(m, e118, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 >= -25778.0)
@NLconstraint(m, e119, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 >= -25778.0)
@NLconstraint(m, e120, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 >= -25778.0)
@NLconstraint(m, e121, 15*i[1]*i[2]-3460*i[1]+236*i[2]+11*i[1]*i[3]-12*i[1]*i[4]+744*i[4]+174*i[2]*i[3]-274*i[2]*i[4]+61*i[3]*i[4]+112* (i[1])^2- (i[2])^2-215* (i[3])^2+47* (i[4])^2 >= -25778.0)
@NLconstraint(m, e122, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 >= -0.7772)
@NLconstraint(m, e123, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 >= -0.7772)
@NLconstraint(m, e124, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 >= -0.7772)
@NLconstraint(m, e125, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 >= -0.7772)
@NLconstraint(m, e126, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 >= -0.7772)
@NLconstraint(m, e127, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 >= -0.7772)
@NLconstraint(m, e128, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 >= -0.7772)
@NLconstraint(m, e129, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 >= -0.7772)
@NLconstraint(m, e130, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 >= -0.7772)
@NLconstraint(m, e131, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 >= -0.7772)
@NLconstraint(m, e132, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 >= -0.7772)
@NLconstraint(m, e133, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 >= -0.7772)
@NLconstraint(m, e134, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 >= -0.7772)
@NLconstraint(m, e135, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 >= -0.7772)
@NLconstraint(m, e136, (-0.15*i[1]*i[2])-0.05*i[1]+2.83*i[2]+0.098*i[1]*i[3]+0.098*i[1]*i[4]-3.53*i[4]+0.89*i[2]*i[3]-2.65*i[2]*i[4]+0.59*i[3]*i[4]+0.59* (i[2])^2-1.47* (i[3])^2+2.06* (i[4])^2 >= -0.7772)
@NLconstraint(m, e137, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 >= 1.87)
@NLconstraint(m, e138, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 >= 1.87)
@NLconstraint(m, e139, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 >= 1.87)
@NLconstraint(m, e140, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 >= 1.87)
@NLconstraint(m, e141, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 >= 1.87)
@NLconstraint(m, e142, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 >= 1.87)
@NLconstraint(m, e143, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 >= 1.87)
@NLconstraint(m, e144, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 >= 1.87)
@NLconstraint(m, e145, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 >= 1.87)
@NLconstraint(m, e146, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 >= 1.87)
@NLconstraint(m, e147, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 >= 1.87)
@NLconstraint(m, e148, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 >= 1.87)
@NLconstraint(m, e149, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 >= 1.87)
@NLconstraint(m, e150, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 >= 1.87)
@NLconstraint(m, e151, 0.36*i[1]*i[2]+0.12*i[1]-4.19*i[2]-0.24*i[1]*i[3]-0.24*i[1]*i[4]+5.88*i[4]-4.81*i[2]*i[3]+1.06*i[2]*i[4]+1.25*i[3]*i[4]+1.25* (i[2])^2+3.56* (i[3])^2-2.31* (i[4])^2 >= 1.87)
@NLconstraint(m, e152, 13895*i[1]-92*i[1]*i[2]-2669*i[2]-15*i[1]*i[3]+20*i[1]*i[4]-2050*i[4]+687*i[2]*i[3]-867*i[2]*i[4]+40*i[3]*i[4]-451* (i[1])^2+691* (i[2])^2-487* (i[3])^2+1051* (i[4])^2 >= 99655.0)
@NLconstraint(m, e153, 13895*i[1]-92*i[1]*i[2]-2669*i[2]-15*i[1]*i[3]+20*i[1]*i[4]-2050*i[4]+687*i[2]*i[3]-867*i[2]*i[4]+40*i[3]*i[4]-451* (i[1])^2+691* (i[2])^2-487* (i[3])^2+1051* (i[4])^2 >= 99655.0)
@NLconstraint(m, e154, 13895*i[1]-92*i[1]*i[2]-2669*i[2]-15*i[1]*i[3]+20*i[1]*i[4]-2050*i[4]+687*i[2]*i[3]-867*i[2]*i[4]+40*i[3]*i[4]-451* (i[1])^2+691* (i[2])^2-487* (i[3])^2+1051* (i[4])^2 >= 99655.0)
@NLconstraint(m, e155, 13895*i[1]-92*i[1]*i[2]-2669*i[2]-15*i[1]*i[3]+20*i[1]*i[4]-2050*i[4]+687*i[2]*i[3]-867*i[2]*i[4]+40*i[3]*i[4]-451* (i[1])^2+691* (i[2])^2-487* (i[3])^2+1051* (i[4])^2 >= 99655.0)
@NLconstraint(m, e156, 13895*i[1]-92*i[1]*i[2]-2669*i[2]-15*i[1]*i[3]+20*i[1]*i[4]-2050*i[4]+687*i[2]*i[3]-867*i[2]*i[4]+40*i[3]*i[4]-451* (i[1])^2+691* (i[2])^2-487* (i[3])^2+1051* (i[4])^2 >= 99655.0)
@NLconstraint(m, e157, 13895*i[1]-92*i[1]*i[2]-2669*i[2]-15*i[1]*i[3]+20*i[1]*i[4]-2050*i[4]+687*i[2]*i[3]-867*i[2]*i[4]+40*i[3]*i[4]-451* (i[1])^2+691* (i[2])^2-487* (i[3])^2+1051* (i[4])^2 >= 99655.0)
@NLconstraint(m, e158, 13895*i[1]-92*i[1]*i[2]-2669*i[2]-15*i[1]*i[3]+20*i[1]*i[4]-2050*i[4]+687*i[2]*i[3]-867*i[2]*i[4]+40*i[3]*i[4]-451* (i[1])^2+691* (i[2])^2-487* (i[3])^2+1051* (i[4])^2 >= 99655.0)
@NLconstraint(m, e159, 13895*i[1]-92*i[1]*i[2]-2669*i[2]-15*i[1]*i[3]+20*i[1]*i[4]-2050*i[4]+687*i[2]*i[3]-867*i[2]*i[4]+40*i[3]*i[4]-451* (i[1])^2+691* (i[2])^2-487* (i[3])^2+1051* (i[4])^2 >= 99655.0)
@NLconstraint(m, e160, 13895*i[1]-92*i[1]*i[2]-2669*i[2]-15*i[1]*i[3]+20*i[1]*i[4]-2050*i[4]+687*i[2]*i[3]-867*i[2]*i[4]+40*i[3]*i[4]-451* (i[1])^2+691* (i[2])^2-487* (i[3])^2+1051* (i[4])^2 >= 99655.0)
@NLconstraint(m, e161, 13895*i[1]-92*i[1]*i[2]-2669*i[2]-15*i[1]*i[3]+20*i[1]*i[4]-2050*i[4]+687*i[2]*i[3]-867*i[2]*i[4]+40*i[3]*i[4]-451* (i[1])^2+691* (i[2])^2-487* (i[3])^2+1051* (i[4])^2 >= 99655.0)
@NLconstraint(m, e162, 13895*i[1]-92*i[1]*i[2]-2669*i[2]-15*i[1]*i[3]+20*i[1]*i[4]-2050*i[4]+687*i[2]*i[3]-867*i[2]*i[4]+40*i[3]*i[4]-451* (i[1])^2+691* (i[2])^2-487* (i[3])^2+1051* (i[4])^2 >= 99655.0)
@NLconstraint(m, e163, 13895*i[1]-92*i[1]*i[2]-2669*i[2]-15*i[1]*i[3]+20*i[1]*i[4]-2050*i[4]+687*i[2]*i[3]-867*i[2]*i[4]+40*i[3]*i[4]-451* (i[1])^2+691* (i[2])^2-487* (i[3])^2+1051* (i[4])^2 >= 99655.0)
@NLconstraint(m, e164, 13895*i[1]-92*i[1]*i[2]-2669*i[2]-15*i[1]*i[3]+20*i[1]*i[4]-2050*i[4]+687*i[2]*i[3]-867*i[2]*i[4]+40*i[3]*i[4]-451* (i[1])^2+691* (i[2])^2-487* (i[3])^2+1051* (i[4])^2 >= 99655.0)
@NLconstraint(m, e165, 13895*i[1]-92*i[1]*i[2]-2669*i[2]-15*i[1]*i[3]+20*i[1]*i[4]-2050*i[4]+687*i[2]*i[3]-867*i[2]*i[4]+40*i[3]*i[4]-451* (i[1])^2+691* (i[2])^2-487* (i[3])^2+1051* (i[4])^2 >= 99655.0)
@NLconstraint(m, e166, 13895*i[1]-92*i[1]*i[2]-2669*i[2]-15*i[1]*i[3]+20*i[1]*i[4]-2050*i[4]+687*i[2]*i[3]-867*i[2]*i[4]+40*i[3]*i[4]-451* (i[1])^2+691* (i[2])^2-487* (i[3])^2+1051* (i[4])^2 >= 99655.0)
@constraint(m, e167, i[1] >= 14.0)
@constraint(m, e168, i[1] <= 16.0)
@constraint(m, e169, i[2] >= 1.0)
@constraint(m, e170, i[2] <= 3.0)
@constraint(m, e171, i[3] >= 1.0)
@constraint(m, e172, i[3] <= 3.0)
@constraint(m, e173, i[4] >= 1.0)
@constraint(m, e174, i[4] <= 3.0)


# ----- Objective ----- #
@objective(m, Min, x[5])

 
