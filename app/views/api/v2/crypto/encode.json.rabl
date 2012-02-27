object @crypto
attribute :value
node(:encodingv2) { |c| c.value.reverse }