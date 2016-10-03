def rec_intersection(rect1, rect2)
    intersection = []
    left_point = []
    right_point = []
    left_x1 = 0
    left_y1 = 0
    right_x2 = 0
    right_y2 = 0

    if rect1[0][0] >= rect2[0][0]
      left_x1 = rect1[0][0]
    else
      left_x1 = rect2[0][0]
    end
    if rect1[0][1] >= rect2[0][1]
      left_y1 = rect1[0][1]
    else
      left_y1 = rect2[0][1]
    end
    if rect1[1][0] <= rect2[1][0]
      right_x2 = rect1[1][0]
    else
      right_x2 = rect2[1][0]
    end
    if rect1[1][1] <= rect2[1][1]
      right_y2 = rect1[1][1]
    else
      right_y2 = rect2[1][1]
    end
    return rect1 if (rect2[0][0] < rect1[0][0] && rect2[0][1] < rect1[0][1]) == true && (rect2[1][0] > rect1[1][0] && rect2[1][1] > rect1[1][1]) == true
    return nil if left_x1 == left_y1 && right_x2 == right_y2
    left_point << left_x1
    left_point << left_y1
    right_point << right_x2
    right_point << right_y2
    intersection << left_point
    intersection << right_point
    intersection
end

=begin ******* A more consolidated solution, look at how it was done.

def rec_intersection(rect1, rect2)
  x_min = [rect1[0][0], rect2[0][0]].max #[0,1].max == 1
  x_max = [rect1[1][0], rect2[1][0]].min #[2,3].min == 2

  y_min = [rect1[0][1], rect2[0][1]].max #[0,0].max == 0
  y_max = [rect1[1][1], rect2[1][1]].min #[1,1].max == 1

  return nil if ((x_max < x_min) || (y_max < y_min)) #if 2 < 1 OR 1 < 0 return nil cause there is no intersection point.
  return [[x_min, y_min], [x_max, y_max]]
end      #  [  1 ,  0  ],  [   2,   1  ]

#ex : def rec_intersection( [[0, 0], [2, 1]], [[1, 0], [3, 1]]) #--->intersection point is [[1,0], [2,1]]
=end
