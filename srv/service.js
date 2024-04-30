const cds = require('@sap/cds');
class salesDetails extends cds.ApplicationService{
    async init(){
        const {SalesDetails} = this.entities;
        const orders =  await cds.connect.to('API_SALESORGANIZATION_SRV');
        this.on('READ',SalesDetails,async (req,res)=>{
            return await orders.tx(req).run(req.query);
            });
    }
}
module.exports = {salesDetails}
