module ListingsHelper

    # capitalise every word in a string
  def format_condition(condition)
    arr = condition.split('_').map do |word|
      word.capitalize
    end
    arr.join(' ')
  end

  # format price
  def format_price(price)
    "$#{price/ 100.0}"
  end

  #formats date and converts from UTC to melbourne time
def format_date(date)
  format = date.in_time_zone('Australia/Melbourne')
  format.strftime("%d %b, %Y")
end

end



