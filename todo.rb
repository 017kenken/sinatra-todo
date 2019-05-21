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
    @title = "mytodo"
end

get "/main" do
    erb :main
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
