class Geo
  CITIES = [
    "SP",
    "RJ",
    "DF",
    "BA",
    "CE",
    "MG",
    "AM",
    "PR",
    "PE",
    "RS"
  ]

  DISTANCES = [
    [0,   429,  1015, 1962, 3127, 586,  3971, 408,  2660, 1109],
    [-1,  0,    1148, 1209, 2805, 434,  4374, 852,  2338, 1553],
    [-1,  -1,   0,    1060, 1687, 716,  1932, 1081, 1657, 1619],
    [-1,  -1,   -1,   0,    1028, 1372, 5009, 2385, 839,  3090],
    [-1,  -1,   -1,   -1,   0,    1893, 5763, 2670, 800,  4242],
    [-1,  -1,   -1,   -1,   -1,   0,    3951, 1004, 2061, 1712],
    [-1,  -1,   -1,   -1,   -1,   -1,   0,    2734, 5698, 4563],
    [-1,  -1,   -1,   -1,   -1,   -1,   -1,   0,    3078, 711],
    [-1,  -1,   -1,   -1,   -1,   -1,   -1,   -1,   0,    2977],
    [-1,  -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   0]
  ]

  def self.get_distance(index_a, index_b)
    distance = DISTANCES[index_a][index_b]
    return get_distance(index_b, index_a) if distance < 0
    distance
  end

  def self.get_name(index)
    return CITIES[index]
  end
end
