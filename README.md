[Donate to charity: water via Gittip](https://www.gittip.com/nthj/)

========
_Do not meddle in the affairs of wizards, for they are subtle and quick to anger._

&mdash; Gildor Inglorion, The Fellowship of the Ring

meddle
=========

Build Modal Wizards in Rails

View helpers for easily building tabbed modal wizards in Rails

Installation
============

Add this to your Gemfile: 
  
    gem 'meddle'

Usage
=====
    

    = modal_for(:promotion) do |modal| # => .modal#promotion
        h2 Hello World

        - modal.tab('Discount', :envelope) do |tab|

            - tab.pill('Percentage Off') do

                = text_field_tag :percent_off

            - tab.pill('Price Off') do

                = text_field_tag :price_off

        - modal.tab('Schedule') do |tab|
            ...

