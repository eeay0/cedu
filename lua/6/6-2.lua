local function except_first(...)
    local args = { ... }
    local output = {}
    for i = 2, #args do
        table.insert(output, args[i])
    end

    return table.unpack(output)
end

local test_table = {
    1,
    2,
    3,
    4,
    5,
}

for _, v in ipairs({ except_first(table.unpack(test_table)) }) do
    print(v)
end
