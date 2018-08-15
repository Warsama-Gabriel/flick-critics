module ApplicationHelper

	def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: all_reviews_path,
        title: 'Reviews'
      },
      {
        url: all_movies_path,
        title: 'Movies'
      },
      {
        url: about_path,
        title: 'About'
      }
    ]
  end



  def nav_helper style, tag_type
    nav_links = ''
    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end
    nav_links.html_safe #interpret the html before rendering it on the screen.
  end

  def active? path
    "active" if current_page?(path)
  end
end
