Factory.define :flash_card do |f|
  f.sequence(:question) {|n| "question#{n}" }
  f.answer { "answer" }
  f.association :list
end
