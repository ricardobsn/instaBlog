module PostagemsHelper
  def post_date(date)
    # formatting date: 31, Aug 2007 - 9:55PM
    date.strftime("em %m, %b %Y - %H:%M")
  end
end
