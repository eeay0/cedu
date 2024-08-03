local function is_table_valid(table)
    local n = #table
    for i = 1, n do
        if table[i] == nil then return false end
    end
    return true
end

local t1 = {
    1,
    2,
    3,
    4,
    5,
}

local t2 = {
    1,
    nil,
    2,
    3,
    4,
    5,
}

print(is_table_valid(t1))
print(is_table_valid(t2))
