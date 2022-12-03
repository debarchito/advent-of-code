module Day3
  open("input.txt") do f
    ls = filter(!isempty, [i for i in split(replace(read(f, String), "\r" => ""), "\n")])
    t = 0

    for i in ls
      l = div(length(i), 2)
      a = i[begin:l]
      b = i[l+1:end]
      j = (a ∩ b)[1]
      
      if j >= 'a'
        t += Int(j) - Int('a') + 1
      else
        t += Int(j) - Int('A') + 27
      end
    end

    println("Part 1: ", t)

    ls = permutedims(reshape(ls, (3, :)))

    t = 0

    for row in eachrow(ls)
      j = (row[1] ∩ row[2] ∩ row[3])[1]

      if j >= 'a'
        t += Int(j) - Int('a') + 1
      else
        t += Int(j) - Int('A') + 27
      end
    end

    println("Part 2: ", t)
  end
end
