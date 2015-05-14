require 'rails_helper'

RSpec.describe 'Areas feature', type: :feature do

  describe "GET /areas/square" do
    it "displays the calculated area", points: 0 do
      visit "/areas/square/8"
      expect(page).to have_content('64.0')

      visit "/areas/square/5"
      expect(page).to have_content('25.0')
    end
  end

  describe "GET /areas/circle" do
    it "displays the calculated area", points: 5 do
      visit "/areas/circle/4"
      expect(page).to have_content('50.2')

      visit "/areas/circle/7"
      expect(page).to have_content('153.9')
    end
  end

  describe "GET /areas/triangle" do
    it "displays the calculated area", points: 5 do
      visit "/areas/triangle/4/5"
      expect(page).to have_content('10.0')

      visit "/areas/triangle/6/3"
      expect(page).to have_content('9.0')
    end
  end

  describe "GET /areas/rectangle" do
    it "displays the calculated area", points: 5 do
      visit "/areas/rectangle/8/3"
      expect(page).to have_content('24.0')

      visit "/areas/rectangle/12/4"
      expect(page).to have_content('48.0')
    end
  end

  describe "GET /areas/trapezoid" do
    it "displays the calculated area", points: 5 do
      visit "/areas/trapezoid/7/11/4"
      expect(page).to have_content('36.0')

      visit "/areas/trapezoid/3/4/5"
      expect(page).to have_content('17.5')
    end
  end

  describe "GET /areas/ellipse" do
    it "displays the calculated area", points: 5 do
      visit "/areas/ellipse/6/7"
      expect(page).to have_content('131.9')

      visit "/areas/ellipse/11/3"
      expect(page).to have_content('103.6')
    end
  end

  describe "GET /random_circles" do
    it "displays the calculated area", points: 5 do
      visit "/random_circles"
      radii_group_1 = page.body.scan(/http:\/\/localhost:3000\/areas\/circle\/(\d{1,2})/).flatten

      expect(radii_group_1.uniq.count).to be > 3

      expect(page).to have_content("circle of radius #{radii_group_1[0]}")
      expect(page).to have_content("circle of radius #{radii_group_1[1]}")
      expect(page).to have_content("circle of radius #{radii_group_1[2]}")
      expect(page).to have_content("circle of radius #{radii_group_1[3]}")
      expect(page).to have_content("circle of radius #{radii_group_1[4]}")

      visit "/random_circles"
      radii_group_2 = page.body.scan(/http:\/\/localhost:3000\/areas\/circle\/(\d{1,2})/).flatten

      expect(radii_group_1.uniq.count).to be > 3

      expect(page).to have_content("circle of radius #{radii_group_2[0]}")
      expect(page).to have_content("circle of radius #{radii_group_2[1]}")
      expect(page).to have_content("circle of radius #{radii_group_2[2]}")
      expect(page).to have_content("circle of radius #{radii_group_2[3]}")
      expect(page).to have_content("circle of radius #{radii_group_2[4]}")

      expect(radii_group_1).not_to eq radii_group_2
    end
  end
end
