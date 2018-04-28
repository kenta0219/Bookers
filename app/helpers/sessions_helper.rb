module SessionsHelper
def current_user?(user)
	user.id == current_user.id
end
end