require 'rails_helper'

RSpec.describe Article, type: :model do

  context  "vaidation test" do
    it "check title is present" do
      # article = Article.new(text: "some day we we will win")
      article = build(:article, title: "")
      expect(article.save).to eq(false)
    end

    it "check body is present" do
      # article = Article.new(title: "article1")
      article = build(:article, text: "article1")
      expect(article.save).to eq(false)
    end

    it "make sure article is created" do
      # article = Article.new(title: "article1", text: "some day we we will win")
      article = build(:article)
      expect(article.save).to eq(true)
    end
    it "Title length greater or equal to 5" do
      # article = Article.new(title: "art", text: "some day we we will win")
      article = build(:article, title: 'sam')
      expect(article.save).to eq(false)
    end
    it "Body length greater or equal to 10" do
      # article = Article.new(title: "article", text: "some")
      article = build(:article, text: "samll")
      expect(article.save).to eq(false)
    end
  end
end
