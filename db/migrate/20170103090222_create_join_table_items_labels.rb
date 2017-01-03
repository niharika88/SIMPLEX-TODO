class CreateJoinTableItemsLabels < ActiveRecord::Migration
  def change
    create_join_table :items, :labels do |t|
       t.index [:item_id, :label_id]
       t.index [:label_id, :item_id]
    end
  end
end
