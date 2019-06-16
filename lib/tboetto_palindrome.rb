require "tboetto_palindrome/version"

# Modify the String class to check for palindromes
class String
  # Returns true for palindrome, otherwise false.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  # Processes string/integer to be compared
  def processed_content
    self.scan(/[a-z]/i).join.downcase
  end
end
