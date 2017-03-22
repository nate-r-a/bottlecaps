class Bottlecap < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :cap_details, :drink_details
  
  before_create do
    self.drink_detail_list.add(self.drink, self.brand, self.parent)
  end
  
  def is_complete?
    [self.brand, self.parent].include?(nil) ? false : true
  end
  
end
