require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get questions_url
    assert_response :success
  end

  test "should get new" do
    get new_question_url
    assert_response :success
  end

  test "should create question" do
    assert_difference('Question.count') do
      post questions_url, params: { question: { pregunta1: @question.pregunta1, pregunta2: @question.pregunta2, pregunta3: @question.pregunta3, pregunta4: @question.pregunta4, pregunta5: @question.pregunta5, pregunta6: @question.pregunta6, pregunta7: @question.pregunta7, pregunta8: @question.pregunta8 } }
    end

    assert_redirected_to question_url(Question.last)
  end

  test "should show question" do
    get question_url(@question)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_url(@question)
    assert_response :success
  end

  test "should update question" do
    patch question_url(@question), params: { question: { pregunta1: @question.pregunta1, pregunta2: @question.pregunta2, pregunta3: @question.pregunta3, pregunta4: @question.pregunta4, pregunta5: @question.pregunta5, pregunta6: @question.pregunta6, pregunta7: @question.pregunta7, pregunta8: @question.pregunta8 } }
    assert_redirected_to question_url(@question)
  end

  test "should destroy question" do
    assert_difference('Question.count', -1) do
      delete question_url(@question)
    end

    assert_redirected_to questions_url
  end
end
