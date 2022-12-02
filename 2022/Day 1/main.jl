module Day1
  open("input.txt") do f
    l = [i for i in split(replace(read(f, String), "\r" => ""), "\n")]
    c = 0
    ls = []

    for i in l
      if !isempty(i)
        c += parse(Int64, i)
        continue
      end

      push!(ls, c)
      c = 0
    end

    sort!(ls)

    println("Part 1: ", ls[end])
    println("Part 2: ", +(ls[end], ls[end - 1], ls[end - 2]))
  end
end
