class Groupcategory < ActiveRecord::Base
		belongs_to :user


	has_many :amsgroups

	translates :categoryname
end
