class User < ActiveRecord::Base

  def self.run_smth(user)
    puts user.name
  end

  def full_name
    ActiveSupport::Deprecation.deprecation_warning(__method__)
    name
  end
end
