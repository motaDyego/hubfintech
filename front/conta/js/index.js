$(document).ready( function () {
    //iniciamos com dados vazios.
    var dt = [];
    var dtTable;

    //startDtTable(dtTable, dt);

    //Obtem a lista de conta e monta a dataTable
    $.get("http://localhost:3000/contas.json", function(data, status){
        if(status == "success"){
            var tipoConta;
            dt = [];
            for(item in data){
                //Se a conta nao tem pai, eh uma conta matriz, se tem, eh um conta filial.
                tipoConta = data[item].pai_id ? "FILIAL" : "MATRIZ"
                dt.push([data[item].nome, data[item].status, tipoConta]);
            }
        }
        startDtTable(dtTable, dt);
    });
    
    //Inicia a dataTable
    function startDtTable(dtTable, dt){
        if(dtTable){
            dtTable.destroy();
        }
        dtTable = $('#table_id').DataTable({"data":dt});
    }
} );