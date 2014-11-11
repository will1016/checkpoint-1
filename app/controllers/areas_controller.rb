class AreasController < ApplicationController
  def square
    @a = params[:length_of_side].to_f
    @area = @a**2
  end

  def circle
    pi = 3.1416 # Close enough.
    @r = params[:radius]
  end

  def triangle
    @b = params[:base].to_f
    @h = params[:vertical_height].to_f
    area = 0.5 * b * h
  end

  def rectangle
    @w = params[:width].to_f
    @h = params[:height].to_f
    @area = @w * @h
  end

  def ellipse
    pi = 3.1416 # Close enough.
    @a = params[:a].to_f
    @b = params[:b].to_f
    @area = pi * @a * @b
  end

  def random
    @radii = [rand(1..20), rand(1..20), rand(1..20), rand(1..20), rand(1..20)]
  end
end
