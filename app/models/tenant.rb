class Tenant < ActiveRecord::Base
    has_secure_password
    
    has_many :property_tenants
    has_many :properties, through: :property_tenants
    has_many :landlords, through: :properties

    validates :name, :profile, :image_url, :email, presence: true
    validates_uniqueness_of :email
end
