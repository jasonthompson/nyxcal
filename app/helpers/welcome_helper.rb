module WelcomeHelper
  def machinize_date(date)
    date.rfc3339
  end

  def humanize_date(date)
    date.strftime("%B %-d, %Y")
  end
end
