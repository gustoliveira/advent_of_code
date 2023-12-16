example_input = <<-EOF
1abc2
pqr3stu8vwx
a1b2c3d4e5f
treb7uchet
EOF


def calcuateCalibration(input)
  sum = 0
  input.each_line do |line|
    digits = line.scan(/\d+/)
    numerical = (digits.first.chars.first + digits.last.chars.last).to_i
    sum += numerical
  end
  return sum
end

sum = calcuateCalibration(example_input)
puts 'Example: ' + sum.to_s

file = File.open("part1_input.txt", "r")

sum = calcuateCalibration(file)
puts 'Input: ' + sum.to_s

