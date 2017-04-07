class BrightCoveRecommendation < ApplicationRecord

	serialize :keywords, Array
	serialize :video_urls, Array 
	serialize :video_ids, Array

	serialize :bright_cove_recommendation

	before_save :deserialize_attributes


	private

	def deserialize_attributes
		self.keywords =  self.keywords.join.split(",").map(&:strip)
		self.video_urls = self.video_urls.join.split(",").map(&:strip)
		self.video_ids = self.video_ids.join.split(",").map(&:strip)
	end
	
end
