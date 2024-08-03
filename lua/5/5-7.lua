local function insert_table(source_list, position, target_list)
    local count = 0
    for _, value in ipairs(source_list) do
        table.insert(target_list, position + count, value)
        count = count + 1
    end
end

local list1 = {
    "element1",
    "element2",
    "element3",
    "element4",
    "element5",
    "element6",
}

local list2 = {
    "inserted element 1",
    "inserted element 2",
    "inserted element 3",
    "inserted element 4",
}

insert_table(list2, 2, list1)

for index, value in ipairs(list1) do
    print(index, value)
end
