object @crypto
attribute :value
node(:encoding) { |c| c.value.reverse }