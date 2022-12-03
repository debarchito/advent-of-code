module Day2
  open("input.txt", "r") do f
    ls = filter(!isempty, [i for i in split(replace(read(f, String), "\r" => ""), "\n")])
    mp = Dict(
      "A" => 0, "B" => 1, "C" => 2,
      "X" => 0, "Y" => 1, "Z" => 2,
    )
    ky = [1, 2, 3]
    sc = 0

    for i in ls
      opp, me = [mp[j] for j in split(i, " ")]
      sc += (mod(me - opp, 3) == 1 ? 6 : me == opp ? 3 : 0) + ky[me + 1]
    end

    println("Part 1: ", sc)

    sc = 0

    merge!(mp, Dict("X" => -1, "Y" => 0, "Z" => 1))

    for i in ls
      opp, res = [mp[j] for j in split(i, " ")]
      sc += (res + 1) * 3 + ky[mod(opp + res, 3) + 1] 
    end

    println("Part 2: ", sc)
  end
end
