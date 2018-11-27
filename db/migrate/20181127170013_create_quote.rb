class CreateQuote < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
    	t.string :value
    	t.text :tags, array: true, default: []
    end
  end
end
