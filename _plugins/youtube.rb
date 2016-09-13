#Modified https://gist.github.com/joelverhagen/1805814
class YouTube < Liquid::Tag
  Syntax = /^\s*([^\s]+)(?:\s+(\d+)\s+(\d+)\s*)?/

  def initialize(tagName, markup, tokens)
    super

    matches = Syntax.match(markup)
    if not matches.nil? then
      @id, @width, @height = matches[1, 3]
	  if @width.nil? then
        @width = 560
      end
	  if @height.nil? then
        @height = 420
      end
    else
      raise "No YouTube ID provided in the \"youtube\" tag"
    end
  end

  def render(context)
    "<iframe width=\"#{@width}\" height=\"#{@height}\" class=\"youtube\" src=\"https://www.youtube.com/embed/#{@id}?color=white&theme=light\"></iframe>"
  end

  Liquid::Template.register_tag "youtube", self
end
