require 'rails_helper'

RSpec.describe Post, type: :model do
  it "is valid with a title and body" do
    post = Post.new(title: "My first post", body: "This is the body of my first post.")
    expect(post).to be_valid
  end

  it "is invalid without a title" do
    post = Post.new(title: nil, body: "This is a body without a title.")
    post.valid?
    expect(post.errors[:title]).to include("can't be blank")
  end

  it "is invalid without a body" do
    post = Post.new(title: "Title only", body: nil)
    post.valid?
    expect(post.errors[:body]).to include("can't be blank")
  end
end
