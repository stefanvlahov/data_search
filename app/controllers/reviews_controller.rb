# frozen_string_literal: true

class ReviewsController < ApplicationController
  def index
    @search = params["search"]
    if @search.present?
      @text = @search["text"]
      @reviews = Review.where("text LIKE ?", "%#{@text}%")
    else
      @reviews = []
    end
  end
end
