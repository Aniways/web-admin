FactoryGirl.define do
  factory :style do
	name 's_test'
  end

  factory :pack do
	name 'p_test'
	style
  end
end