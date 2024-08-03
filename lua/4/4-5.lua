local function remove(str, index, count) return string.sub(str, 1, index - 1) .. string.sub(str, index + count, #str) end
print(remove("hello world", 7, 4))
