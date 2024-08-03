local function ispali(str)
    return string.gsub(str, "[^%w]", ""):lower() == string.reverse(string.gsub(str, "[^%w]", ""):lower())
end

print(ispali("step on no. pets"))
print(ispali("banana"))
