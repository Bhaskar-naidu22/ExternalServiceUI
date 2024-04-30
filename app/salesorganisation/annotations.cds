using salesDetails as service from '../../srv/service';
annotate service.SalesDetails{
    CompanyCode @Common : { ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'SalesDetails',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : CompanyCode,
                ValueListProperty : 'CompanyCode',
            },
        ],
    }, }
}

annotate service.SalesDetails with @(
    UI.HeaderInfo:{
        TypeName:'Sale Record',
        TypeNamePlural:'Sale Records'
    },
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'SalesOrganization',
                Value : SalesOrganization,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SalesOrganizationCurrency',
                Value : SalesOrganizationCurrency,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CompanyCode',
                Value : CompanyCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IntercompanyBillingCustomer',
                Value : IntercompanyBillingCustomer,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.SelectionFields : [CompanyCode,IntercompanyBillingCustomer],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'SalesOrganization',
            Value : SalesOrganization,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SalesOrganizationCurrency',
            Value : SalesOrganizationCurrency,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CompanyCode',
            Value : CompanyCode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'IntercompanyBillingCustomer',
            Value : IntercompanyBillingCustomer,
        },
    ],
);

