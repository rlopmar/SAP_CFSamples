using {one_api.db as db} from '../db/db';

service CustomerService @(requires : 'authenticated-user') {

    //Products can be read by all type of users
    //Products can only be edited/created/deleted by Editors or Admins
    entity Products @(restrict : [
        {
            grant : 'READ',
            to    : [
                'one_api_basic_reader',
                'one_api_basic_editor',
                'app_one_api_admin'
            ]
        },
        {
            grant : 'WRITE',
            to    : [
                'one_api_basic_editor',
                'app_one_api_admin'
            ]
        }
    ])  as projection on db.Products;

    //Customers is only accesible by Admins
    entity Customers @(restrict : [{
        grant : [
            'READ',
            'WRITE'
        ],
        to    : 'app_one_api_admin'
    }]) as projection on db.Customers;

}
