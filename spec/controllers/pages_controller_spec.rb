require 'spec_helper'

describe PagesController do
  render_views


  describe "GET 'index'" do
    it 'should have NO header' do
      get 'index'
      response.should_not have_selector '#content h1'
    end
  end
  
  %w{Rules Terms}.each do |page|
    describe "GET '#{page}'" do
      it 'should have header' do
        get page.downcase
        response.should have_selector('#content h1', :content => page)
      end
    end
  end

end
