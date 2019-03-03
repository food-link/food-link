FactoryBot.define do
  factory :user do
    email { 'test@gsu.com' }
    password { 'Pass123#*%($' }
    password_confirmation { password }

    factory :restaurant do
      role { :restaurant }
    end

    factory :charity do
      role { :charity }
    end
  end
end
