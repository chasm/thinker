class ArticlesController < RestController

  protected

  def attrs
    [ :id, :title, :body, :user_id, :created_at, :updated_at ]
  end

  def safe_params
    params.require(:article).permit(:title, :body)
  end
end