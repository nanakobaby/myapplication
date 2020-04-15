ActiveRecord::Schema.define(version: 2020_04_15_014832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "talks", force: :cascade do |t|
    t.text "content"
  end

end
