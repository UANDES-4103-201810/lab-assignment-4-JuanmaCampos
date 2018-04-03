class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets
  def initialize
    @errors = ActiveModel::Errors.new(self)
  end
  validates :place, uniqueness: {scope: :start_date}
  before_create :ensure_date


  private
	def ensure_date
		if DateTime.now > start_date
      event.errors[:name]
    end

  end







end
