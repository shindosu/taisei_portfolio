class AddSubjectToContact < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :subject, :string
  end
end
