module Jekyll
    class HeroTag < Liquid::Tag
        def initialize(tag_name, text, tokens)
            super
            image, @alt = text.split(/ /, 2)
			@image = image.gsub(/\.\.\//, '')
        end

        def render(context)
            baseurl = context.registers[:site].config['baseurl']
            "<img class=\"hero\" src=\"#{baseurl}/resources/post-assets/#{@image}\" alt=\"#{@alt}\">"
        end
    end

	class BugTag < Liquid::Tag
        def initialize(tag_name, text, tokens)
            super
            @id = text.strip
        end

        def render(context)
            baseurl = context.registers[:site].config['baseurl']
            "<a href=\"#{baseurl}/bugs/show_bug.cgi?id=#{@id}\">##{@id}</a>"
        end
	end
end

Liquid::Template.register_tag('hero', Jekyll::HeroTag)
Liquid::Template.register_tag('bug', Jekyll::BugTag)
