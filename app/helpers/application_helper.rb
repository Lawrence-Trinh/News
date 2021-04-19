module ApplicationHelper
    def full_title(page_title)
        base_title = "News+"
        if page_title.empty?
            base_title
        else
            "#{page_title} | #{base_title}"
        end
    end
    def owner?(object)
        current_user == object.user
    end
end