# == Schema Information
#
# Table name: streams
#
#  id          :bigint(8)        not null, primary key
#  for_date    :date
#  num_streams :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  band_id     :bigint(8)
#  release_id  :bigint(8)
#
# Indexes
#
#  index_streams_on_band_id     (band_id)
#  index_streams_on_release_id  (release_id)
#
# Foreign Keys
#
#  fk_rails_...  (band_id => bands.id)
#  fk_rails_...  (release_id => releases.id)
#

class Stream < ApplicationRecord
  belongs_to :band
  belongs_to :release
end
