#!/usr/bin/perl -w

    use CGI;                                                                # Importación de la librería CGI
    $q = CGI->new;                                                          # Instanciación del objeto q con CGI (libreria)

    if(!$q->param) {
	    print $q->header(-charset => 'utf8');                           # Creación del encabezado HTTP y determinación de la codificacion
	    print $q->start_html('Hola shurmano'),                          # Comenzamos el documento HTML
	    print $q->h1('Dame tu nombre y te saludo como dios manda'),     # Encabezado de nivel uno de tamaño
	    print $q->start_form(-onsubmit=>'/submit');                     # Iniciamos el formulario
	    print $q->label('Nombre: ');                                    # Añadimos el campo nombre al formulario
	    print $q->textfield(-name=>'nombre',-size=>5,-maxlength=>50);
	    print $q->submit('submit','Enviar');                            # Añadimos los botones de acción
	    print $q->reset('reset','limpiar datos');
	    print $q->end_form;                                             # Finalizamos el formulario
	    print $q->end_html;                                             # Para finalizar el documento HTML
    } else {
	    print $q->header(-charset => 'utf8');
	    print $q->start_html('Hola shurmano'),
	    my $nombre = $q->param('nombre');                               # Guardamos el parámetro en la variable nombre
	    print $q->h1('Hola ' . $nombre . ' ¿como estás shurmano?'),     # Encabezado h1 de tamaño con el saludo y el nombre
	    print $q->end_html;                                             # Finalizar el documento HTML
    }
