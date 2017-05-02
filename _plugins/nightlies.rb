module Jekyll
    class DownloadIndex < Page
        def initialize(site, base, dir, index, max_index, product, data)
            @data = {
                'layout' => 'download_index',
                'data' => data,
                'product' => product,
                'previous_page' => index > 1,
                'previous_page_path' => File.join(site.baseurl, dir, "#{index - 1}"),
                'page' => index,
                'total_pages' => max_index,
                'next_page' => index < max_index,
                'next_page_path' => File.join(site.baseurl, dir, "#{index + 1}")
            }
            super(site, base, File.join(dir, "#{index}"), 'index.html')
        end

        def read_yaml(*)
            # No YAML to be read
        end
    end
    class NightlyGenerator < Generator
        safe true
        @@page_size = 20

        def generate(site)
            @site = site
            (0..site.data['nightlies']['mGBA'].length / @@page_size).each { |i|
                generate_page(i + 1, 'nightlies', 'mGBA', site.data['nightlies']['mGBA'][i * @@page_size, @@page_size])
            }
        end

        def generate_page(index, dir, product, data)
            @site.pages << DownloadIndex.new(@site, @site.source, dir, index, @site.data['nightlies']['mGBA'].length / @@page_size + 1, product, data)
        end
    end
end
