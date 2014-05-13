FactoryGirl.define do
  factory :style do
    category 'Feelings'
    sequence(:name) {|n| "style_#{n}" }
  end

  factory :icon do
    sequence(:name) {|n| "icon_#{n}" }
    asset_ldpi ''
    pack
  end

  factory :pack do
    sequence(:name) {|n| "pack_#{n}" }
    style

    ignore do
      icons_count 5
    end

    after(:build) do |pack, evaluator|
      icons = build_list(:icon, evaluator.icons_count, pack: pack)
      pack.icons = icons
    end
  end
end