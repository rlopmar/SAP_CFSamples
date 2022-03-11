namespace one_api.db;

using {cuid} from '@sap/cds/common';


entity Products : cuid {
    name        : String(200);
    description : String(2000);
    price       : Integer;
    currency    : String(3);
}

entity Customers : cuid {
    firstName : String(200);
    lastName  : String(200);
    email     : String(200);
}
