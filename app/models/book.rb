class Book < ActiveRecord::Base

  scope :finished,->{where.not(finished_on: nil)}
  #scope :recent,->{where('finished_on > ?', 2.days.ago)}

  #"recent" scope implementation is...

  scope :search,->(keyword){where(title: keyword) if keyword.present?}

  #The difference btw scope and class method is that scope always returns a collection.Scope will not return 'nil'.

  #def self.search(keyword)
   # if keyword.present?
    #  where(title: keyword)
    #else
     # all
    #end
 # end

  def self.recent
    where('finished_on > ?',2.days.ago)
  end

  def finished?
    finished_on.present?
  end
end
