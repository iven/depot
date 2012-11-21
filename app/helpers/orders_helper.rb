module OrdersHelper

  def payment_type_options
    Order::PAYMENT_TYPES.map {|x| [I18n.t('orders.payment_types.' + x.parameterize.underscore), x]}
  end
end
