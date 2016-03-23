# Arrays
empty_array = []

colours = ['red', 'blue', 'green', 'yellow', 'chartreuse']
#            0      1        2        3           4

colours[3] # => 'yellow'
colours[0] # => 'red'

mixed_array = ['cats', 23, 'dogs', true]
mixed_array[3] # => true


# Hashes
empty_hash = {}

bttf = {
          :title => "Back to the Future",
          director: "Robert Zemeckis",
          year: 1985,
          genres: ["Action", "Adventure"]
        }

bttf[:title] # => "Back to the Future"
bttf[:year] # => 1985
