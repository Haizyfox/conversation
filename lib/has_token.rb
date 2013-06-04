module HasToken
  extend ActiveSupport::Concern

  included do
    after_initialize :generate_token
  end

  module ClassMethods
    def from_param(param)
      where(token: param.to_s).first!
    end
  end

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

end
