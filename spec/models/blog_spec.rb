require 'rails_helper'

RSpec.describe Blog, type: :model do
    # before do
    #   @blog = Blog.new
    # end
    # it "shoulbe be nil" do
    #     expect(@blog.title).to be_nil
    # end
    
    ##only initializing object -> class variable
    let(:blog) {create(:blog)}
    
    describe "Create a new post and publish it" do
      context "Create a draft post" do
        it "is valid with valid attributes" do
            expect(blog.draft?).to be_truthy
        end
      end
      
      context "Publishi draft" do
        before do
          blog.published!
        end
        it "is valid with valid attributes" do
            expect(blog.published?).to be_truthy
        end
      end
  end
end
