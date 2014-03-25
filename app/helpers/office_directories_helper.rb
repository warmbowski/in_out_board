module OfficeDirectoriesHelper
  
  def next_morning 
    (Date.today + 1.day) + 8.hours
  end
  
  
  def full_name_title (fullname, title)
    if title
      fullname + " - " + title
    else
      fullname
    end
  end
  
  
  # def returning_language(return)
  #   distance_of_time_in_words(return,Time.now)
  # end
  
end
