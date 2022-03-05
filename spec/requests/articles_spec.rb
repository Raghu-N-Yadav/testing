require 'rails_helper'

RSpec.describe "Articles", type: :request do
  describe "GET /index" do
    it "success for index route" do
      get "/articles"
      expect(response).to have_http_status(:success)
    end

    it "success for about route" do
      get "/about"
      expect(response).to have_http_status(:success)
    end

    it "success for show article route" do
      # article = Article.new(title: "this is", text: "this is something new")
      article = build(:article)
      get "/articles/#{article.id}"
      expect(response).to have_http_status(:success)
    end

    it "success for edit article route" do
      # article = Article.create!(title: "this is", text: "this is something new")
      article = create(:article)
      get "/articles/#{article.id}/edit"
      expect(response).to have_http_status(:success)
    end

    it "success for create new article route" do
      get new_article_path
      expect(response).to have_http_status(:success)
    end

  end
end
