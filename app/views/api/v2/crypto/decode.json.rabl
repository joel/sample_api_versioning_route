object @crypto
attribute :value
node(:decodingv2) { |c| c.value.reverse }