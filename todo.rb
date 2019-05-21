require "sinatra"
require "sinatra/reloader"
require "active_record"

ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "./todo.db"
)

class Post < ActiveRecord::Base
    validates :body, presence: true
end

before do
    @posts = Post.all
end

get "/main" do
    @title = "mytodo"
    erb :main
end

get "/post" do
    @title = "mytodo"
    erb :post
end

post "/create" do
    Post.create({
    body: params[:body]
})
    redirect to ("/main")
end

post "/destroy" do
    Post.find(params[:id]).destroy
end