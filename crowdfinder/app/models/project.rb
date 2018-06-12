class Project < ApplicationRecord
  has_many :wishes
  has_many :users, through: :wishes
  has_many :promises
  has_one :user
  belongs_to :category

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  validates :name, length: {minimum: 3}, allow_blank: false
  validate :date_future

  def date_future
    if self.finale_date < Date.today
      errors.add(:finale_date, "Project must end in the future")
    end
  end

  def self.search(name, category)
    if name
      p "category: " + category.to_s
      if category
        p "asdadasd"
        where('name LIKE ?', "%#{name}%").where('category_id = ?', "#{category[:id]}").order('name ASC')
      else
        where('name LIKE ?', "%#{name}%").order('name ASC')
      end
    else
      if category
        where('category_id = ?', "#{category[:id]}").order('name ASC')
      else
        order('name ASC')
      end
    end
  end
end
