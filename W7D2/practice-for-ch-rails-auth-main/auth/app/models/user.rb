# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
    validates :username, presence: true
    validates :session_token, presence:true
    validates :password_digest
    validate :password_is_blank
    

    def password_is_blank
        if password_digest.length == 0
            errors.add(:password_digest, "Password can\'t be blank")
        end
    end
end
