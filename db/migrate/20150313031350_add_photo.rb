class AddPhoto < ActiveRecord::Migration
  def change
    add_attachment :photos, :gambar
  end
end
