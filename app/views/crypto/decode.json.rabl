object @crypto
attribute :value
node(:decodingv0) { |c| c.value.reverse }