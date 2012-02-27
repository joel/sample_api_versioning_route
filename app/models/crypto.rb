class Crypto

  attr_accessor :value

  def encode(value)
    @value = value
    @value.reverse
  end
  alias_method :decode, :encode

  # # curl -v -H 'Accept: application/json' "http://localhost.com:3000/crypto/encode?value=foo"
  # def to_json(options = {})
  #   { origin: @value, encoding: @value.reverse }.to_json(options)
  # end

end
