class UsersController < ApplicationController
  #一覧画面に対応するアクション
  def index
    @users = User.all
  end

  #新規作成画面に対応するアクション
  def new
    @user = User.new
  end

  #新規登録するためのアクション
  def create
    User.create(user_params)
    redirect_to action: :index
  end

  #詳細情報を表示するアクション
  def show
    @user = User.find(params[:id])
  end

  #更新を行うためのアクションゲーム
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to action: :index
  end

  #削除するためのアクション
  def destroy
    user = User.find(params[:id])
    user.delete
    redirect_to action: :index
  end

  def edit
    @user = User.find(params[:id])
  end

  #Strong Parameter データベースに登録するデータを制限
  private

  def user_params
    params.require(:user).permit(:name, :age)
  end
end
