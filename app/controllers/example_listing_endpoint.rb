# This is an example endpoint used for listing items from the database.
#
# In this example I am asuming there is an ActiveRecord class setup called Item.
#
# Here we are using the two included sinatra helpers in this project, "get_objects"
# and "output". These two helpers work together to give you a lot of functionality
# as part of your endpoint. These two helpers will give the endpoint optional paging,
# sorting and filtering. Find more deatils in the helpers section of the README.

# get "/example" do
#
#   # Get objects
#   items = get_objects(Item)
#
#   # Output
#   output("item", items.as_json)
#
# end
