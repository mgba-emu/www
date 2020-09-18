module Jekyll
    class NavGenerator < Generator
        safe true
        def generate(site)
            @site = site
			print(@site.data['nav'])
			@site.data['nav'] ||= []
            site.pages.each { |page|
				if page.data['title'] and page.data['nav']
					@site.data['nav'] << page
				end
            }
        end
    end
end
