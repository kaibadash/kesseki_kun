Hanami::Model.migration do
  change do
    create_table :events do
      primary_key :id
      column :title, String, null: false
      column :description, String, null: false
      foreign_key :user_id, :users, null: false
      column :due_date, DateTime, null: false
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
