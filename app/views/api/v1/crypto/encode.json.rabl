object @crypto
attribute :value
node(:encodingv1) { |c| c.value.reverse }