object @crypto
attribute :value
node(:decodingv1) { |c| c.value.reverse }