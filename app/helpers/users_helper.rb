module UsersHelper
  def signed_in_helper
    out = ''
    if @user.shop.present? && @user.shop.Approved?
      out << link_to('my shop', user_shop_path(@user),class:'btn btn-pro')
    elsif  @user.shop.present? && @user.shop.NotApproved? 
      out << "<p>shop is not approved yet</p>"
    else
      if current_user.seller?
       out << link_to('create shop', new_user_shop_path(@user),class:'btn btn-pro')
      end 
    end
    out.html_safe
  end
end
