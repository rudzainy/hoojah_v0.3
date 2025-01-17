class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader
  
	belongs_to :role
  has_many :opinions
  has_many :comments
  has_many :debates
  has_many :hoojahs
  has_many :votes
  has_many :invitations

	before_save :assign_role
	before_save :generate_identicon

	def assign_role
		self.role = Role.find_by name: "Regular" if self.role.nil?
	end

	def generate_identicon
		self.avatar = Identicon.data_url_for self.email if self.avatar.nil?
	end

	def admin?
    self.role.name == "Admin"
  end

  def moderator?
  	self.role.name == "Moderator"
  end

  def regular?
  	self.role.name == "Regular"
  end

  def display_avatar
    if self.avatar.url.nil?
      "default_avatar.png"
    else
      self.avatar.url
    end
  end

  def debates_count
    Debate.where(user_pro_id: self.id).count + Debate.where(user_con_id: self.id).count
  end

  def opinions_count
    Opinion.where(user_id: self.id).count
  end

  def votes_count
    Vote.where(user_id: self.id).count
  end
end
