object @crypto
attribute :value
node(:encodingv0) { |c| c.value.reverse }