class ArchiveType < ApplicationRecord
    has_ancestry 
    has_many :archives

end
