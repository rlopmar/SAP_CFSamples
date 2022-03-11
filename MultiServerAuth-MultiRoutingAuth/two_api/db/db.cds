namespace two_api.db;

using {cuid} from '@sap/cds/common';


entity Orders : cuid {
    userId : UUID;
    items  : Association to many OrderItems
                 on items.order = $self;
}

entity OrderItems : cuid {
    productId : UUID;
    order     : Association to Orders;
}
