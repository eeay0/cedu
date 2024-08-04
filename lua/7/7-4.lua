local file_path = ""

if #arg == 0 then
    file_path = "/home/eeay/src/cedu/lua/7/fruit_vegetable_list.txt"
elseif #arg == 1 then
    file_path = arg[1]
end

local file = assert(io.open(file_path, "r"), "Could not open file")
local file_size = file:seek("end")
local first_new_line = false
local line = ""

for i = file_size - 1, 0, -1 do
    file:seek("set", i)
    local char = file:read(1)

    if char == "\n" then
        if not first_new_line then
            first_new_line = true
            goto continue
        elseif first_new_line then
            break
        end
    end
    ::continue::
    line = char .. line
end

print(line)
