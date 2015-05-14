require 'rails_helper'

RSpec.describe AreasController, type: :controller do
  describe "GET #square" do
    it "responds successfully", points: 0 do
      get :square, length_of_side: '3'
      expect(response).to be_success
    end
  end

  describe "GET #circle" do
    it "responds successfully", points: 0 do
      get :circle, radius: '3'
      expect(response).to be_success
    end
  end

  describe "GET #triangle" do
    it "responds successfully", points: 0 do
      get :triangle, base: '3', vertical_height: '5'
      expect(response).to be_success
    end
  end

  describe "GET #rectangle" do
    it "responds successfully", points: 0 do
      get :rectangle, width: '3', height: '5'
      expect(response).to be_success
    end
  end

  describe "GET #trapezoid" do
    it "responds successfully", points: 0 do
      get :trapezoid, a: '3', b: '5', vertical_height: '7'
      expect(response).to be_success
    end
  end

  describe "GET #ellipse" do
    it "responds successfully", points: 0 do
      get :ellipse, a: '3', b: '5'
      expect(response).to be_success
    end
  end

  describe "GET #random_circles" do
    it "responds successfully", points: 0 do
      get :random, base: '3', vertical_height: '5'
      expect(response).to be_success
    end
  end
end
