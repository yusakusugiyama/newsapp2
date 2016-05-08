require "csv"

users_csv = CSV.readlines("db/companies.csv")
users_csv.shift
users_csv.each do |row|
  User.create(email: row[1], nickname: row[14])
end