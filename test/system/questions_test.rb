require 'application_system_test_case'

class QuestionsTest < ApplicationSystemTestCase
  test 'visiting /ask renders the form' do
    visit ask_url
    assert_selector 'h1', text: 'The Question Opportunity'
  end

  test 'greeting the coach politely receives a gruff reply' do
    visit ask_url
    fill_in 'question', with: 'Good morning my dear coach!'
    click_on 'Ask!'

    assert_text 'I don\'t care, get dressed and go to work!'
  end

  test 'respectfully posing questions are not answered directly' do
    visit ask_url
    fill_in 'question', with: 'Fancy a coffee?'
    click_on 'Ask!'

    assert_text 'Silly question, get dressed and go to work!'
  end

  test 'stating an appropriate morning time work ambition received hearty congratulations' do
    visit ask_url
    fill_in 'question', with: 'I am going to work'
    click_on 'Ask!'

    assert_text 'Great'
  end

  test 'functioning back link button from coach response to ask another question' do
    visit answer_url(question: 'any old nonsense')
    find_link('back-link').click

    assert_text 'The Question Opportunity'
  end

  test 'the page for asking questions is pretty' do
    visit ask_url
    take_screenshot
  end
end
