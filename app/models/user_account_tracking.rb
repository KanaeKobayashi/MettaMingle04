class UserAccountTracking < ApplicationRecord
  belongs_to :user

  def show
    # ユーザーのサインイン情報を表示するロジックを実装
    @user_account_tracking = UserAccountTracking.find_by(user_id: params[:id])
  end
  
end
