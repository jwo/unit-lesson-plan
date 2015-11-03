[
  "Gitting Started",
  "Gitting your code onto GitHub",
  "Gitting along with others"
].each_with_index do |name, i|
  Unit.create! name: name, unit_order: i
end
