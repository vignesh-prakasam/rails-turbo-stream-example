class User < ApplicationRecord
  after_create_commit { broadcast_prepend_to 'users' , target: 'users' , partial: 'users/user' , locals: { user: self} }
  after_update_commit { broadcast_replace_to 'users' , target: "user_#{self.id}" , partial: 'users/user' , locals: { user: self} }
  after_destroy_commit { broadcast_remove_to 'users', target: "user_#{self.id}" }
end
