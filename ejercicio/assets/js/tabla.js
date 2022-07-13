$(document).ready(function() {
    cargarTabla();
    cargarConsulta();

    function cargarTabla(){
        console.log('Cargando Datos');
        $.ajax({
            url: 'assets/php/tabla.php',
            type: 'POST',
            success: function(response) { console.log(response)
                var datos = JSON.parse(response);
                let template = ''; 
                datos.forEach(dato => {
                    template += `
                    <tr scope="row">
                    <td> ${dato.idRegistro} </td>
                    <td> ${dato.Nombre}</td>
                    <td> ${dato.Apellidos} </td>
                    <td> ${dato.fechaNacimiento} </td>
                    <td> ${dato.fechaRegistroEnSistema} </td>
                    </tr>
                    `
                });
                $('#tabla01').html(template); 
            }
        })
    };
   
    $('#formAgregar').submit(function(e){
        console.log('Subiendo Datos');
        e.preventDefault();
        Nombre = $.trim($('#Nombre').val());
        Apellidos = $.trim($('#Apellidos').val());
        fechaNacimiento = $.trim($('#fechaNacimiento').val());
        //fechaRegistroEnSistema = $.trim($('#fechaRegistroEnSistema').val());
        $.ajax({
            url: 'assets/php/nuevoRegistro.php',
            type: 'POST',
            datatype: 'json',
            data: {Nombre:Nombre, Apellidos: Apellidos, fechaNacimiento: fechaNacimiento, /*fechaRegistroEnSistema: fechaRegistroEnSistema*/},

        });
        console.log(Nombre, Apellidos, fechaNacimiento);
        location.reload();
    });

    function cargarConsulta(){
        console.log('Cargando Datos que el nombre empieze con la letra P');
        $.ajax({
            url: 'assets/php/consulta.php',
            type: 'POST',
            success: function(response) { console.log(response)
                var datos = JSON.parse(response);
                let template = ''; 
                datos.forEach(dato => {
                    template += `
                    <tr scope="row">
                    <td> ${dato.idRegistro} </td>
                    <td> ${dato.Nombre}</td>
                    <td> ${dato.Apellidos} </td>
                    <td> ${dato.fechaNacimiento} </td>
                    <td> ${dato.fechaRegistroEnSistema} </td>
                    </tr>
                    `
                });
                $('#tabla02').html(template); 
            }
        })
    };

         
});    