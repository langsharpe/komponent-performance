# frozen_string_literal: true

module NestedYielderComponent
  extend ComponentHelper

  def inner_yield(&block)
    c("inner_yield", &block)
  end
end
