# Este comando se encarga de mostrar en una lista los archivos que se encuntran en el directorio actual.
ls 
# Este comando se encarga de mostrar todos los archivos que se encuentran dentro de solo ese directorio, en nuestro caso no tenemos ese directorio por eso recibimos como resultado que no esta disponible
ls documents
# Al intentar ejecutar este comando nos salio "bash: aptitude: command not found" que basicamente nos indica que el comando aptitude no está instalado en el sistema, lo cual lo solucionamos con los siguientes comaandos:
#aptitude moo es un comando recreativo que no cumple una función técnica, sino que es una característica oculta
aptitude moo
sudo apt update
sudo apt install aptitude