namespace crossmta.nodeserver.db;

using {cuid} from '@sap/cds/common';

entity Projects : cuid {
    name    : String;
    status  : Integer;
    company : String;
}
