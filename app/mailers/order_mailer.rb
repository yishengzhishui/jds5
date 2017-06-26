class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order = order
    @user  = order.user
    @product_lists = order.product_lists

    mail(to: @user.email, subject: "[JDstore] 感谢完成本次下单，以下是这次购物明细 #{order.token}")
  end

  def apply_cancel(order)
    @order = order
    @user  = order.user
    @product_lists = order.product_lists

    mail(to: "admin@test.com", subject: "[JDstore] 用户#{@user.email}申请取消订单 #{@order.token}")
  end
end
