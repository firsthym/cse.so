class Label
	include Mongoid::Document
	field :name, type: String
	field :mode, type: String
	field :weight, type: Integer
	
	validates :name, presence: true
	validates :mode, presence:true, inclusion: { in: ['filter', 'exclude', 'boost'] }
	validates :weight, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than: 11 }

	embedded_in :custom_search_engine
end
