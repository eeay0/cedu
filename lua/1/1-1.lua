function fact(n)
    if n == 0 then
        return 1
    else if n < 0 then
        return "Negative numbers can't have a factorial."
    end
        return n * fact(n - 1)
    end
end

print("enter a number:")
a = io.read("*n") -- reads a number
print(fact(a))
