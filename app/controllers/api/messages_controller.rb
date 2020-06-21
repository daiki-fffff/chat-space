class Api::MessagesController < ApplicationController
  def index
    # ルーティングでの設定によりparamsの中にgroup_idというキーでグループのidが入るので、これを元にDBからグループを取得する
    group = Group.find(params[:group_id])
    # ajaxで送られてくるの最後のメッセージのid番号を変数に代入
    last_message_id = params[:id]
    # 取得したグループでのメッセージたちから、idがlast_messsage_idよりも新しい（大きい）メッセージ達のみを取得
    @messages = group.messages.includes(:user).where("id > ?", last_message_id)
  end
end