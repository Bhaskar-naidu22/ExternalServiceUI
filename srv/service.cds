using {API_SALESORGANIZATION_SRV as sales} from './external/API_SALESORGANIZATION_SRV';

service salesDetails {
    @readonly entity SalesDetails as projection on sales.A_SalesOrganization
}