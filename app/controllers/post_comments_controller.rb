class PostCommentsController < ApplicationController
  def create
    postimage = Postimage.find(params[:postimage_id])
    comment = current_user.post_comments.new(post_comment_params)
    # ここで元々の画像idにコメントしたidを上書き→コメントされた状態で表示される
    comment.postimage_id = postimage.id
    comment.save
    redirect_to postimage_path(postimage)
  end

  def destroy
    # id:コメントのid, postimage_idの２つでコメントを特定！
    PostComment.find_by(id: params[:id], postimage_id: params[:postimage_id]).destroy
    redirect_to postimage_path(params[:postimage_id])
  end

  private
  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end

end
