module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
  	base_title = "Blossom Cofee Data Collection App"
  	if page_title.empty?
  		base_title
  	else
  		"#{base_title} | #{page_title}"
  	end
  end

  def to_time_string(time)
  	time = time.in_time_zone('Pacific Time (US & Canada)')
  	timestring = ""
  	if time.hour > 12
  		hour = time.hour - 12
  		timestring += hour.to_s + ":"
  		if time.min < 10
  			timestring += "0" + time.min.to_s + " p.m."
  		else
  			timestring += time.min.to_s + " p.m."
  		end
  	elsif time.hour == 12
  		timestring +=  "12:"
  		if time.min < 10
  			timestring += "0" + time.min.to_s + " p.m."
  		else
  			timestring += time.min.to_s + " p.m."
  		end
  	elsif time.hour == 0
  		timestring += "12:"
  		if time.min < 10
  			timestring += "0" + time.min.to_s + " a.m."
  		else
  			timestring += time.min.to_s + " a.m."
  		end
  	else
  		timestring += time.hour.to_s + ":"
  		if time.min < 10
  			timestring += "0" + time.min.to_s + " a.m."
  		else
  			timestring += time.min.to_s + " a.m."
  		end
  	end
  	timestring += " on " + time.month.to_s+"/"+time.day.to_s+" "
  end
end