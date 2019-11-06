def find_it(seq)
  seq.find { |int| seq.count(int).odd? }
end
