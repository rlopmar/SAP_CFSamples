using {two_api.db} from '../db/db';

service CheckoutService @(requires : 'authenticated-user') {

    entity Orders     as projection on db.Orders;
    entity OrderItems as projection on db.OrderItems;

}
