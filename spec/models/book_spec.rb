# coding: utf-8
require 'spec_helper'

describe Book do
  before(:each) do
    @author = Factory(:author)
    @attr = { code: "123", name: "Матан" }
  end

  it "should create a new instance given valid attributes" do
    @author.books.create!(@attr)
  end

  describe "author associations" do

    before(:each) do
      @book = @author.books.create(@attr)
    end

    it "should have a author attribute" do
      @book.should respond_to(:author)
    end

    it "should have the right associated author" do
      @book.author_id.should == @author.id
      @book.author.should == @author
    end
  end
  describe "validations" do

    it "should require a author id" do
      Book.new(@attr).should_not be_valid
    end

    it "should require nonblank name" do
      @author.books.build(:name => "  ").should_not be_valid
    end

    it "should require nonblank code" do
      @author.books.build(:code => "  ").should_not be_valid
    end

    it "should reject long name" do
      @author.books.build(:name => "a" * 141).should_not be_valid
    end
  end
end
