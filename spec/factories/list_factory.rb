Factory.define :list do |f|
  f.sequence(:title) {|n| "list#{n}" }
end
