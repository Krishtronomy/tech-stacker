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
end
