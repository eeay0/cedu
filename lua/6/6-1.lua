local function print_list(...)
    for _, v in ipairs(...) do
        print(v)
    end
end

print_list({ "a", "b", "c", "d" })
