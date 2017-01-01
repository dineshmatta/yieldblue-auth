class Recommendation < ApplicationRecord
	serialize :keywords, Array
	serialize :video_urls, Array 
	serialize :video_ids, Array

	serialize :recommendation
end
