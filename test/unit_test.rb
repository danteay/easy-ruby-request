require 'minitest/autorun'

# Importar el archivo principal de la gema (lib/scafold_gem)
require 'easy_request'

class MyTest < MiniTest::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @url = 'https://api.compropago.com/v1/providers/true'
  end

  # Fake test
  def test_get
    response = EasyRequest.get(@url)
    
    assert !response.empty?
  end

  def test_post
    auth = {
      user: 'RQzkxfNhD777DA5u5s8pefgTzZyJ2gvc',
      pass: ''
    }
    data = {
      email: 'asd@asd.com',
      url:'https://compropago.com'
    }
    response = EasyRequest.post('https://ms-auth-staging.herokuapp.com/auth/recover_password', data, auth)
    puts response
    assert true
  end
end