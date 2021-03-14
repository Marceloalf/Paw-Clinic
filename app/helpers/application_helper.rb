module ApplicationHelper
  def show_svg(path)
    File.open("app/assets/images/#{path}", "rb") do |file|
      raw file.read
    end
  end

  def format_date(date)
    date.strftime("%d/%m/%Y")
  end
end
