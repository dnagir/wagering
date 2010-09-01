module ApplicationHelper
  def caption(title, header = title)
    @title, @header = title, header
  end
end
