class VineMeme < ActiveRecord::Base
  after_initialize :generate_token

  def to_param
    token
  end

  private

  def generate_token
    unless persisted?
      self.token = random_token
    end
  end

  def random_token
    h = token_character_set

    random_token_length.times.map { h[Random.new.rand(0..(h.length - 1))] }.join('')
  end

  def random_token_length
    6
  end

  def token_character_set
    Hash[(0...61).to_a.zip((('0'..'9').to_a + ('a'..'z').to_a + ('A'..'Z').to_a))]
  end

  attr_accessible :bottom, :token, :top, :url
end
