local string = "<![CDATA[\nHello world\n]]>"

local string_multiline = [===[
<![CDATA[
  Hello world
]]>
]===]

print(string)
print(string_multiline)
