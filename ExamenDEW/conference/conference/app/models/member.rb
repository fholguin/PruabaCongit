class Member < ActiveRecord::Base
has_many :meeting_members
has_many :meetings, :through => :meeting_members
end
