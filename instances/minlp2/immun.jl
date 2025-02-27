using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
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
set_upper_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[1], 187217.324724184)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (-x[16])^2+ (50000-x[17])^2+ (42000-x[18])^2+ (40000-x[19])^2+ (40000-x[20])^2+ (45000-x[21])^2)+objvar == 0.0)
@constraint(m, e2, -x[10]-x[16] == 0.0)
@constraint(m, e3, 1044.80727456326*x[2]+1079.40354193291*x[3]+74.5442033113223*x[4]+36.3324688408125*x[5]+41.3438438533384*x[6]+43.2231094830356*x[7]+43.8495313596014*x[8]+59.5100782737447*x[9]+1.00940093153723*x[10]-x[11]-x[17] == 0.0)
@constraint(m, e4, 75.57763951196*x[4]+36.8361604344007*x[5]+41.9170101494904*x[6]+43.8223287926491*x[7]+44.4574350070353*x[8]+60.3350903666908*x[9]+1.0391091639109*x[11]-x[12]-x[18] == 0.0)
@constraint(m, e5, 75.456505608033*x[4]+36.7771203803858*x[5]+41.8498266397494*x[6]+43.7520914870108*x[7]+44.3861797694312*x[8]+60.2383868299423*x[9]+1.02284761238063*x[12]-x[13]-x[19] == 0.0)
@constraint(m, e6, 1167.30216560492*x[4]+74.4548991299823*x[5]+84.7245403892903*x[6]+88.5756558615307*x[7]+89.8593610189442*x[8]+121.951989954281*x[9]+1.05*x[13]-x[14]-x[20] == 0.0)
@constraint(m, e7, 1115.8195763046*x[5]+1126.3428356729*x[6]+134.503508270593*x[7]+136.452834477414*x[8]+185.185989647919*x[9]+1.07600174350434*x[14]-x[15]-x[21] == 0.0)
@constraint(m, e8, x[1]-40.9351218608642*x[2]-43.2018652628815*x[3]-45.3473311101868*x[4]-39.805625287987*x[5]-41.3125769494053*x[6]-41.8781498541141*x[7]-42.1403213448084*x[8]-46.6038914670337*x[9] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
