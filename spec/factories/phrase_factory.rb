Factory.define :phrase do |f|
  f.sequence(:text) {|n| "text#{n}" }
  f.translation { "translation" }
end
