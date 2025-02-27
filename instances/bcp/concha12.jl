using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -10000.0)
set_upper_bound(x[1], 10000.0)
set_lower_bound(x[2], -10000.0)
set_upper_bound(x[2], 10000.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (1-x[1])^2+ (1-x[1])^2+ (3-x[1]-0.693147180559945*x[2])^2+ (4-x[1]-1.09861228866811*x[2])^2+ (7-x[1]-1.38629436111989*x[2])^2+ (11-x[1]-1.6094379124341*x[2])^2+ (18-x[1]-1.79175946922805*x[2])^2+ (29-x[1]-1.94591014905531*x[2])^2+ (47-x[1]-2.07944154167984*x[2])^2+ (76-x[1]-2.19722457733622*x[2])^2+ (123-x[1]-2.30258509299405*x[2])^2+ (199-x[1]-2.39789527279837*x[2])^2+ (322-x[1]-2.484906649788*x[2])^2+ (521-x[1]-2.56494935746154*x[2])^2+ (843-x[1]-2.63905732961526*x[2])^2+ (1364-x[1]-2.70805020110221*x[2])^2+ (2207-x[1]-2.77258872223978*x[2])^2+ (3571-x[1]-2.83321334405622*x[2])^2+ (5778-x[1]-2.89037175789616*x[2])^2+ (9529-x[1]-2.94443897916644*x[2])^2+ (15307-x[1]-2.99573227355399*x[2])^2+ (24836-x[1]-3.04452243772342*x[2])^2)+x[3] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[3])

 
