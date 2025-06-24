class ToDoList
  include Enumerable

  def initialize(array = [])
    @items = array
  end

  def each
    @items.each { |item| yield(item) }
  end

  def <<(item)
    @items.unshift item
    self
  end
end

list = ToDoList.new(["dishes", "nap", "laundry"])

puts
puts "First: " + list.first
puts
puts "Longest: " + list.find { |item| item.length > 6 }
puts
puts "Original list:"
puts list.map { |item| "> #{item.capitalize}" }

list << "sweep"
puts
puts "Updated list:"
puts list.map { |item| "> #{item.capitalize}" }

puts
puts "Sorted:"
list.sort.each_with_index do |item, i|
  puts "#{i + 1}: #{item}"
end
puts
