module ApplicationHelper
  def show_more(resources)
    yield if block_given?
  end
end
