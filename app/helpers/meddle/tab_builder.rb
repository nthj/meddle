module Meddle
  class TabBuilder < ActionView::Base
    def initialize(name, modal)
      @name, @modal = name, modal
    end

    def add(*args)
      @tabs ||= []
      @tabs << Tab.new(@modal, *args, @tabs.count)
    end

    def blocks
      @tabs.inject('') do |blocks, tabs|
        blocks << content_tag(:div, tab.attributes, &tab.block)
      end
    end

    def navigation
      content_tag(:ol, class: 'nav nav-tabs') do
        @tabs.map do |tab|
          content_tag(:li, tab.active) do
            link_to(tab.anchor) do
              content_tag(:i, class: icon) + tab.name
            end
          end
        end.join
      end.html_safe
    end

    def to_s
      "#{navigation} #{blocks}"
    end
  end
end

