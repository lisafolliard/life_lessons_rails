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

  it 'gives error when a field is blank' do
    visit lessons_path
    click_on 'New Lesson'
    click_on 'Create Lesson'
    expect(page).to have_content 'errors'
  end
end

describe "edit a lesson process" do
  it "allows you to edit a lesson" do
    lesson = Lesson.create(:name => 'Funny', :content => 'Haha', :number => 6)
    visit lesson_path(lesson)
    click_on 'Edit Lesson'
    fill_in 'Name', :with => 'Fun'
    fill_in 'Content', :with => 'Haha'
    fill_in 'Number', :with => 6
    click_on 'Update Lesson'
    expect(page).to have_content 'Fun'
  end
end

describe "delete a lesson process" do
  it "allows you to delete a lesson" do
    lesson = Lesson.create(:name => 'Funny', :content => 'Haha', :number => 6)
    visit lesson_path(lesson)
    click_on 'Delete Lesson'
    expect(page).to_not have_content 'Funny'
  end
end
