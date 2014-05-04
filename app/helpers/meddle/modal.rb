module Meddle
  class Modal < Struct.new(:id, :template)
    def tab(name, icon = nil, &block)
      nil.tap do
        @tabs ||= TabBuilder.new(name, self)
        @tabs.add(name, icon, block)
      end
    end

    def to_s
      @tabs.to_s
    end
  end
end

