require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /login route opens the login page" do 
  	get '/login'
  	assert_response :success
  end

  test "that /logout route opens the logout page" do 
  	get '/logout'
  	assert_response :redirect
  	assert_redirected_to '/'
  end

  test "that /register route opens the register page" do 
  	get '/register'
  	assert_response :success
  end

  test "that / route opens the home page" do 
  	get '/'
  	assert_response :success
  end

  test "that /forums route opens the forums page" do 
  	get '/forums'
  	assert_response :success
  end

  test "that /forums/forums route opens the forums page" do 
  	get '/forums/forums'
  	assert_response :success
  end

  test "that /../going_to_court route opens the going_to_court page" do 
  	get '/pages/you-and-the-judiciary/going-to-court'
  	assert_response :success
  end

  test "that /../sentencing route opens the sentencing page" do 
  	get 'pages/you-and-the-judiciary/sentencing'
  	assert_response :success
  end

  test "that /../appeal-process route opens the appeal-process page" do 
  	get 'pages/you-and-the-judiciary/appeal-process'
  	assert_response :success
  end

  test "that /../state-judiciary-staffs route opens the state-judiciary-staffs page" do 
  	get 'pages/you-and-the-judiciary/state-judiciary-staffs'
  	assert_response :success
  end

  test "that /../civil-litigation-cost route opens the civil-litigation-cost page" do 
  	get 'pages/you-and-the-judiciary/civil-litigation-cost'
  	assert_response :success
  end

  test "that /../forms route opens the forms page" do 
  	get 'pages/you-and-the-judiciary/forms'
  	assert_response :success
  end

  test "that /../images route opens the images page" do 
  	get 'pages/media/images'
  	assert_response :success
  end

  test "that /../media-releases route opens the media-releases page" do 
  	get 'pages/media/media-releases'
  	assert_response :success
  end

  test "that /../reports route opens the reports page" do 
  	get 'pages/publications/reports'
  	assert_response :success
  end

  test "that /../judicial-college route opens the judicial-college page" do 
  	get 'pages/training/judicial-college'
  	assert_response :success
  end

  test "that /photos route opens the photos page" do 
  	get 'photos'
  	assert_response :success
  end

  test "that a profile page works" do
    get '/Usman%20Shamaki'
    assert_response :success
  end

  test "that a user page works" do
    get '/users/Usman%20Shamaki'
    assert_response :success
  end

end
