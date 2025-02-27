
# New comment from Kyle Burt

###############################################
### Automobile Power Generation Function ###

# Description: Calculate power needed to move a car at a given speed
# Inputs:
    # m: mass of car (kg)
    # V: velocity of car (m/s)
    # A: surface area of car (M=m^2)
# Parameters
    # crolling: rolling resistive coefficient (default = 0.015)
    # c_drag: drag resistive coefficient (default = 0.3)
    # g: acceleration due to gravity (default = 9.8 m/s^2)
    # p_air: density of air (default = 1.2 kg/m^3)

###############################################

# define function
auto_power_generation = function(crolling=0.015, m, g = 9.8, V, A, p_air = 1.2, c_drag=0.3){
  Pb = crolling * m * g * V + 0.5 * A * p_air * c_drag * V^3
  
  return(Pb)
}





