require "application_system_test_case"

class SecureUsersTest < ApplicationSystemTestCase
  setup do
    @secure_user = secure_users(:one)
  end

  test "visiting the index" do
    visit secure_users_url
    assert_selector "h1", text: "Secure Users"
  end

  test "creating a Secure user" do
    visit secure_users_url
    click_on "New Secure User"

    fill_in "Email", with: @secure_user.email
    fill_in "Name", with: @secure_user.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    fill_in "Username", with: @secure_user.username
    click_on "Create Secure user"

    assert_text "Secure user was successfully created"
    click_on "Back"
  end

  test "updating a Secure user" do
    visit secure_users_url
    click_on "Edit", match: :first

    fill_in "Email", with: @secure_user.email
    fill_in "Name", with: @secure_user.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    fill_in "Username", with: @secure_user.username
    click_on "Update Secure user"

    assert_text "Secure user was successfully updated"
    click_on "Back"
  end

  test "destroying a Secure user" do
    visit secure_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Secure user was successfully destroyed"
  end
end
