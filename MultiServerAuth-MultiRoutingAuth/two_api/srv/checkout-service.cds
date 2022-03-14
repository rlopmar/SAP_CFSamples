using {two_api.db} from '../db/db';

service CheckoutService @(requires : 'authenticated-user') {

    entity Orders @(restrict : [
        {
            grant : ['READ'],
            to    : ['two_api_basic_read']
        },
        {
            grant : ['WRITE'],
            to    : ['two_api_basic_write']
        }
    ]) as projection on db.Orders;

    entity OrderItems @(restrict : [
        {
            grant : ['READ'],
            to    : ['two_api_basic_read']
        },
        {
            grant : ['WRITE'],
            to    : ['two_api_basic_write']
        }
    ]) as projection on db.OrderItems;

}
