io.write("Height: ")
local h = io.read("*n")

io.write("Angle (in degrees): ")
local a = io.read("*n")

local rad = math.rad(a)

local s = h / math.cos(rad)

local r = s * math.sin(rad)

local v = (1 / 3) * math.pi * r * r * h

io.write("\nVolume: ")
io.write(v)
io.write("\n")
