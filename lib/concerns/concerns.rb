module Concerns::Findable
  def find_by_name(name)
    @@all.find { |song| song.name == name }
  end
end
