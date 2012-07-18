class AddVimeoAndYoutubeAndFacebookAndTwitterToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :vimeo, :string
    add_column :trips, :youtube, :string
    add_column :trips, :facebook, :string
    add_column :trips, :twitter, :string
  end
end
