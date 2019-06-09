
EMAIL_FROM="linuxupdateservices@techpoli.info"  # usuario de email que se autentica no servidor SMTP
EMAIL_TO="geraldo@techpoli.info" # usuario que receberá os emails

#Servidor SMTP e porta utilizada
SERVIDOR_SMTP="smtp.hostinger.com.br:587" #endereço no servidor SMTP, observar no exemplo o yahoo utiliza a porta 587
SENHA='mahatma'    #informe aqui a senha de autenticação no servidor SMTP (do e-mail)

ASSUNTO="$1"
MENSAGEM="$2"
ANEXO="$3"

if [ "$1" == "" ] ;then
	ASSUNTO="Novo Container Iniciado"
fi
if [ "$2" == "" ] ;then
	MENSAGEM="Um novo container foi iniciado"
fi

sendEmail -f $EMAIL_FROM -t $EMAIL_TO -u "$ASSUNTO" -m "$MENSAGEM" -a $ANEXO -s $SERVIDOR_SMTP -xu $EMAIL_FROM -xp $SENHA

# Fim do Script
