module StringFormat
  # Annotations:: For generate string format into slug format
  def to_slug
    value = self.mb_chars.normalize(:kd).gsub(/[^\x00-\x7F]/n, '').to_s
    value.gsub!(/[']+/, '')
    value.gsub!(/\W+/, ' ')
    value.strip!
    value.downcase!
    value.gsub(' ', '-')
  end
  
  def to_text
    value = self.gsub('&eacute;','é').gsub('&nbsp;', ' ').gsub('&nbsp;', ' ').gsub('&ndash;','-')
    CGI::unescapeHTML(ActionView::Base.full_sanitizer.sanitize(value))
  end
end

module CustomDate

  # Annotations:: For getting datetime format ("%d-%m-%Y")
  # +d+ : Today ex. 01,02,03,..,31
  # +m+ : Month ex. 01,02,..,12
  # +Y+ : Year ex. 2012,2013..
  def to_dmy
    self.strftime("%d-%m-%Y") rescue '-'
  end

  # Annotations:: For getting datetime format ("%d-%B-%Y")
  # +d+ : Today ex. 01,02,03,..,31
  # +b+ : Month ex. January,Febuary,...,Desember
  # +Y+ : Year ex. 2012,2013..
  def to_dby
    self.strftime("%d-%B-%Y") rescue '-'
  end
  
  # Annotations:: For getting datetime format ("%d-%m-%Y")
  # +d+ : Today ex. 01,02,03,..,31
  # +m+ : Month ex. 01,02,..,12
  # +Y+ : Year ex. 2012,2013..
  def to_ymd
    self.strftime("%Y-%m-%d") rescue '-'
  end
end

module CustomDateTime

  # Annotations:: For getting datetime format ("%d-%m-%Y %H:%M")
  # +d+ : Today ex. 01,02,03,..,31
  # +m+ : Month ex. 01,02,..,12
  # +Y+ : Year ex. 2012,2013..
  # +H+ : Hours ex 1,2,3..12
  # +M+ : Minute ex 1,2,3..59
  def to_dmyhm
    self.strftime("%d-%m-%Y %H:%M") rescue '-'
  end

  # Annotations:: For getting datetime format ("%d-%m-%Y")
  # +d+ : Today ex. 01,02,03,..,31
  # +m+ : Month ex. 01,02,..,12
  # +Y+ : Year ex. 2012,2013..
  def to_dmy
    self.strftime("%d-%m-%Y") rescue '-'
  end
  
  # Annotations:: For getting date format ("%H:%M")
  # +H+ : Hours ex 1,2,3..12
  # +M+ : Minute ex 1,2,3..59
  def to_hm
    self.strftime("%H:%M") rescue '-'
  end
  
  # Annotations:: For getting date format ("%H:%M")
  # +H+ : Hours ex 1,2,3..12
  # +M+ : Minute ex 1,2,3..59
  # +S+ : Second ex 01,02,03..59
  def to_hms
    self.strftime("%H:%M:%S") rescue '-'
  end

  # Annotations:: For getting date format ("%Y-%m-%d %H:%M:%S")
  # +d+ : Today ex. 01,02,03,..,31
  # +m+ : Month ex. 01,02,..,12
  # +Y+ : Year ex. 2012,2013..
  # +H+ : Hours ex 01,02,03..12
  # +M+ : Minute ex 01,02,03..59
  # +S+ : Second ex 01,02,03..59
  def to_ymdhms
    self.strftime("%Y-%m-%d %H:%M:%S") rescue '-'
  end

  def to_dmyhms
    self.strftime("%d/%m/%Y %H:%M:%S") rescue '-'
  end

  def to_dby
    self.strftime("%d %b %Y") rescue '-'
  end

end

String.class_eval do
  include StringFormat
end

Date.class_eval do
  include CustomDate
end

DateTime.class_eval do
  include CustomDateTime
end

Time.class_eval do
  include CustomDateTime
end
