module Day1
  open("input.txt") do f
    l = [i for i in split(read(f, String), "\n")]
    global c = 0
    ls = []

    for i in l
      if !isempty(i)
        global c += parse(Int64, i)
        continue
      end

      push!(ls, c)
      global c = 0
    end

    sort!(ls)

    println("Part 1: ", ls[end])
    println("Part 2: ", +(ls[end], ls[end - 1], ls[end - 2]))
  end
end
