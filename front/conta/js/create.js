$(document).ready( function () {
	

    //Obtem a lista de conta e monta a dataTable
    $.get("http://localhost:3000/contas.json", function(data, status){
        if(status == "success"){

            $.each(data, function (i, item) {
                $('#pai').append($('<option>', { 
                    value: item.id,
                    text : item.nome 
                }));
            });
        }
    });
} );

function saveConta(){

    var json = new Object();
    json.nome = $('#nome').val();
    json.status = $('#status').val();
    json.pai = $('#pai').val();
    var jsonString= JSON.stringify(json);

    /*$.post("http://localhost:3000/contas", jsonString, function(data,status,xhr){
        if(status == "success"){
            alert(JSON.stringify(data))
        }else{
            alert(status+", data: "+data)
        }
    }, "jsonp")*/

    $.ajax({

        url: "http://localhost:3000/contas",
        data: jsonString,
        type: 'POST',
        crossDomain: true,
        dataType: 'json',
        success: function() { alert("Success"); },
        error: function() { alert('Failed!'); },
        beforeSend: setHeader
    });

}

function setHeader(xhr) {

  xhr.setRequestHeader('Access-Control-Allow-Origin', "localhost");
}