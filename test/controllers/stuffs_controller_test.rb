# require 'test_helper'
#
# class StuffsControllerTest < ActionDispatch::IntegrationTest
#   setup do
#     @stuff = stuffs(:one)
#   end
#
#   test "should get index" do
#     get stuffs_url
#     assert_response :success
#   end
#
#   test "should get new" do
#     get new_stuff_url
#     assert_response :success
#   end
#
#   test "should create stuff" do
#     assert_difference('Stuff.count') do
#       post stuffs_url, params: { stuff: { description1: @stuff.description1, description2: @stuff.description2, description3: @stuff.description3, image: @stuff.image, name: @stuff.name, sub_name1: @stuff.sub_name1, sub_name2: @stuff.sub_name2, user_id: @stuff.user_id } }
#     end
#
#     assert_redirected_to stuff_url(Stuff.last)
#   end
#
#   test "should show stuff" do
#     get stuff_url(@stuff)
#     assert_response :success
#   end
#
#   test "should get edit" do
#     get edit_stuff_url(@stuff)
#     assert_response :success
#   end
#
#   test "should update stuff" do
#     patch stuff_url(@stuff), params: { stuff: { description1: @stuff.description1, description2: @stuff.description2, description3: @stuff.description3, image: @stuff.image, name: @stuff.name, sub_name1: @stuff.sub_name1, sub_name2: @stuff.sub_name2, user_id: @stuff.user_id } }
#     assert_redirected_to stuff_url(@stuff)
#   end
#
#   test "should destroy stuff" do
#     assert_difference('Stuff.count', -1) do
#       delete stuff_url(@stuff)
#     end
#
#     assert_redirected_to stuffs_url
#   end
# end
