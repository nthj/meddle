module Meddle
  class PillBuilder < ActionView::Base
    def initialize(tab)
      @tab = tab
    end

    def add(name, block)
      @pills ||= []
      @pills << Pill.new(@tab, name, block, @pills.count)
    end

    def blocks
      @pills.inject('') do |blocks, pill|
        blocks << content_tag(:div, pill.attributes, &pill.block)
      end.html_safe
    end

    def navigation
      content_tag(:ol, class: 'nav nav-pills') do
        @pills.map do |pill|
          content_tag(:li, pill.active) do
            link_to(pill.name, pill.anchor)
          end
        end.join
      end.html_safe
    end
  end
end
