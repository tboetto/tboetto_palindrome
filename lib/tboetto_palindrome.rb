require "tboetto_palindrome/version"

# Modify the String class to check for palindromes
module TboettoPalindrome
  # Returns true for palindrome, otherwise false.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

  # Processes string/integer to be compared
  def processed_content
    self.to_s.scan(/[a-z0-9]/i).join.downcase
  end
end

# Allow for all strings to test for Palindrome's natively
class String
  include TboettoPalindrome
end

# Allow for integers to test for Palindrome's natively
class Integer
  include TboettoPalindrome
end