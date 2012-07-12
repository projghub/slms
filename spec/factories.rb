FactoryGirl.define do
#  factory :conway do
#
#  end

  factory :answer do
    sequence(:name) { |n| "Answer #{n}" }
  end

  factory :assignment do
    name "Assignment One"
  end

  factory :assignment_type do
    name "Assignment Type"
  end

  factory :classroom do
    teacher_id 1
    name "Classroom One"
  end

  factory :grade_level do
    sequence(:name) { |n| "Grade Level #{n}" }
  end

  factory :institution do
    name "Institution"
  end

  factory :submission_type do
    name "Submission Type"
  end

  factory :question do
    sequence(:name) { |n| "Question #{n}" }
  end

  factory :quiz do
    sequence(:name) { |n| "Quiz #{n}" }
  end

  factory :user do
    sequence(:first_name) { |n| "First #{n}" }
    sequence(:last_name) { |n| "Last #{n}" }
    sequence(:email) { |n| "email-#{n}@example.com" }
  end
end
