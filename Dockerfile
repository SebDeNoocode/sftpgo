FROM drakkan/sftpgo:latest

# Ajouter le plugin d'authentification
ADD https://github.com/sftpgo/sftpgo-plugin-auth/releases/download/v1.0.0/sftpgo-plugin-auth-linux-amd64 /sftpgo-plugin-auth
RUN chmod +x /sftpgo-plugin-auth

# Configuration des plugins dans le fichier de configuration
ENV SFTPGO_PLUGIN_AUTH=/sftpgo-plugin-auth
