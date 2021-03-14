module ApplicationHelper
  def show_svg(path)
    File.open("app/assets/images/#{path}", "rb") do |file|
      raw file.read
    end
  end

  def format_date(date)
    if date
      date.strftime("%d/%m/%Y")
    else
      ""
    end
  end
end
