Para agregar nuevos campos he seguido (modificado el siguente hack):

1. Using phpMyAdmin, inserted 3 new fields (named as follows) to the 'wp_dk_speakup_signatures' table:
General
Presidential
Referendum
Nota: este paso puede suprimirse si se modifica install.php con los nuevos campos en la db


All configured as follows:
Type: varchar(1)
Collation: utf8_general_ci
(I positioned them just after 'custom_message' field).

2. Modified emailpetition.php and public.js which manages petition when used in page or post content.

3. Modified widget.php and widget.js which manages petition when used as a widget.

4. Modified class.signature.php which is used by both of the above to write to the database table.

Here's some links to copies of the code as modified:

emailpetition.php 		http://db.tt/ocnoUHBt
public.js 				http://db.tt/03OtGOGN
widget.php 				http://db.tt/ezDqb5Us
widget.js 				http://db.tt/03OtGOGN
class.signature.php		http://db.tt/EOHHdshd


Contar firmas pero no mostrar las que no aceptaron términos

agregar en el archivo class.signaturelist.php un if
if ($signature->accept == 1) {  //hack dont show after accept
....
}
