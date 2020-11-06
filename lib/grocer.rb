def find_item_by_name_in_collection(name, collection)
  counter = 0
  while counter < collection.length
    if collection[counter][:item] == name
      return collection[counter]
    end
    counter += 1
  end
end

  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

def consolidate_cart(cart)
  consolidated_cart = []
  i = 0                                
  while i < cart.length do
    new_item = find_item_by_name_in_collection(cart[i][:item], consolidated_cart)
    if new_item
      new_item[:count] += 1
    else cart[i][:count] = 1
      consolidated_cart << cart[i]
    end
    i += 1
  end
  return consolidated_cart
end


  