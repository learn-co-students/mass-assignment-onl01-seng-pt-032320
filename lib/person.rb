# Person
#   a longer list of attributes
#     will assign an arbitrary number of properties on initialization


class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
  :weight, :handed, :complexion, :t_shirt_size,
  :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(name:, birthday:, hair_color:, eye_color:, height:, weight:,
    handed:, complexion:, t_shirt_size:, wrist_size:, glove_size:, pant_length:,
    pant_width:)
    @name = name
    @birthday = birthday
    @hair_color = hair_color
    @eye_color = eye_color
    @height = height
    @weight = weight
    @handed = handed
    @complexion = complexion
    @t_shirt_size = t_shirt_size
    @wrist_size = wrist_size
    @glove_size = glove_size
    @pant_length = pant_length
    @pant_width = pant_width
  end

  # a different, shorter list of attributes
  #   will also assign an arbitrary number of properties on initialization

  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="),value)}
  end

end


bob_attributes = {name: "Bob", hair_color: "Brown"}

bob = Person.new(bob_attributes)
bob.name       # => "Bob"
bob.hair_color # => "Brown"

susan_attributes = {name: "Susan", height: "5'11\"", eye_color: "Green"}

susan = Person.new(susan_attributes)
susan.name      # => "Susan"
susan.height    # => "5'11""
susan.eye_color # => "Green"
