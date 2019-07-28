class RolePermission < ApplicationRecord

  belongs_to :role

  PERMISSIONS = %w{Creatable Updatable Readable Destroyable}

  validates :resource_name, presence: true
  validates :permission, inclusion: { in: PERMISSIONS }, presence: true

end