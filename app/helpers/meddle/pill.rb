module Meddle
  class Pill < Struct.new(:tab, :name, :block, :i)
    def active
      i.zero? && 'active'
    end

    def anchor
      "##{dom_id}"
    end

    def attributes
      { class: [:pill, :block],
        id: dom_id }
    end

    def dom_id
      "#{tab.name}-#{name}".parameterize('-')
    end
  end
end
