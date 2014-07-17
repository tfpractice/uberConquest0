class CreateJoinTableInquirySegment < ActiveRecord::Migration
  def change
    create_join_table :inquiries, :segments do |t|
       t.index [:inquiry_id, :segment_id]
       t.index [:segment_id, :inquiry_id]
    end
  end
end
