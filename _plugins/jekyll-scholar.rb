#!/bin/env ruby
# encoding: utf-8

require 'jekyll/scholar'
require 'uri'

module Jekyll
  class Scholar
    module Utilities
      def reference_tag(entry, index = nil)
        return missing_reference unless entry

        entry = entry.convert(*bibtex_filters) unless bibtex_filters.empty?
        reference = render_bibliography entry, index

        # it must be a dirty hack, though...
        # highlight authorship
        reference = reference.gsub(/Kanai, M|金井 仁弘/u){|c| "<b>#{$&}</b>"}
        # link doi
        reference = reference.gsub(/\bdoi:(10[.][0-9]{4,}(?:[.][0-9]+)*\/(?:(?![\"&\'<>])\S)+)\b/) { |c| "<a href=\"http://dx.doi.org/#{$1}\" target=\"_blank\" rel=\"noopener\">#{$&}</a>" }
        # link urls
        reference = reference.gsub(/\[([^\]]*)\]\(((?:(?:https?|ftp):\/)?\/[-_.!~*\'()a-zA-Z0-9;\/?:\@&=+\$,%#]+)\)/) { |c| "<a class=\"btn btn-primary btn-xs\" href=\"#{$2}\" target=\"_blank\" rel=\"noopener\">#{$1}</a>" }

        content_tag reference_tagname, reference,
          :id => [prefix, entry.key].compact.join('-')
      end
    end
  end
end

