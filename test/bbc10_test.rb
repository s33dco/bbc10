require "test_helper"

class Bbc10Test < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Bbc10::VERSION
  end

  def test_it_does_something_useful
    page =  Bbc10::read_page('https://www.bbc.co.uk/news')
    links = Bbc10::get_links(page)
    assert links.length == 10
  end
end
