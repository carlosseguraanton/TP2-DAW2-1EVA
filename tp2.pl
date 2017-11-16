#!/usr/bin/perl -w

    use CGI;                                                                # Importación de la librería CGI
    $q = CGI->new;                                                          # Instanciación del objeto q con CGI (libreria)

    if(!$q->param) {
	    print $q->header,                                               # Creación del encabezado HTTP
	    print $q->header(-charset => 'utf8');                           # Determinación de la codificacion
	    print $q->start_html('Hola shurmano'),                          # Para comenzar el documento HTML
	    print $q->h1('Dame tu nombre y te saludo como dios manda'),     # Encabezado de nivel uno de tamaño
	    print $q->start_form(-onsubmit=>'/submit');                     # Iniciamos el formulario
	    #Añadimos el campo al formulario
	    print $q->label('Nombre: ');
	    print $q->textfield(-name=>'nombre',-size=>5,-maxlength=>50);
	    #Añadimos los botones de accion
	    print $q->submit('submit','Enviar');
	    print $q->reset('reset','limpiar datos');
	    print $q->end_form;                                             # Finalizamos el formulario
	    print $q->end_html;                                             # Para finalizar el documento HTML
    } else {
	    print $q->header(-charset => 'utf8');
	    print $q->start_html('Hola shurmano'),
	    my $nombre = $q->param('nombre');                               # Guardamos el parametro en la variable nombre
	    print $q->h1('Hola ' . $nombre . ' ¿como estás shurmano?'),     # Encabezado de nivel uno de tamaño
	    print $q->end_html;                                             # Para finalizar el documento HTML
    }
