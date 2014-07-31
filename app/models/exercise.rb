class Exercise < ActiveRecord::Base

def self.postate
	where("data_postarii<= ?", Time.now-30).order("data_postarii desc")
end


end
