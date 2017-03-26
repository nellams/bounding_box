require_relative 'bounding_box'

class BoundingArea
  def initialize(bounding_area)
    @bounding_area = bounding_area
  end

  def boxes_contain_point?(x, y)
    if @bounding_area.empty?
      false
    else !@bounding_area.empty?
      @bounding_area.any? do |box|
        if box.contains_point?(x, y)
          true
        else !box.contains_point?(x, y)
          false
        end
      end
    end
  end
end
