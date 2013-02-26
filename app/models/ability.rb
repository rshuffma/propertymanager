class Ability
  include CanCan::Ability
  
  def initialize(thisuser)
    thisuser ||=User.new # guest account
    
    if thisuser.has_role? :admin
      can :manage, :all
    else
      if thisuser.has_role? :customer
        can :manage, thisuser
      end
    can :index, :all
    can :create, User
  end
 end
end