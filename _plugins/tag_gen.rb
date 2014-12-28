module Jekyll
    class TagIndex < Page
        def initialize(site, base, dir, tag, data)
            @data = data
            super(site, base, File.join(dir, tag.sub(/ /, '-')), 'index.html')
        end

        def read_yaml(*)
            # No YAML to be read
        end
    end
    class TagGenerator < Generator
        safe true
        def generate(site)
            @site = site
            site.tags.each { |tag, posts| generate_tag(tag, posts) }
        end

        def generate_tag(tag, posts)
            data = { 'layout' => 'tag_index', 'posts' => posts.sort.reverse!, 'tag' => tag }
            @site.pages << TagIndex.new(@site, @site.source, 'tag', tag, data)
        end
    end
end
