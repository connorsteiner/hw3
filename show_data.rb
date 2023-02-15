puts "There are #{Post.all.count} posts"

posts = Post.all

for post in posts
  title = post["title"]
  description = post["description"]
  posted_on = post["posted_on"]
  place_id = post["place_id"]
  puts "#{title} - #{description} - #{posted_on} - #{place_id}"
end

# Rails.application.eager_load!
# models = ApplicationRecord.descendants
# for model in models
#   next if ARGV.presence && !ARGV.include?(model.to_s)

#   puts
#   if model.count > 0
#     puts Tabulo::Table.new(model.all, *model.column_names.map(&:to_sym), title: model.to_s).pack(max_table_width: :auto)
#   else
#     table = Tabulo::Table.new([nil], title: model.to_s) do |t|
#       for column in model.column_names
#         t.add_column(column, &:itself)
#       end
#     end

#     puts table.pack(max_table_width: :auto)
#   end
#   puts
# end