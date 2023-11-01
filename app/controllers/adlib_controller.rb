# app/controllers/adlib_controller.rb
class AdlibController < ApplicationController
  def index
    @adlib = Adlib.new
  end

  def generate
    @adlib = Adlib.new(adlib_params)
    @story = generate_story(@adlib)

    render :index
  end

  private

  def adlib_params
    params.require(:adlib).permit(:noun, :verb, :adjective, :adverb)
  end

  def generate_story(adlib)
    # Build your Adlib-style story using the provided words
    "Once upon a time, there was a #{adlib.adjective} #{adlib.noun} who loved to #{adlib.adverb} #{adlib.verb} all day long."
  end
end


