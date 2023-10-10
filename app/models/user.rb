class User < ActiveRecord::Base
  has_secure_password

  validates :first_name, presence: true, length: { minimum: 4}
  validates :last_name, presence: true, length: { minimum: 4}
  validates :email, presence: true, uniqueness: { case_sensitive: true }
  validates :password, presence: true, length: { minimum: 4}

  def self.authenticate_with_credentials(email, password)

    email = email.downcase.strip
    @user = User.find_by_email(email)

    if @user && @user.authenticate(password)
      @user
    else
      nil
    end
  end

end