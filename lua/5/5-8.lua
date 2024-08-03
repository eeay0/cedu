local function table_concat(t, s)
    local concat = ""
    local sep = s or ""
    for i, value in ipairs(t) do
        if i > 1 then concat = concat .. sep end
        concat = concat .. value
    end
    return concat
end

-- Function to measure the time taken by a function
local function measure_time(func, t)
    local start_time = os.clock()
    func(t)
    return os.clock() - start_time
end

-- Generate a large list of strings
local test_table = {}
for i = 1, 10000 do
    table.insert(test_table, "test ")
end

-- Measure performance of custom table_concat
local custom_time = measure_time(table_concat, test_table)
print("Custom concat time: " .. custom_time)

-- Measure performance of built-in table.concat
local built_in_time = measure_time(table.concat, test_table)
print("Built-in concat time: " .. built_in_time)
