class CreateJoinTableIndustrySector < ActiveRecord::Migration[7.0]
  def change
    create_join_table :industries, :sectors do |t|
       t.index [:industry_id, :sector_id]
      # t.index [:sector_id, :industry_id]
    end
  end
end
