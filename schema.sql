Table product_category {
  id int [primary key]
  name varchar
  desc text
  created_at timestamp
  modified_at timestamp
  deleted_at timestamp
}
Table product_inventory{
  id int [primary key]
  quantity int
  created_at timestamp
  modified_at timestamp
  deleted_at timestamp
}
Table discount{
  id int [primary key]
  name varchar
  desc text
  discount_percent decimal
  active boolean
  created_at timestamp
  modified_at timestamp
  deleted_at timestamp
}

Table product{
  id int [primary key]
  name varchar
  desc text
  SKU varchar
  category_id int [ref:> product_category.id]
  inventory_id int [ref:> product_inventory.id]
  price decimal
  discount_id int [ref:> discount.id]
  created_at timestamp
  modified_at timestamp
  deleted_at timestamp
}







