require 'minitest/autorun'
require 'open-uri'

describe 'jenkins' do
  
  it 'starts jenkins on port 8080' do
    assert open('http://localhost:8080').read.downcase.include? 'jenkins'
  end

end
