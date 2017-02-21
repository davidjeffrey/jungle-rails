class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_confirmation(order)
  @order = order
  @line_items = LineItem.where(order_id: @order.id)
  mail(to: @order.email, subject: 'Order Confirmation' + @order.id)
end
end
