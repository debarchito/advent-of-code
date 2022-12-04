module Day4
  open("input.txt", "r") do f
    ls = filter(!isempty, [i for i in split(replace(read(f, String), "\r" => ""), "\n")])
    p1, p2 = 0, 0

    for i in ls
      l, r = split(i, ",")
      l1, r1 = split(l, "-")
      l2, r2 = split(r, "-")
      l1, r1, l2, r2 = [parse(Int, x) for x in [l1, r1, l2, r2]]
      p1 += (l1 <= l2 && r2 <= r1 || l2 <= l1 && r1 <= r2) ? 1 : 0
      p2 += !(r1 < l2 || l1 > r2) ? 1 : 0
    end

    println("Part 1: ", p1)
    println("Part 2: ", p2)
  end
end
