class AddPaybillAnAccNoToProjects < ActiveRecord::Migration[7.0]
    def change
      add_column :projects, :paybill, :integer
      add_column :projects, :acc_no, :string
    end
  end
  