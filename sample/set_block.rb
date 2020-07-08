# /load sample/set_block.rb

# (-205..-195).each {|x| (13..23).each {|y| set_block(x, y, -30, 4) } }
# (-205..-195).each {|x| (13..23).each {|y| set_block(x, y, -30, 0) } }

# (-200..200).each do |x|
#   (-100..100).each do |y|
#     (-40..-20).each do |z|
#       set_block(x, y, z, 0)
#     end
#   end
# end

i = 0

(20..40).each do |x|
  (0...5).each do |y|
    set_block(x, 18 - y, 3, i)
    i += 1
  end
end