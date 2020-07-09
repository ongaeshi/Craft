@@scripts = []
@@drawers = []

def script(&block)
  @@scripts.push(Fiber.new { block.call })
end

def draw(&block)
  @@drawers.push(block)
end

def run
  @@scripts.each do |e|
    e.resume if e.alive?  # TODO: Remove end fiber
  end

  @@drawers.each do |e|
    e.call
  end
end

def wait(wait = 1)
  1.upto(wait) do |e|
    yield e if block_given?
    Fiber.yield
  end
end
