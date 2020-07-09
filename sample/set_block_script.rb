def create(w)
  script do
    i = 0

    (20..40).each do |x|
      (0...5).each do |y|
        set_block(x, 18 - y, 3, i)
        i += 1
        wait w
      end
    end
  end
end

def clear
  (20..40).each do |x|
    (0...5).each do |y|
      set_block(x, 18 - y, 3, 0)
    end
  end
end
