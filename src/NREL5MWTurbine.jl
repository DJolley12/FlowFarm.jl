include("turbines.jl")

function get_turbine()
    coord = Coord(0.0,0.0,0.0)
    return nrel_5mw_turbine = Turbine(coord, 126.4, 90.0, 1/3, 2.5, 10.0, 0.8)
end

turbine = get_turbine()
println(turbine)

# NREL 5MW turbine)
# rotor diameter: 126.4 (m)
# Hub Height: 90.0 (m)
# cut_in_speed: 3.0  ( m/s)
# rated_power: 5000.0  (kW)
# generator_efficiency: 0.944