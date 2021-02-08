# # frozen_string_literal: true

# require 'rails_helper'

# describe 'いいねのテスト' do
#   it '有効ないいねの場合は保存されるか' do
#     favorite = Favorite.new(book_id: 1, user_id: 1)
#     expect(favorite).to be_valid
#   end
#   it '1人のユーザーは1投稿に1以上のいいねをつけることができない' do
#     favorite_first = Favorite.new(book_id: 1, user_id: 1)
#     favorite_second = Favorite.new(book_id: 1, user_id: 1)
#     expect(favorite_first).to be_valid
#     expect(favorite_second).to be_invalid
#   end
# end