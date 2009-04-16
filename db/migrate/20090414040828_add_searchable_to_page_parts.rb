class AddSearchableToPageParts < ActiveRecord::Migration
  def self.up
    add_column :page_parts, :searchable, :boolean, :default => true 
    Radiant::PageParts.find(:all).each do |pp|
      pp.searchable = true
    end
  end

  def self.down
    remove_column :page_parts, :searchable
  end
end
