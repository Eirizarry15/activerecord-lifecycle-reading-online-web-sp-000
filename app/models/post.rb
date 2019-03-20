class Post < ActiveRecord::Base
 
  
 
  private
 
  def is_title_case
    if title.split.any?{|w|w[0].upcase != w[0]}
      errors.add(:title, "Title must be in title case")
    end
  end
 
  def make_title_case
    self.title = self.title.titlecase
  end
end