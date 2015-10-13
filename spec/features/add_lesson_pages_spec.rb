require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    visit lessons_path
    click_on 'New Lesson'
    fill_in 'Name', :with => 'Beauty Lesson'
    fill_in 'Content', :with => 'eyebrow pencils work well!'
    fill_in 'Number', :with => 5
    click_on 'Create Lesson'
    expect(page).to have_content 'Lessons'
  end
end
