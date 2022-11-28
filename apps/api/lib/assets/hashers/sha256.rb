require 'digest'

class SHA256Hasher
  def hash raw_string
    Digest::SHA256.hexdigest raw_string
  end
end
