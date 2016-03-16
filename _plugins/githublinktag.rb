#!/bin/env ruby
# encoding: utf-8

module Jekyll
  class GitHubLinkTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end
    def render(context)
      "<a class=\"btn btn-primary btn-xs fui-github\" href=\"https://github.com/mkanai/#{@text}\" target=\"_blank\" rel=\"noopener\"> GitHub </a> <a href=\"https://travis-ci.org/mkanai/#{@text}\" target=\"_blank\" rel=\"noopener\"><img src=\"https://travis-ci.org/mkanai/#{@text}.svg?branch=master\" alt=\"Build Status\"></a>"
    end
  end
end
Liquid::Template.register_tag('github_link', Jekyll::GitHubLinkTag)
