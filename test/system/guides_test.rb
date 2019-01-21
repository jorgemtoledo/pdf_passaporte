require "application_system_test_case"

class GuidesTest < ApplicationSystemTestCase
  setup do
    @guide = guides(:one)
  end

  test "visiting the index" do
    visit guides_url
    assert_selector "h1", text: "Guides"
  end

  test "creating a Guide" do
    visit guides_url
    click_on "New Guide"

    fill_in "Address", with: @guide.address
    fill_in "Company", with: @guide.company
    fill_in "Date", with: @guide.date
    fill_in "Doctor", with: @guide.doctor
    fill_in "Document", with: @guide.document
    fill_in "Exam", with: @guide.exam
    fill_in "Hour", with: @guide.hour
    fill_in "Passport", with: @guide.passport
    fill_in "Patient", with: @guide.patient
    fill_in "Registration", with: @guide.registration
    fill_in "Specialty", with: @guide.specialty
    fill_in "Value", with: @guide.value
    click_on "Create Guide"

    assert_text "Guide was successfully created"
    click_on "Back"
  end

  test "updating a Guide" do
    visit guides_url
    click_on "Edit", match: :first

    fill_in "Address", with: @guide.address
    fill_in "Company", with: @guide.company
    fill_in "Date", with: @guide.date
    fill_in "Doctor", with: @guide.doctor
    fill_in "Document", with: @guide.document
    fill_in "Exam", with: @guide.exam
    fill_in "Hour", with: @guide.hour
    fill_in "Passport", with: @guide.passport
    fill_in "Patient", with: @guide.patient
    fill_in "Registration", with: @guide.registration
    fill_in "Specialty", with: @guide.specialty
    fill_in "Value", with: @guide.value
    click_on "Update Guide"

    assert_text "Guide was successfully updated"
    click_on "Back"
  end

  test "destroying a Guide" do
    visit guides_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Guide was successfully destroyed"
  end
end
