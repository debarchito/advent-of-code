module Day3
  open("input.txt", "r") do f
    ls = filter(!isempty, [i for i in split(replace(read(f, String), "\r" => ""), "\n")])
    t = 0

    for i in ls
      l = div(length(i), 2)
      j = (i[begin:l] ∩ i[l+1:end])[1]
      t += Int(j) - (j >= 'a' ? Int('a') - 1 : Int('A') - 27)
    end

    println("Part 1: ", t)

    ls = permutedims(reshape(ls, (3, :)))
    t = 0

    for row in eachrow(ls)
      j = (row[1] ∩ row[2] ∩ row[3])[1]
      t += Int(j) - (j >= 'a' ? Int('a') - 1 : Int('A') - 27)
    end

    println("Part 2: ", t)
  end
end
