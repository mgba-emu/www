module Jekyll
  module ScriptFilter
    include Jekyll::Filters

    def canonicalize_class(input)
      type = input.split("::")
      if type[0] == "struct"
        input = type[1]
      elsif type[1] == "struct"
        input = type[0] + "::" + type[2]
      end
      input.sub(/^m(Script)?/, "")
    end
    def linkify_docstring(input)
      site = @context.registers[:site]
      if not input
        return
      end
      input.gsub!(/([A-Za-z0-9_]+::)?struct::(?:m(?:Script)?)?([A-Za-z0-9_]+\.[A-Za-z0-9_]+)/, "<a href=\"#method-\\1\\2\" class=\"scripting-type\">\\1\\2</a>")
      input.gsub!(/([A-Za-z0-9_]+::)?struct::(?:m(?:Script)?)?([A-Za-z0-9_]+)/, "<a href=\"#class-\\1\\2\" class=\"scripting-type\">\\1\\2</a>")
      input.gsub!(/(?<!>)\bC\.([A-Z0-9_]+)/, "<a href=\"#constant-\\1\" class=\"scripting-constant\">C.\\1</a>")
      markdownify("#{input}\n{: .docstring}")
    end
    def canonicalize_type(input)
      namespace = nil
      input.gsub!(/^wrapper /, "")
      type = input.split("::")
      scope = nil
      if type.length == 2
        namespace = type[0].split[-1]
        input = canonicalize_class(type[1])
      elsif type.length == 3
        namespace = type[1].split[-1]
        input = canonicalize_class(type[2])
        scope = type[0]
        input = scope + "::" + input
      end
      if input == "charptr"
        input = "string"
      end
      if namespace == "struct"
        site = @context.registers[:site]
        "<a href=\"#class-#{input}\" class=\"scripting-type\">#{input}</a>"
      else
        "<span class=\"scripting-type\">#{input}</span>"
      end
    end
	def address32(input)
		"0x%08x" % input
	end
	def address16(input)
		"$%04x" % input
	end
  end
end

Liquid::Template.register_filter(Jekyll::ScriptFilter)
