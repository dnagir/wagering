Factory.sequence :email do |n|
  "email#{n}@example.com"
end

Factory.define(:user) do |f|
  f.name "Dima Nagir"
  f.email { Factory.next :email }
end

