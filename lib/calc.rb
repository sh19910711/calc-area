def calc(x)
  (x * x * Math::PI).round(0)
end 

def calc_with_input(input, output)
  input.read.split("\n").each do |x|
    output.puts calc(x.to_f)
  end
end
