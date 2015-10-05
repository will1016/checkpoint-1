class AreasController < ApplicationController
  def square
    @a = params[:length_of_side].to_f
    @area = @a**2
  end

  def circle
    pi = 3.1416 # Close enough.
    @r = params[:radius].to_f #changed the params string to an interger
    #Enter the formula to multiply pi and the params place holder number
    @area = (pi*(@r**2))
  end

  def triangle
    @b = params[:base].to_f
    @h = params[:vertical_height].to_f
    @area = 0.5 * @b * @h   #Changed all triangle instance variables to instance
  end

  def rectangle
    @w = params[:width].to_f
    @h = params[:height].to_f
    @area = @w * @h
  end

  def trapezoid    #Created this entire action from scratch
    @a = params[:a].to_f
    @b = params[:b].to_f
    @h = params[:vertical_height].to_f
    @area = (0.5*(@a + @b)) * @h
  end

  def ellipse
    pi = 3.1416 # Close enough.
    @a = params[:a].to_f
    @b = params[:b].to_f
    @area = (pi * @a * @b)
  end

  def random
    @radii = [rand(1..20), rand(1..20), rand(1..20), rand(1..20), rand(1..20)]

  end
end
