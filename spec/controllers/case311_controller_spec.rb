require 'spec_helper'

describe Case311sController, "find" do
	render_views
	before(:each) do
		FactoryGirl.reload
		@case1 = FactoryGirl.create(:case311)
		@case2 = FactoryGirl.create(:case311)
		@case3 = FactoryGirl.create(:case311)
		@case4 = FactoryGirl.create(:case311)
		@case5 = FactoryGirl.create(:case311)

	end
	after(:each) do
		Case311.delete_all
	end

	it "has a 200 status code" do
		get :find
		expect(response.status).to eq(200)
	end

	it "should find all 5 cases when no params sent" do
		get :find, :format => :json
		body = JSON.parse(response.body)
		body.count.should == 5
	end

	it "should find only 3 cases when params status = open" do
		get :find, :format => :json, :status => "open"
		body = JSON.parse(response.body)
		body.count.should == 3
	end

	it "should find only 2 cases when params source = Voice In" do
		get :find, :format => :json, :source => "Voice In"
		body = JSON.parse(response.body)
		body.count.should == 2
	end

	it "should find only 2 cases when params since = 1396617877, 4/4/2014 6:24:37 AM" do
		get :find, :format => :json, :since => "1396617877"
		body = JSON.parse(response.body)
		body.count.should == 2
	end

	it "should find only 5 cases when params near = 37.79122, -122.40076 default radius = 5 miles" do
		get :find, :format => :json, :near => "37.79122, -122.40076"
		body = JSON.parse(response.body)
		body.count.should == 5
	end

	it "should find only 1 cases when params near = 37.79122, -122.40076, radius = 1 mile" do
		get :find, :format => :json, :near => "37.79122, -122.40076", :radius => "1"
		body = JSON.parse(response.body)
		body.count.should == 1
	end

	it "should find only 1 cases when params near = 37.79122, -122.40076, radius = 2 mile, status = closed, source='Voice In'" do
		get :find, :format => :json, :near => "37.79122, -122.40076", :radius => "2", :status => "closed", :source => "Voice In"
		body = JSON.parse(response.body)
		body.count.should == 1
	end

end
