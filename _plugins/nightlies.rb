module Jekyll
    class DownloadIndex < Page
        def initialize(site, base, dir, index, max_index, product, data, extra)
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
            @data.merge!(extra)
            super(site, base, File.join(dir, "#{index}"), 'index.html')
        end

        def read_yaml(*)
            # No YAML to be read
        end
    end
    class LatestGenerator < Generator
        safe true
        def generate(site)
            @site = site
            @build_types = @site.config['build_types']
            @site.data['latest'] ||= {}
            @site.data['platforms'].each { |platform|
                platname = platform['name']
                platinfo = {}
                @build_types.each { |name, path|
                    path = path.split('.')
                    builds = @site.data
                    path.each { |elem|
                        builds = builds[elem]
                    }
                    if not name.include? 'dev'
                        builds = builds.reverse
                    end
                    builds.each { |build|
                        buildplat = build['platforms'][platname]
                        if buildplat
                            platinfo[name] = buildplat
                            break
                        end
                    }
                }
                @site.data['latest'][platname] = platinfo
            }
        end
    end
    class BuildGenerator < Generator
        safe true
        @@page_size = 20
        @@extra = {
            'title' => 'Builds'
        }

        def generate(site)
            @site = site
            (0..site.data['builds']['mGBA'].length / @@page_size).each { |i|
                generate_page(i + 1, 'builds', 'mGBA', site.data['builds']['mGBA'][i * @@page_size, @@page_size])
            }
            (0..site.data['builds']['medusa'].length / @@page_size).each { |i|
                generate_page(i + 1, 'builds/medusa', 'medusa', site.data['builds']['medusa'][i * @@page_size, @@page_size])
            }
        end

        def generate_page(index, dir, product, data)
            @site.pages << DownloadIndex.new(@site, @site.source, dir, index, @site.data['builds'][product].length / @@page_size + 1, product, data, @@extra)
        end
    end
    class NightlyGenerator < Generator
        safe true
        @@page_size = 20
        @@extra = {
            'title' => 'Nightlies'
        }

        def generate(site)
            @site = site
            (0..site.data['nightlies']['mGBA'].length / @@page_size).each { |i|
                generate_page(i + 1, 'nightlies', 'mGBA', site.data['nightlies']['mGBA'][i * @@page_size, @@page_size])
            }
            (0..site.data['nightlies']['medusa'].length / @@page_size).each { |i|
                generate_page(i + 1, 'nightlies/medusa', 'medusa', site.data['nightlies']['medusa'][i * @@page_size, @@page_size])
            }
        end

        def generate_page(index, dir, product, data)
            @site.pages << DownloadIndex.new(@site, @site.source, dir, index, @site.data['nightlies'][product].length / @@page_size + 1, product, data, @@extra)
        end
    end
end
