class User < ActiveRecord::Base

  def self.run_smth(user)
    puts user.name
  end
end
