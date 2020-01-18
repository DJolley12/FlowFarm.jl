include("turbines.jl")
import YAML
import Base.Filesystem

abstract type AbstractFileType end

struct InputReader
    data_path:: String
    read_path:: String
    write_path:: String
end

struct YAMLFileType <: AbstractFileType
end

function read_file()
    data = YAML.load_file(open(InputReader.read_path))
    println(data)
end

function write_to_file()
    YAML.write_file(InputReader.write_path, InputReader.data_path)
end

file_type = YAMLFileType
reader = InputReader("D:\\source\\WindFarmCode\\Julia\\FlowFarm.jl\\test\\format_file.data", "D:\\source\\WindFarmCode\\Julia\\FlowFarm.jl\\test\\wind_turbine.yml","D:\\source\\WindFarmCode\\Julia\\FlowFarm.jl\\test\\wind_turbine.yml")
w = write_to_file()
r = read_file()