family ={
    sisters: ["s1","s2","s3"],
    brothers: ["b1","b2","b3"],
    uncles: ["u1","u2","u3"],
    aunts: ["a1","a2","a3"]
}

p family [:sisters]

#inm_fam = family[:brothers] + family[:sisters]
imfamily_members = family.select do |key,value| 
# key == :sisters || key == :brothers
if key == :sisters 
    family[key]
elsif key == :brothers  
    family[key]
end
end
p imfamily_members.values.flatten