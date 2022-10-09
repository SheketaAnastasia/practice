def check str
  stack = []
  str.split(//).each do |c|
    if '{[('.include? c
      stack.push c
    elsif '}])'.include? c
      return false if c != stack.pop.tr('{[(','}])')
    end
  end
  true
end

str = STDIN.gets.chomp.encode('UTF-8')

puts check(str)
