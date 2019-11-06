def find_outlier(integers)
 (integers.first(3).count { |int| int.even? } <= 1) ? integers.find { |int| int.even? } : integers.find { |int| int.odd? }
end
