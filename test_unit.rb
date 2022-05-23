require 'test/unit'
require_relative 'word_freq'

=begin
first we create a test classs TestWordfromStrings that inherits from Test::Unit::TestCase
then we craete a method called test_empty_string that asserts_equal an empty array, taking parameter string from
words_from_strings method.
next we create another method called test_single_word that asserts_equal an array with one element, taking parameter string from words_from_strings method.
finaly we create a method called test_many_words that asserts_equal an array with many elements, taking parameter string from words_from_strings method.

=end
class TestWordfromStrings < Test::Unit::TestCase
  def test_empty_string
    assert_equal([], words_from_strings(""))
  end
  def test_single_word
    assert_equal(["cat"], words_from_strings("cat"))
  end
  def test_many_words
    assert_equal(["the", "cat", "sat", "on", "the", "mat"], words_from_strings("the cat sat on the mat"))
  end
  def test_ignore_punctuation
    assert_equal(["the", "cat's", "mat"], words_from_strings("<the!> cat's, -mat-"))
  end
end
