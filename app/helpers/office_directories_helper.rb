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
  
  def choose_random_idiom
    work_idiom = ["on duty",
      "the doctor is in",
      "getting down to brass tacks",
      "hanging in there",
      "nose to the grindstone",
      "busy as a bee",
      "firing on all cylinders",
      "carrying on",
      "burning the midnight oil",
      "burning the candle at both ends",
      "all systems are go",
      "going the extra mile",
      "pulling my weight",
      "buckling down",
      "working my tail off",
      "rolling up my sleeves"]
      return work_idiom.sample
  end
    
  
end
