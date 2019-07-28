class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    drop_table :employees
    create_table :users do |t|
      t.string "last_name", default: "", null: false
      t.string "first_name", default: "", null: false
      t.string "email", default: "", null: false
      t.integer "gender", limit: 1, default: 0, null: false
      t.bigint "company_id", null: false
      t.index ["company_id"], name: "index_employees_on_company_id"

      t.timestamps
    end

    drop_table :roles
    create_table :roles do |t|
      t.string :name, default: '', null: false

      t.timestamps
    end

    roles = %w{sysadmin director general_manager manager staff employee}
    roles.each do |role|
      Role.create(name: role)
    end

    create_table :user_roles do |t|
      t.bigint :user_id, null: false
      t.bigint :role_id, null: false

      t.timestamps
    end

    create_table :role_permissions do |t|
      t.bigint :role_id, null: false
      t.string :resource_name, null: false #class name
      t.string :attribute_name #nil or specific attribute name
      t.string :permission, null: false #Creatable/Updatable/Readable/Destroyable

      t.timestamps
    end

  end
end
