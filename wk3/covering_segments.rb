num = gets.chomp.to_i
segments = []

num.times do
  segment = gets.chomp
  segments << segment.split.map{|x| x.to_i}
end


def min_covering_segments(segments)
  nSegments = segments.length
  sorted = sort_segments(segments)
  points = []

  _, r = sorted[0]
  points << r

  (1...nSegments).each do |i|
    nPoints = points.length
    if sorted[i][0] > points[nPoints - 1]
      points << sorted[i][1]
    end
  end
  return [points.length, points]
end

def sort_segments(segments)
  sorted = segments.sort_by do |seg|
    _, r = seg
    r
  end
  sorted
end

nPoints, points = min_covering_segments(segments)

puts nPoints
puts points.join(" ")
