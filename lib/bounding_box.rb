class BoundingBox
  attr_reader :width, :height
  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
  end

  def left
    @x
  end

  def right
    @x + @width
  end

  def bottom
    @y
  end

  def top
    @y + @height
  end

  def contains_point?(x, y)
    if x >= @x && x <= (@x + @width)
      if y >= @y && y <= (@y + @height)
        true
      else
        false
      end
    else
      false
    end
  end
end

# The BoundingBox class should have the following instance methods:
#
# width returns the width of the box.
# height returns the height of the box.
# left returns the left edge of the box.
# right returns the right edge of the box.
# top returns the top edge of the box.
# bottom returns the bottom edge of the box.
# contains_point?(x, y) returns true if the given (x, y) coordinate is within the box.
