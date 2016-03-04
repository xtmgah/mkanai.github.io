#!/bin/env ruby
# encoding: utf-8

module Jekyll
  class SmoothScrollTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end

    def render(context)
      "<a data-scroll href=\"\##{@text.downcase}\">#{@text}</a>"
    end
  end
end
Liquid::Template.register_tag('smooth_scroll', Jekyll::SmoothScrollTag)
