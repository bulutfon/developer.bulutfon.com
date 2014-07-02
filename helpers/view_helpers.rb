module ViewHelpers
  def page(title)
    content_for :title do
      title
    end
  end
end