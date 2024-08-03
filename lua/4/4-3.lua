local function insert(str, index, istr)
    return string.sub(str, 1, index - 1) .. istr .. string.sub(str, index, #str)
end

print(insert("hello world", 1, "start: "))
print(insert("hello world", 7, "small "))
