module ProductsHelper
  def product_show_logic
    product_show = ''
    if (current_user.present? && current_user.seller?)||(current_user.present? && current_user.superadmin?)
      product_show << link_to('edit', edit_product_path(@product),class:'btn btn-pro ml-3')
      product_show << link_to('delete', product_path(@product),
      data: {
        turbo_method: :delete,
        turbo_confirm: "Are you sure?"
      },class:'btn btn-pro-del')
    elsif current_user.present? && current_user.buyer?
      product_show << button_to("Add to Cart", add_path(:product_id => @product), :method => :post, class:'btn btn-cart')
    else
      product_show << "<button onclick='Data()', class='btn btn-cart'>Add To Cart</button>"
    end
    product_show.html_safe
  end
end
