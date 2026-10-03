extends Node

#Datos necesarios: "Perfil de escritor", Correo de escritor, Fecha, Texto del mail, Imagenes inferiores 

var Ej: Dictionary ={
	"Trabajo de historia":{
		"User": "",
		"Profile": "",
		"Issue": "",
		"Mail": ""},
	"Trabajo de historia: Malvado":{
		"User": "",
		"Profile": "",
		"Issue": "",
		"Mail": "",
		"Incorrect":""},
}

var Good: Dictionary ={
	"Mensaje creadores":{
		"User": "Creadores <te-regalamos-el-punto@gmail.com>",
		"Profile": "Sin",
		"Issue": "Saludos",
		"Mail": "[wave][rainbow]Esperamos que disfrutes el juego :)[/rainbow][/wave]
		[font_size=11]Atte: Los creadores[/font_size]"},
	"Presentación Informática":{
		"User": "Mateo <matematemateo789@gmail.com>",
		"Profile": "Sin",
		"Issue": "Link Zoom",
		"Mail": "Conectate en un ratito asi terminamos la presentación de Informática.  
		Link de zoom: 
		[color=#0000EE]https://zoom.us/j/9876543210[/color]"},
	"Tarea de Matemática":{
		"User": "Vicente <vincen5621@gmail.com>",
		"Profile": "Sin",
		"Issue": "Tarea de Matemática",
		"Mail": "Hola, perdon por molestarte, pero me podrias pasar las actividades que nos dejaron de tarea en Matemática.
		Gracias :D"},
	"Trabajo de Historia":{
		"User": "Lucas <lucas.garcia@gmail.com>",
		"Profile": "Sin",
		"Issue": "Trabajo de historia",
		"Mail": "Hola, Martín:
		Te mando el trabajo de historia que habíamos preparado.
		También adjunté el documento con las respuestas en otro mail.
		Avisame si querés que cambiemos alguna parte antes de entregarlo mañana."},
	"Trabajo de Lengua":{ #5
		"User": "Santiago <sangonzalez2012@gmail.com>",
		"Profile": "Sin",
		"Issue": "Trabajo de Lengua",
		"Mail": "Hola, Maxi:
		Necesito que me pases el trabajo de Lengua que hicimos.
		Trata de pasarmelo lo antes posible, porque sino no llego a estudiarlo."},
	"Amazon: Confirmacion de pedido":{
		"User": "Amazon <clientes@amazon.com.ar>",
		"Profile": "Amazon",
		"Issue": "Confirmación de pedido",
		"Mail": "Hola:
		Confirmamos que recibimos tu pedido.
		Producto: Auriculares inalámbricos
		Cantidad: 1
		Total: $85.000
		Te enviaremos otro correo cuando el pedido haya sido despachado.
		
		Gracias por comprar en Amazon Argentina."},
	"Amazon: Envío de pedido":{
		"User": "Amazon <envio-pedido@amazon.es>",
		"Profile": "Amazon",
		"Issue": "Su paquete está en camino",
		"Mail": "Puedes hacer un seguimiento del estado de la entrega en cualquier momento con el siguiente link:
		[color=#0000EE]https://www.amazon.es/progress-tracker/package/[/color]
		Llega: Mañana antes de las 22:00"},
	"Amazon: Código de Verificación":{
		"User": "Amazon <envio-pedido@amazon.es>",
		"Profile": "Amazon",
		"Issue": "Código de Verificación",
		"Mail": "Tu código de verificación es: 849203
		Utiliza este código para completar el inicio de sesión o la verificación de tu cuenta. Este código caducará en 10 minutos.
		Nota: Amazon nunca te pedirá este código por teléfono ni por mensaje de texto. No lo compartas con nadie."},
	"Amazon: Suscripción renovada":{
		"User": "Amazon prime <prime@amazon.es>",
		"Profile": "Amazon",
		"Issue": "Suscripción renovada",
		"Mail": "Gracias por ser miembro de Amazon Prime. Te confirmamos que hemos procesado el pago de tu suscripción anual.
		Puedes administrar tu suscripción o cancelarla en cualquier momento desde el siguiente link:
		[color=#0000EE]https://www.amazon.es/mc/pipeline/memberships/prime/manage/[/color]"},
	"Google: Acceso desconocido":{ #10
		"User": "Google <no-reply@accounts.google.com>",
		"Profile": "Google",
		"Issue": "Acceso desconocido",
		"Mail": "Hemos detectado un nuevo inicio de sesión en tu cuenta de Google en un dispositivo Windows. Si has sido tú, no es necesario que hagas nada. De lo contrario, te ayudaremos a proteger la cuenta.
		[color=#0000EE]https://myaccount.google.com/u/1/notifications/eid/[/color]"},
	"Google: Almacenamiento casi lleno":{
		"User": "Google <no-reply@accounts.google.com>",
		"Profile": "Google",
		"Issue": "Almacenamiento casi lleno",
		"Mail": "Estás utilizando el 95 % de tu almacenamiento. Has utilizado 14,2 GB de los 15 GB de tu almacenamiento gratuito. Si te quedas sin espacio, no podrás enviar ni recibir correos en Gmail ni guardar nuevos archivos en Google Drive. 
		Administrar almacenamiento:
		[color=#0000EE]https://one.google.com/storage[/color]"},
	"Google: Asistencia para la contraseña":{
		"User": "Google <no-reply@accounts.google.com>",
		"Profile": "Google",
		"Issue": "Asistencia para contraseña",
		"Mail": "Hemos recibido una solicitud para restablecer la contraseña de tu cuenta de Google.
		Haz clic en el siguiente enlace para elegir una contraseña nueva o utiliza este código de verificación: 739104
		[color=#0000EE]https://accounts.google.com/signin/v2/recovery[/color]
		Si no has solicitado este cambio, puedes ignorar este mensaje de forma segura."},
	"Instagram: Inicio de sesión sospechoso":{
		"User": "Instagram <no-reply@mail.instagram.com>",
		"Profile": "Instagram",
		"Issue": "Inicio de sesión desconocido",
		"Mail": "Hemos detectado un nuevo inicio de sesión en tu cuenta de Instagram.
		Dispositivo: Chrome en Windows
		Ubicación estimada: Rafaela, Argentina
		Hora: 26 de septiembre de 2026
		Si fuiste tú, puedes ignorar este mensaje. Si no fuiste tú, asegura tu cuenta ahora.
		[color=#0000EE]https://www.instagram.com/accounts/password/change/[/color]"},
	"Instagram: Mención Fulanito":{
		"User": "Instagram <no-reply@mail.instagram.com>",
		"Profile": "Instagram",
		"Issue": "Mención en publicación",
		"Mail": "@Fulanito12403 te ha etiquetado en una publicación: '¡Nos vemos en el evento!'. Entra a Instagram para ver el comentario completo y responder."},
	"Instagram: Mención Lucas":{ #15
		"User": "Instagram <no-reply@mail.instagram.com>",
		"Profile": "Instagram",
		"Issue": "Mención en publicación",
		"Mail": "Hola. @LucasHistoriador_67 te ha etiquetado en una publicación. Entra a Instagram para ver el comentario completo y responder. 
		Puede hacerlo por este link o por la aplicación desde su celular
		[color=#0000EE]https://www.instagram.com/LucasHistoriador_67/p2[/color]"},
	"Instagram: Publicidad":{
		"User": "Instagram <no-reply@mail.instagram.com>",
		"Profile": "Instagram",
		"Issue": "Promoción activada",
		"Mail": "¡Tu campaña 'Promoción de Verano' ya está activa!
		Revisa el rendimiento en tiempo real y el enlace a tu sitio web desde el administrador de anuncios."},
	"Ilolay: Entrevista":{
		"User": "Ilolay <entrevistas@ilolay.com>",
		"Profile": "Ilolay",
		"Issue": "Confirmación de entrevista",
		"Mail": "Hola, Martín:
		Te escribimos para confirmar la entrevista correspondiente
		al proceso de selección.
		Fecha: miércoles 23 de septiembre
		Hora: 10:00
		Modalidad: videollamada
		Si necesitás modificar el horario, respondé a este correo.
		Saludos"},
	"Mercado Pago: Mayor de edad":{
		"User": "Mercado Pago <no-responder@mercadopago.com>",
		"Profile": "Mercado Pago",
		"Issue": "Ya sos mayor",
		"Mail": "Ahora sos responsable de tu cuenta
		Como sos mayor de edad ya no necesitás que tus padres te autoricen tu cuenta."},
	"Santander: Ingreso desconocido":{
		"User": "Banco Santander <proteccionalusuario@santander.com.ar>",
		"Profile": "Santander",
		"Issue": "Ingreso desconocido",
		"Mail": "Estimado cliente: Detectamos un inicio de sesión inusual en su cuenta.
		Si es usted el que ingreso, no hace falta que haga nada. De lo contrario verifique el ingreso.
		[color=#0000EE]http://bancoSantander-verificacion.gob.ar[/color]"},
	"Santander: Resumen disponible":{ #20
		"User": "Banco Santander <proteccionalusuario@santander.com.ar>",
		"Profile": "Santander",
		"Issue": "Nuevo resumen disponible",
		"Mail": "Hola:
		Ya está disponible tu resumen mensual en la aplicación oficial del banco. Podés consultarlo ingresando normalmente desde la aplicación. Este correo es únicamente informativo.
		Banco Santander"},
	"Utileria: Pedido confirmado":{
		"User": "La Utileria <lautileria@gmail.com>",
		"Profile": "Formal",
		"Issue": "¡Pago confirmado!",
		"Mail": "Recibimos el pago de tu pedido:
		Decant 5ml 9pm night out
		
		Dirección de retiro:
		La Utilería/ Luis Fanti 608, Ilolay"},
	} #21 total

var Bad: Dictionary ={
	"Estafador":{
		"User": "wpdai120385s@gmail.com",
		"Profile": "Sin",
		"Issue": "",
		"Mail": "[color=#0000EE]dawjklazmcq10291a_/skaip.[/color]",
		"Incorrect":"[shake][b][color=#0000EE]dawjklazmcq10291a_/skaip.[/color][/b][/shake]"},
	"Inversiones":{
		"User": "Eugenio <Eugenio.Roca@gmail.com>",
		"Profile": "Sin",
		"Issue": "Inversiones",
		"Mail": "Hola, Dario:
		Te mando el link de la página para invertir de la que te hable
		[color=#0000EE]inverciones.prime/seguras.com.ar[/color]
		
		Avisame si querés ayuda para registrarte
		
		Saludos de tu buen amigo, Eugenio",
		"Incorrect":"Hola, Dario:
		Te mando el link de la página para invertir de la que te hable
		[shake][b][color=#0000EE]inverciones.prime/seguras.com.ar[/color][/b][/shake]
		
		Avisame si querés ayuda para registrarte
		
		Saludos de tu buen amigo, Eugenio"},
	"Herencia falsa":{
		"User": "Richard <richard_vance@xs.com>",
		"Profile": "Formal",
		"Issue": "Transferencia no reclamada",
		"Mail": "Estimado beneficiario, soy el abogado Richard Vance. 
		Mi difunto cliente, quien compartía su mismo apellido, falleció en un accidente aéreo dejando USD 8.500.000 en un banco. Al no tener parientes, la ley permite transferirlo a un homónimo. Requiero su cooperación para la reclamación a su nombre. 
		Responder con su teléfono y dirección para iniciar el trámite.",
		"Incorrect":"Estimado beneficiario, soy el abogado Richard Vance. 
		Mi difunto cliente, quien compartía su mismo apellido, falleció en un accidente aéreo dejando USD 8.500.000 en un banco. [shake][b]Al no tener parientes, la ley permite transferirlo a un homónimo.[/b][/shake] Requiero su cooperación para la reclamación a su nombre. 
		[shake][b]Responder con su teléfono y dirección para iniciar el trámite.[/b][/shake]"},
	"Ransomware":{
		"User": "ans_aswppá_dka@",
		"Profile": "Hacker",
		"Issue": "Aviso de seguridad urgente",
		"Mail": "Hola. Instalé un programa espía en su dispositivo cuando visitó un sitio web para adultos. Tengo una grabación en pantalla dividida de usted y del video que estaba viendo. Si no realiza un pago de $500 en Bitcoin a la dirección descrita a continuación en las próximas 48 horas, enviaré este video a todos sus contactos de correo y redes sociales. 
		Dirección cripto: bc1qxy2kgdygjrsqtzq2n0yrf2493p83kkfjhx0wlh",
		"Incorrect":"Hola. [shake][b]Instalé un programa espía en su dispositivo cuando visitó un sitio web para adultos. Tengo una grabación en pantalla dividida de usted y del video que estaba viendo. Si no realiza un pago de $500 en Bitcoin a la dirección descrita a continuación en las próximas 48 horas, enviaré este video a todos sus contactos de correo y redes sociales. 
		Dirección cripto: bc1qxy2kgdygjrsqtzq2n0yrf2493p83kkfjhx0wlh[/b][/shake]"},
	"Trabajo falso":{ #5
		"User": "Fraiz <fraiz_soporte@x84-mail-server.cz>",
		"Profile": "Formal",
		"Issue": "Oferta laboral: Fraiz",
		"Mail": "Hola, vimos tu perfil y nos impactó tu trabajo. 
		Nuestra empresa internacional está expandiéndose y buscamos un colaborador para revisar archivos y procesar pagos sencillos desde casa (1 o 2 horas diarias). Pago inicial de $2,000 USD semanales. Para ingresar, debes descargar nuestro software propietario y enviar tu confirmación.
		Links de descarga:
		[color=#0000EE]https://drive-share-download-link.com/SoftwareSetup.exe
		https://drive-share-download-link.com/SoftwareSetup.exe[/color]",
		"Incorrect":"Hola, vimos tu perfil y nos impactó tu trabajo. 
		Nuestra empresa internacional está expandiéndose y buscamos un colaborador para revisar archivos y procesar pagos sencillos desde casa (1 o 2 horas diarias). [shake][b]Pago inicial de $2,000 USD semanales[/b][/shake]. Para ingresar, debes descargar nuestro software propietario y enviar tu confirmación.
		Links de descarga:
		[shake][b][color=#0000EE]https://drive-share-download-link.com/SoftwareSetup.exe
		https://drive-share-download-link.com/SoftwareSetup.exe[/color][/b][/shake]"},
	"Banco Nacional: Resumen malvado":{
		"User": "Banco Nacional <nacional@bancnacional.com.ar>",
		"Profile": "Formal",
		"Issue": "Nuevo resumen disponible",
		"Mail": "Hola:
		Ya está disponible tu resumen mensual en la aplicación oficial del banco.
		Podés consultarlo ingresando con tu cuenta en el siguiente link.
		[color=#0000EE]htps//resumen.banconacional/ingresa.tus.datos.ya.com[/color]
		Banco Nacional Argentino",
		"Incorrect":"Hola:
		Ya está disponible tu resumen mensual en la aplicación oficial del banco.
		Podés consultarlo ingresando con tu cuenta en el siguiente link.
		[color=#0000EE]htps//resumen.banconacional/[shake][b]ingresa.tus.datos.ya.com[/b][/shake][/color]
		Banco Nacional Argentino"},
	"Correo: Problema con entrega":{
		"User": "Correo <Pedidos@correo-argentino-.com>",
		"Profile": "Sin",
		"Issue": "Problema con entrega",
		"Mail": "Hola: No pudimos entregar su paquete debido a un problema con la dirección registrada.
		Debe pagar $1.250 para reprogramar la entrega. Si no realiza el pago, el paquete será devuelto.
		Link para pagar por Mercado Pago:
		[color=#0000EE]https://reprogramación-envio.gob.ar[/color]",
		"Incorrect":"Hola: No pudimos entregar su paquete debido a un problema con la dirección registrada.
		[shake][b]Debe pagar $1.250 para reprogramar la entrega. Si no realiza el pago, el paquete será devuelto.[/b][/shake]
		Link para pagar por Mercado Pago:
		[color=#0000EE]https://reprogramación-envio.gob.ar[/color]"},
	"Google: Acceso peligroso":{
		"User": "Google <googlesdd1@gmail.com>",
		"Profile": "Google",
		"Issue": "Acceso malicioso",
		"Mail": "Hemos detectado un nuevo inicio de sesión en tu cuenta de Google por un dispositivo malicioso. Te ayudaremos a proteger la cuenta urgentemente.
		[color=#0000EE]https://yacount.ggle.com/u/1/eid/[/color]",
		"Incorrect": "Hemos detectado un nuevo inicio de sesión en tu cuenta de Google por un [shake][b]dispositivo malicioso[/b][/shake]. Te ayudaremos a proteger la cuenta [shake][b]urgentemente.
		[color=#0000EE]https://yacount.ggle.com/u/1/eid/[/color][/b][/shake]"},
	"Google: Almacenamiento lleno":{
		"User": "Google <google_.s23@gmail.com>",
		"Profile": "Google",
		"Issue": "Almacenamiento lleno",
		"Mail": "Estás utilizando todo tu almacenamiento de la nube. 
		Debera entrar al siguiente link para conseguir más espacio:
		[color=#0000EE]https://e.google.com/storage._/[/color]",
		"Incorrect": "Estás utilizando todo tu almacenamiento de la nube. 
		[shake][b]Debera entrar al siguiente link para conseguir más espacio:[/b][/shake]
		[color=#0000EE]https://e.google.com/storage._/[/color]"},
	"Google: Contraseña vulnerada":{ #10
		"User": "Google <googgle@gmail.com>",
		"Profile": "Google",
		"Issue": "Contraseña vulnerada",
		"Mail": "Su contraseña a sido vulnerada. Debera cambiar INMEDIATAMENTE:
		[color=#0000EE]https:/google.passwords_change_./[/color]",
		"Incorrect": "Su contraseña a sido vulnerada. Debera cambiar [shake][b]INMEDIATAMENTE:
		[color=#0000EE]https:/google.passwords_change_./[/color][/b][/shake]"},
	"Instagram: Cuenta en riesgo":{
		"User": "Instagram <noreply@instagra,.com.ar>",
		"Profile": "Instagram",
		"Issue": "Su cuenta será eliminada",
		"Mail": "Hemos detectado una infracción en su cuenta.
		Para evitar que sea eliminada definitivamente, confirme su identidad inmediatamente:
		[color=#0000EE]https://instagram-confirmacion.com[/color]
		Tiene 30 minutos para completar el proceso.",
		"Incorrect":"Hemos detectado una infracción en su cuenta.
		[shake][b]Para evitar que sea eliminada definitivamente, confirme su identidad inmediatamente:[/b][/shake]
		[color=#0000EE]https://instagram-confirmacion.com[/color]
		[shake][b]Tiene 30 minutos para completar el proceso.[/b][/shake]"},
	"Instagram: Mención Alejandro":{
		"User": "Instagram <noreply_instagram@gmail.com>",
		"Profile": "Instagram",
		"Issue": "Mención en publicación",
		"Mail": "Hola. @Alejandr0Magno te ha etiquetado en una publicación: 'Sorteo de Atletico'. 
		Entra SOLO por el siguiente link para ver la historia:
		[color=#0000EE]www.instagran.publicacion/2840sa¿ajsw?ac[/color]",
		"Incorrect": "Hola. @Alejandr0Magno te ha etiquetado en una publicación: 'Sorteo de Atletico'. 
		Entra [shake][b]SOLO[/b][/shake] por el siguiente link para ver la historia:
		[color=#0000EE]www.[shake][b]instagran[/b][/shake].publicacion/[shake][b]2840sa¿ajsw?ac[/b][/shake][/color]"},
	"Instagram: Mención FacuPapito":{
		"User": "Instagram <mail.instagram@gmail.com>",
		"Profile": "Instagram",
		"Issue": "Mención en publicación",
		"Mail": "@Facupasguez__. te ha etiquetado en una publicación. Entra a Instagram para ver el comentario completo y responder a traves del siguiente link. 
		[color=#0000EE]http:/instagram_.com/_account_login/[/color]
		Nota: Debera ingresar su contraseña para poder entrar a Instagram web",
		"Incorrect":"@Facupasguez__. te ha etiquetado en una publicación. Entra a Instagram para ver el comentario completo y responder a traves del siguiente link. 
		[color=#0000EE][shake][b]http:/instagram_.com/_account_login/[/b][/shake][/color]
		[shake][b]Nota: Debera ingresar su contraseña para poder entrar a Instagram web[/b][/shake]"},
	"Mercado Pago: Verificar edad":{
		"User": "Mercado Pago <no-responder@mp1328410.com>",
		"Profile": "Mercado Pago",
		"Issue": "Verifique su edad",
		"Mail": "Ahora que es mayor de edad, necesitamos que verifique su edad en el siguiente link:
		[color=#0000EE]https://www.mpago.com.ar/verifike-su-edad[/color]",
		"Incorrect":"Ahora que es mayor de edad, [shake][b]necesitamos que verifique su edad en el siguiente link:
		[color=#0000EE]https://www.mpago.com.ar/verifike-su-edad[/color][/b][/shake]"},
	"Santander: ¿Ingreso desconocido?":{ #15
		"User": "Santander <seguridad@bancosantander-Rf.com>",
		"Profile": "Santander",
		"Issue": "Ingreso desconocido",
		"Mail": "Estimado cliente: Detectamos un inicio de sesión inusual en su cuenta.
		Si no realiza la verificación en las próximas 2 horas, su cuenta será suspendida.
		Ingrese al siguiente enlace:
		[color=#0000EE]http://Santander-verificacion.gov[/color]",
		"Incorrect": "Estimado cliente: Detectamos un inicio de sesión inusual en su cuenta.
		[shake][b]Si no realiza la verificación en las próximas 2 horas, su cuenta será suspendida.[/b][/shake]
		Ingrese al siguiente enlace:
		[color=#0000EE]http://Santander-verificacion.gov[/color]"},
	"Spotify: Suscripción gratis":{
		"User": "Spotify <soporte@spotify.lt.com>",
		"Profile": "Spotify",
		"Issue": "¡Ganaste una suscripción!",
		"Mail": "¡Felicitaciones! Ha ganado 12 meses de Premium GRATIS. Para reclamar su premio, confirme su cuenta ingresando aquí todos los datos:
		[color=#0000EE]https://premium-gratis.example.com/confirmr[/color]
		La promoción vence HOY.",
		"Incorrect":"¡Felicitaciones! Ha ganado 12 meses de Premium GRATIS. Para reclamar su premio, [shake][b]confirme su cuenta ingresando aquí todos los datos:[/b][/shake]
		[color=#0000EE]https://premium-gratis.example.com/confirmr[/color]
		[shake][b]La promoción vence HOY.[/b][/shake]"},
	"Steam: Hofertas":{
		"User": "Steam <notificaciones.urgente@steam.com>",
		"Profile": "Steam",
		"Issue": "Hofertas de verano",
		"Mail": "¡Entra a steam y aprovecha nuestros nuevos descuentos de verano!
		[color=#0000EE]https//stem.varatisimo.aprobecha.com[/color]
		Steam Argentina",
		"Incorrect":"¡Entra a steam y aprovecha nuestros nuevos descuentos de verano!
		[color=#0000EE]https//[shake][b]stem.varatisimo.aprobecha[/b][/shake].com[/color]
		Steam Argentina"},
	"YPF: ¿Entrevista?":{
		"User": "YPF <entrebistas@ypf.com>",
		"Profile": "Formal",
		"Issue": "Confirmación de entrevista",
		"Mail": "Hola, Martín:
		Te escrivimos para avisarte que estamos disponibles al proceso de selección.
		Fecha: miércoles 23 de septiembre
		Hora: 11:00
		Modalidad: presencial
		Para confirmar tu acistencia ingresa en este link y verificate
		[color=#0000EE]https//:verifikación/irf.com[/color]",
		"Incorrect":"Hola, Martín:
		Te [shake][b]escrivimos[/b][/shake] para avisarte que estamos disponibles al proceso de selección.
		Fecha: miércoles 23 de septiembre
		Hora: 11:00
		Modalidad: presencial
		[shake][b]Para confirmar tu acistencia ingresa en este link y verificate[/b][/shake]
		[color=#0000EE]https//:[shake][b]verifikación[/b][/shake][/color]/irf.com"},
	"School Net trucho":{
		"User": "School Net <educaciòn@schoolnet.com>",
		"Profile": "Sin",
		"Issue": "Notas 3ºTrimestre",
		"Mail": "Hola alumno Nº23 de 5to Informatica, para obtener un 10 en todas las materias e inasistencias ilimitadas, debes abonar 10000$ en el siguiente link
		[color=#0000EE]https/vamoarriba.laescuela.com.ar[/color]",
		"Incorrect":"Hola alumno Nº23 de 5to Informatica, [shake][b]para obtener un 10 en todas las materias e inasistencias ilimitadas, debes abonar 10000$ en el siguiente link
		[color=#0000EE]https/vamoarriba.laescuela.com.ar[/color][/b][/shake]"},
	"Cita falsa":{
		"User": "Laura <Laura067@gmail.com>",
		"Profile": "Sin",
		"Issue": "Queres una cita?",
		"Mail": "Hola Edu, estuve pensando y creo que si puedo salir con vos.
		Pero antes necesito algo urgente, mi mamá esta enferma. Necesitaria que me transfieras 200.000$ para su operaciòn, asi puedo estar tranquila para cuando salgamos.
		Aca te dejo mi alias: TuButakeraAtr.90",
		"Incorrect":"Hola Edu, estuve pensando y creo que si puedo salir con vos.
		Pero antes necesito algo urgente, mi mamá esta enferma. [shake][b]Necesitaria que me transfieras 200.000$ para su operaciòn, asi puedo estar tranquila para cuando salgamos.
		Aca te dejo mi alias: TuButakeraAtr.90[/b][/shake]"},
	"Spotify: Kickeo plan familiar":{
		"User": "Spotify <planes@spotyfi.com>",
		"Profile": "Spotify",
		"Issue": "Quieren quitarte del plan familiar",
		"Mail": "Buenas tardes, no es de nuestro placer informarle que el administrador de su plan famiiar premium quiere quitarlo.
		Para evitar esta acción confirme su identidad en el siguiente link:
		[color=#0000EE]http//verifiqación.plan_familiar.com.cn[/color] ",
		"Incorrect":"Buenas tardes, no es de nuestro placer informarle que [shake][b]el administrador de su plan famiiar premium quiere quitarlo.
		Para evitar esta acción confirme su identidad en el siguiente link:
		[color=#0000EE]http//verifiqación.plan_familiar.com.cn[/color][/b][/shake]"},
	} #20 total
