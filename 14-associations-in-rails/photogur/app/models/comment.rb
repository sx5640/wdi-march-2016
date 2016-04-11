class Comment < ActiveRecord::Base
  belongs_to :picture
  #picture -> getter/reader
  #picture= -> setter/writer
  #build_picture -> like 'new'
  #create_picture -> like 'create'
  #create_picture! -> create but fail loudly
end
