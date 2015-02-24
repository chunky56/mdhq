def factorial(x)
  return -1 unless x >= 0
  x < 2 ? 1 : (2..x).inject(1, :*)
end
