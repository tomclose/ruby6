# An example of what the SiteUser class should be able to do:

# user = SiteUser.new('Tom', 'password1234')
# user.name #=> 'Tom'

# user.reputation #=> 0
# user.increase_reputation(5)
# user.reputation #=> 5

# user.change_password('wrong_password', 'new_password') #=> false
# user.password #=> 'password1234'
# user.change_password('password1234', 'password5678') #=> true
# user.password #=> 'password5678'

# user.admin? #=> false
# user.grant_admin_privileges! #=> true
# user.admin? #=> true


class SiteUser


end