isc.DataSource.create({
    Constructor:"WebService",
    allowAdvancedCriteria:true,
    ID:"WebService",
    addGlobalId:false,
    fields:[
        {
            name:"location",
            type:"url",
            validators:[
            ]
        },
        {
            name:"targetNamespace",
            type:"url",
            validators:[
            ]
        },
        {
            multiple:true,
            name:"schemaImports",
            type:"Object",
            validators:[
            ]
        },
        {
            multiple:true,
            name:"wsdlImports",
            type:"Object",
            validators:[
            ]
        },
        {
            multiple:true,
            name:"operations",
            type:"WebServiceOperation",
            validators:[
            ]
        },
        {
            multiple:true,
            name:"portTypes",
            type:"Object",
            validators:[
            ]
        },
        {
            multiple:true,
            name:"bindings",
            type:"Object",
            validators:[
            ]
        },
        {
            multiple:true,
            name:"messages",
            type:"WSDLMessage",
            validators:[
            ]
        },
        {
            name:"globalNamespaces",
            type:"Object",
            validators:[
            ]
        }
    ]
})
