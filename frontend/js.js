$("#btn_salvar").on("click", function() {
    
    var txt_nome = $("#nome").val();
    var txt_mensagem = $("#mensagem").val();
    var txt_email = $("#email").val();

    $.ajax({
        url: "http://127.0.0.1:30005/",
        type: "post",
        data: {nome: txt_nome, mensagem: txt_mensagem, email: txt_email},
        beforeSend: function() {
            $("#resposta").html("Enviando......");
        }
    }).done(function(e) {
        $("#resposta").html("Dados salvos......");
    })

})
