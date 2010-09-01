require 'spec_helper'

describe "LayoutLinks" do
  describe "public pages URLs" do
    %w{rules terms bets}.each do |page|
      it "should have page at /#{page}" do
        get "/#{page}"
        response.should be_successful
      end
    end
  end

  describe "Footer Root links" do
    %w{rules terms bets}.each do |page|
      it "should have link to #{page}" do
        get '/'
        response.should have_selector "footer a", :href => "/#{page}"
      end
    end
  end
end
