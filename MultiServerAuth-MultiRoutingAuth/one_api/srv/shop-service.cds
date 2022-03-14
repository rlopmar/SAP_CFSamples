using {one_api.db as db} from '../db/db';

service ShopService @(requires : 'authenticated-user') {

    entity Products @(restrict : [
        {
            grant : ['READ'],
            to    : ['one_api_basic_read']
        },
        {
            grant : ['WRITE'],
            to    : ['one_api_basic_write']
        }
    ])  as projection on db.Products;

    entity Customers @(restrict : [{
        grant : ['*'],
        to    : ['one_api_admin']
    }]) as projection on db.Customers;
}
