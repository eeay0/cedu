local function read_file_content(file_path)
    local file = assert(io.open(file_path, "r"), "Could not open file for reading")
    local content = {}
    for line in file:lines() do
        table.insert(content, line)
    end
    file:close()
    return content
end

local function write_content_file(file_path, content)
    local file = assert(io.open(file_path, "w"), "Could not open file for writing")
    for _, v in ipairs(content) do
        file:write(v .. "\n")
    end
    file:close()
end

local function read_stdin()
    local content = {}

    for line in io.stdin:lines() do
        if line ~= " " or line ~= "\n" then table.insert(content, line) end
    end

    return content
end

local function write_stdout(content)
    for _, v in ipairs(content) do
        print(v)
    end
end

-- ================= FUNCTIONS ================= --

local read_file = "/home/eeay/src/cedu/lua/7/fruit_vegetable_list.txt"

if #arg == 0 then
    local content = read_stdin()
    table.sort(content)
    write_stdout(content)
elseif #arg == 1 then
    read_file = arg[1]
    local content = read_file_content(read_file)
    table.sort(content)
    write_stdout(content)
elseif #arg == 2 then
    read_file = arg[1]
    local write_file = arg[2]
    local content = read_file_content(read_file)
    table.sort(content)
    write_content_file(write_file, content)
end
