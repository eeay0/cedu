local function ispali(str)
    return str == string.reverse(str)
end

print(ispali("step on no pets"))
print(ispali("banana"))
