class CreateQuestionsTagsJoinTable < ActiveRecord::Migration
  def self.up
  	create_table :questions_tags, :id => false do |t|
  		t.references :question, :tag
  	end
  	add_index :questions_tags, [:question_id, :tag_id]
  end
  def self.down
  	drop_table :questions_tags
  end
end
