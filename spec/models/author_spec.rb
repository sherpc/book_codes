require 'spec_helper'

describe Author do

  describe "book associations" do
    before(:each) do
      @author = Author.create(@attr)
    end

    it "should have a books attribute" do
      @author.should respond_to(:books)
    end
  end
end
