module Jekyll
    class InlineGalleryTag < Liquid::Tag
        def initialize(tag_name, text, tokens)
            super
			@name = tag_name
			@cols = text.to_i
        end

        def render(context)
			if @name == "endgallery"
				"</section>"
			else
				"<section class=\"inline-gallery\"" + (@cols > 0 ? " style=\"column-count: #{@cols};\"" : "") + ">"
			end
        end
    end
    class InlineImageTag < Liquid::Tag
        def initialize(tag_name, text, tokens)
            super
            @image, @alt = text.split(/ /, 2)
        end

        def render(context)
            baseurl = context.registers[:site].config['baseurl']
            "<figure>
				<a href=\"#{baseurl}/assets/#{@image}\"><img src=\"#{baseurl}/assets/#{@image}\"></a>
				<figcaption>#{@alt}</figcaption>
			</figure>"
        end
    end
end

Liquid::Template.register_tag('gallery', Jekyll::InlineGalleryTag)
Liquid::Template.register_tag('endgallery', Jekyll::InlineGalleryTag)
Liquid::Template.register_tag('galimage', Jekyll::InlineImageTag)
