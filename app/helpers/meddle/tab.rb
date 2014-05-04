module Meddle
  class Tab < Struct.new(:modal, :name, :icon, :block, :i)
    def active
      i.zero? && 'active'
    end

    def anchor
      "##{dom_id}"
    end

    def attributes
      { class: [:tab, :block],
        id: dom_id }
    end

    def icon
      "icon-#{@icon}" if icon
    end

    def dom_id
      "#{modal.id}-#{name}".parameterize('-')
    end

    def pill(name, &block)
      nil.tap do
        @pills ||= PillBuilder.new(name, self)
        @pills.add(name, block)
      end
    end
  end
end
