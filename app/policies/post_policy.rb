class PostPolicy
  attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end

  def show?
    true
  end

  def edit?
    @user == @post.user
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end
end
