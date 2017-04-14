def calc(x)
  (x * x * Math::PI).round(0)
end 

def calc_with(input, output = $stdout)
  input.read.split("\n").each do |x|
    output.puts calc(x.to_f)
  end
end
