local function read_last_line(file_path, n)
    local file = assert(io.open(file_path, "r"), "Could not open file")
    local file_size = file:seek("end")
    local new_line = false
    local first_new_line = true
    local line = ""
    local line_count = 0
    local lines = {}

    for i = file_size - 1, 0, -1 do
        file:seek("set", i)
        local char = file:read(1)

        if char == "\n" then
            if first_new_line then
                goto continue
            elseif new_line then
                line_count = line_count + 1
                table.insert(lines, line)
                new_line = false
            end
        end
        line = char .. line
        ::continue::
    end

    return lines
end

local file_path = ""

if #arg == 0 then
    file_path = "/home/eeay/src/cedu/lua/7/fruit_vegetable_list.txt"
    local lines = read_last_line(file_path, 0)
    for _, line in ipairs(lines) do
        io.write(line)
    end
elseif #arg == 1 then
    file_path = arg[1]
    local lines = read_last_line(file_path, 0)
    for _, line in ipairs(lines) do
        io.write(line)
    end
elseif #arg == 2 then
    file_path = arg[1]
    local n = tonumber(arg[2])
    local lines = read_last_line(file_path, n)
    for _, line in ipairs(lines) do
        io.write(line)
    end
end
