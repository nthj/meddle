# Meddle
#
# Builders for Modal Wizards
#
# Easily create modals with tabbed wizards,
# with optional pill-button nav inside each tab
#
#   = modal_for(:promotion) do |modal| # => .modal#promotion
#     h2 Hello World
#
#     - modal.tab('Discount', :envelope) do |tab|
#       - tab.pill('Percentage Off') do
#         = text_field_tag :percent_off
#
#       - tab.pill('Price Off') do
#         = text_field_tag :price_off
#
#     - modal.tab('Schedule') do |tab|
#       ...
#



module Meddle::ModalHelper
  def modal_for(id, &block)
    content_tag(:div, class: :modal, id: id.to_s.parameterize) do
      yield Modal.new(id, self)
    end
  end
end
