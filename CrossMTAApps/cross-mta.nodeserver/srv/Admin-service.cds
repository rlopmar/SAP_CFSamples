using {crossmta.nodeserver.db as db} from '../db/db';

service AdminService {

    entity Projects as projection on db.Projects;

}
