# ============================================================================
#  Dockerfile — "receta" para construir la imagen del curso
# ============================================================================
#  Un Dockerfile es un archivo de texto con instrucciones paso a paso que
#  Docker (o Codespaces) lee de arriba hacia abajo para fabricar una
#  "imagen". Una imagen es como un molde congelado de un sistema Linux
#  listo para usar; cada vez que abres el Codespace, se crea un
#  "contenedor" a partir de ese molde.
#
#  Analogía: la imagen es el PLANO, el contenedor es la CASA construida
#  con ese plano. Puedes construir muchas casas iguales a partir de un
#  solo plano, y si destruyes una casa el plano sigue intacto.
#
#  Cada instrucción (FROM, ENV, RUN...) crea una "capa". Docker guarda
#  esas capas en caché: si no cambias las primeras líneas, no las
#  reconstruye y el siguiente build es casi instantáneo.
# ============================================================================


# ----------------------------------------------------------------------------
# FROM: imagen base sobre la que vamos a construir
# ----------------------------------------------------------------------------
# En lugar de partir de cero, partimos de la imagen oficial de Kali Linux
# en su versión "rolling" (actualización continua, siempre al día).
# Todo lo que instalemos más abajo se apila ENCIMA de esta base.

# Block a: Selecting a base image to build the development environment.

# - What is a base image?: It can be described as the initial read-only template containing a 
#predefined operating system and software, which serves as the base file system for our container (BHB, Chapter 3).
# - Why Kali Linux?: Because it is a rolling release distribution that includes many professional 
#security and networking tools, saving us from having to install them manually (BHB, Chapter 3).

# Block b: Image Layers and Caching Mechanism

# Image, Layer, and Cache Concept:
# Docker builds an image by processing the Dockerfile from top to bottom.
# Each instruction generates a new layer within the image. These layers can be cached and reused 
#in future builds, avoiding re-executing steps that haven't changed.
# Why Instruction Order Matters?
#Docker checks the layers in the same order they appear. If an instruction changes, the cache for that layer 
#becomes invalid, and all subsequent layers must be rebuilt. For this reason, instructions that change infrequently 
#are usually placed at the beginning to improve efficiency and reduce build time. (BHB, Chapter 3).

FROM kalilinux/kali-rolling:latest


# ----------------------------------------------------------------------------
# ENV: variables de entorno permanentes dentro del contenedor
# ----------------------------------------------------------------------------
# Las variables de entorno son "ajustes globales" que cualquier programa
# del sistema puede leer. Se escriben en MAYÚSCULAS por convención.
#
#   DEBIAN_FRONTEND=noninteractive
#     Le dice al instalador de paquetes (apt) "no me hagas preguntas
#     interactivas, asume respuestas por defecto". Sin esto, algunos
#     paquetes pausarían el build esperando que pulsemos una tecla y se
#     quedaría colgado para siempre (porque no hay nadie mirando).
#
#   LANG / LC_ALL=es_ES.UTF-8
#     Configuran idioma y codificación de caracteres. UTF-8 es lo que
#     permite que acentos, ñ, €, emojis, etc. se muestren bien.
#
#   TERM=xterm-256color
#     Le indica a los programas que la terminal admite 256 colores, para
#     que vim, nvim, htop, etc. se vean con todos sus colores.
#
# La barra invertida "\" al final de cada línea significa "esto continúa
# en la línea siguiente". Solo es para legibilidad.

# Block c: Defining Environment Variables (ENV)

# What does the ENV instruction do?
# The ENV instruction allows you to set environment variables that will be
# available to the processes and applications running within the container. 
# These variables function as global configuration parameters
# that modify the system's behavior without needing to alter the program code. Black Hat Bash (Chapter 1)
# describes environment variables as a mechanism used by
# shells and applications to adapt their operation according to the execution environment.

# Explanation of each configured variable:

    # DEBIAN_FRONTEND=noninteractive: allows package installation to be performed automatically without 
# requesting user interaction, preventing the image build from stopping while waiting for responses.

# The LANG and LC_ALL variables: set the system's locale and enable UTF-8 encoding, ensuring that special characters and symbols are interpreted correctly.

# The `TERM=xterm-256color` command informs applications about the terminal's capabilities, enabling 
# the use of 256 colors so that editors and tools can display highlighted text correctly.

# Environment variables are covered in Chapter 1 of Black Hat Bash.
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color


# ----------------------------------------------------------------------------
# Pre-respuesta a una pregunta interactiva de Wireshark
# ----------------------------------------------------------------------------
# Wireshark/tshark PREGUNTA durante su instalación si los usuarios
# normales (no-root) deben poder capturar paquetes. Como en el contenedor
# siempre somos root, respondemos "false" POR ADELANTADO usando
# debconf-set-selections para que no detenga el build esperando input.

#Block d: Preconfiguring Responses for Wireshark Installation

# During the build of a Docker image, there is no user who can answer interactive questions. Some packages, such as
# Wireshark, request configuration options during their installation, which could completely halt the build process if no response is provided.

# This instruction uses debconf-set-selections to register a response before the package installation begins, preventing
# any manual intervention and allowing the container build to continue. The | symbol connects two commands so they work together. In this
# case, the text generated by echo is sent directly to debconf-set-selections, which uses it to register the configuration response
# before installing Wireshark. Black Hat Bash (Chapter 1)
# Introduces pipes as a way to combine simple tools to automate tasks and avoid manual steps.
# In this specific case, the answer to the question about whether users without administrator privileges can capture network 
#packets is "false," leaving access configured automatically.

RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections


# ----------------------------------------------------------------------------
# RUN: ejecutar comandos durante la construcción de la imagen
# ----------------------------------------------------------------------------
# Aquí instalamos TODO el software del curso en un solo RUN.
#
#   apt-get update          -> actualiza la lista de paquetes disponibles
#   apt-get install         -> descarga e instala los paquetes listados
#     -y                    -> responde "sí" automáticamente
#     --no-install-recommends -> instala SOLO lo esencial (no los extras
#                                sugeridos). Ahorra cientos de MB.
#
# ¿Por qué un solo RUN gigante y no 10 RUN pequeños?
# Porque CADA RUN crea una capa nueva en la imagen. Menos capas = imagen
# más pequeña, más rápida de construir y de descargar.
#
# El "&&" encadena comandos: ejecuta el siguiente SOLO SI el anterior
# terminó bien. Si algo falla, el build se detiene con error (que es lo
# que queremos: mejor un error claro que una imagen rota).

# Block e: Bulk Installation of Main Packages and Tools

# - update vs install: 'apt-get update' updates the list of available packages from the repository servers, 
# while 'apt-get install' downloads and installs the specific programs.
# - Flags -y and --no-install-recommends: The '-y' flag automatically responds "yes" to installation confirmations, 
# avoiding manual intervention. '--no-install-recommends' prevents the download of optional or secondary packages.

# - Why a Single Giant RUN?
# Each RUN instruction creates a new permanent layer within the Docker image. Combining everything with operators avoids 
# creating unnecessary layers and drastically reduces the final container size (Black Hat Bash, Chapter 3).

# - Meaning of && and \: '&&' is a logical operator that executes the next command only if the previous one completed successfully
# (Black Hat Bash, Chapter 1). The backslash '\' at the end of each line indicates that the instruction continues on the next line.

# - What do the installed tools do?

# gawk, sed, grep:
# grep allows you to search for patterns within text, sed performs transformations and substitutions on text streams, and gawk
# facilitates the processing of information structured by columns or fields (Black Hat Bash, Chapter 2).

# shellcheck: Analyzes Bash scripts to find syntax errors and bad practices.
# nmap: Allows you to discover available hosts and services on a network.

# tcpdump / tshark: tcpdump captures network traffic directly from the terminal, and tshark provides packet analysis capabilities
# similar to Wireshark but from the command line.

# tor / proxychains4: Tor allows connections to pass through multiple nodes before reaching their destination, while proxychains4 offers
# a simple way to run applications using user-configured proxies. * jq: A processor specialized in reading, filtering, and modifying data in JSON format.

# man-db: Installs system manuals so you can consult command help in the terminal.
RUN apt-get update && apt-get install -y --no-install-recommends \
    \
    # === Editores de texto y shells (intérpretes de comandos) ===
    neovim \
    vim \
    zsh \
    bash-completion \
    \
    # === Herramientas de 4ta generación ===
    # Estas son las protagonistas de las Unidades 2, 3 y 4:
    perl \
    make \
    gawk \
    sed \
    grep \
    \
    # === Utilidades básicas de UNIX ===
    # coreutils trae cat, ls, head, tail, sort, cut, tr, etc.
    # findutils trae find y xargs.
    # procps trae ps, top, kill (gestión de procesos).
    # less = paginador para leer archivos largos.
    # tree = muestra directorios como árbol.
    # jq = procesa JSON desde la línea de comandos.
    coreutils \
    findutils \
    procps \
    less \
    tree \
    jq \
    \
    # === Páginas de manual (comando `man`) ===
    # La imagen base de Kali viene sin documentación para
    # ahorrar espacio. La reinstalamos porque en el curso "man bash" o
    # "man grep" es material de consulta obligada.
    man-db \
    manpages \
    manpages-posix \
    \
    # === Red básica y utilidades de descarga ===
    curl \
    wget \
    git \
    git-lfs \
    ca-certificates \
    locales \
    \
    # === Linter (revisor automático de errores) para scripts Bash ===
    shellcheck \
    \
    # === Reconocimiento y escaneo de red ===
    # nmap = el escáner de puertos más famoso.
    # masscan = escaneo masivo de rangos grandes de IPs.
    nmap \
    masscan \
    \
    # === Captura y análisis de paquetes de red ===
    # tcpdump = capturador clásico por terminal.
    # tshark = versión de terminal de Wireshark.
    tcpdump \
    tshark \
    \
    # === Utilidades de red variadas ===
    netcat-traditional \
    socat \
    dnsutils \
    whois \
    traceroute \
    mtr-tiny \
    iproute2 \
    net-tools \
    iputils-ping \
    \
    # === Anonimato: Tor y similares ===
    # tor = cliente de la red Tor.
    # torsocks = "envoltorio" que hace pasar cualquier comando por Tor.
    # proxychains4 = encadena múltiples proxies.
    # obfs4proxy = ofusca el tráfico de Tor para evadir bloqueos.
    tor \
    torsocks \
    proxychains4 \
    obfs4proxy \
    \
    # === Cliente HTTP más legible que curl para aprender ===
    httpie \
    \
 # --- Después de instalar, activamos el idioma español ---
 # sed busca "# es_ES.UTF-8" en /etc/locale.gen y le quita el "#" para
 # activar esa línea. Luego locale-gen compila los archivos de idioma.

#Block f: Enabling the Spanish Locale
# The /etc/locale.gen file contains the list of available locale settings.
# The sed command modifies this file to enable the entry for es_ES.UTF-8, removing the comment symbol that keeps it disabled.
# Subsequently, locale-gen generates the necessary files so that the system can use this locale. Thanks to this process, the container's applications 
# and tools will be able to work correctly with the Spanish language and UTF-8 encoding, ensuring proper representation of special characters.
# Using sed to Automatically Modify Configuration Files (BHB, Chapter 2)

 && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \
 && locale-gen \
 \
 # --- Limpieza final: reducir el tamaño de la imagen ---
 # apt deja archivos de caché que ya no necesitamos después de instalar.
 # Borrarlos aquí (en el mismo RUN) hace la capa final más pequeña.
 # Si los borráramos en otro RUN, seguirían ocupando en la capa anterior.

# Block g: Cleaning temporary files in the same RUN

# Why clean in the same RUN instruction?
# Each RUN instruction creates a new layer within the Docker image.
# If temporary files are deleted in a later layer, they will
# still exist in the previous layers and continue to occupy
# space within the image. Performing installation and cleanup in
# the same instruction prevents these files from being stored in an
# intermediate layer, reducing the final size of the image and improving its
# storage efficiency (Black Hat Bash, Chapter 3).

 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*


# ----------------------------------------------------------------------------
# SHELL: qué intérprete usar en los siguientes RUN
# ----------------------------------------------------------------------------
# Por defecto Docker usa /bin/sh (un shell más limitado y antiguo). Lo
# cambiamos a bash por si agregamos más instrucciones con sintaxis
# moderna (arrays, [[ ]], etc.).

# Block h: Configuring the default shell for the build

# By default, Docker uses /bin/sh to execute RUN instructions.
# This configuration replaces it with Zsh so that the following
# instructions are executed using a more advanced and flexible shell.
# Zsh incorporates additional features that facilitate working in
# UNIX environments and allows you to take advantage of a more complete experience than
# offered by the default shell. The function of shells as
# command interpreters and their role in executing instructions is
# related to the concepts studied in Black Hat Bash (Chapter 1).

SHELL ["/bin/zsh", "-c"]


# ----------------------------------------------------------------------------
# WORKDIR: directorio de trabajo al entrar al contenedor
# ----------------------------------------------------------------------------
# Codespaces siempre monta el código del repositorio en
# /workspaces/<nombre-del-repo>. Establecer /workspaces aquí hace que las
# terminales se abran cerca de nuestros archivos del curso.

# Block i: Defining the default working directory

# The WORKDIR instruction sets the directory from which
# subsequent instructions will be executed within the container. This
# avoids specifying full paths in each command and keeps the working environment
# organized. If the directory does not exist, Docker creates it
# automatically (Black Hat Bash, Chapter 3).

WORKDIR /workspaces

# Configuración de Git para el contenedor:
# - safe.directory *: confía en cualquier repo montado (necesario porque
#   /workspaces/... tiene un UID distinto al de root dentro del container).
# - init.defaultBranch main: evita warnings de "master vs main" en git init.
# - pull.rebase false: merge por defecto al hacer pull (más intuitivo)
# - git lfs install --system: registra los hooks de LFS globalmente para
#   que, si un repo los necesita, funcionen sin sorpresas.

# Block j: Global Git Configuration and Large File Support

# - What each line configures:
# * git config --system: Applies Git configurations at the container level.
# In this case, it defines which directories are considered safe, sets "main" as the default branch,
# and configures the default behavior of git pull.
# git lfs install --system: Enables Git Large File Storage (LFS) system-wide,
# allowing you to work with repositories that contain large files without storing them directly in the main Git history.
# (Black Hat Bash, Chapter 3).

RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system

# ----------------------------------------------------------------------------
# CMD: comando que se ejecuta por defecto al arrancar el contenedor
# ----------------------------------------------------------------------------
# Lanza una shell bash interactiva. Codespaces la sobrescribe con su
# propia terminal integrada de VS Code, pero es buena práctica dejarla
# definida para que la imagen sea usable también con Docker puro.
# Prompt del curso para bash

# Block k: Changing the default shell for the root user

# The chsh (change shell) command modifies the default shell of a
# user. In this case, Zsh is configured as the primary shell for root,
# so that interactive sessions within the container use
# this interpreter instead of the default. This allows you to take advantage of
# the features and customizations configured for Zsh (Black Hat Bash, Chapter 1).

RUN chsh -s /usr/bin/zsh root

# Block L: Configuring the Interactive Environment Using Here-Document

# What is a heredoc?
# A heredoc allows you to write multiple lines of text directly within
# the Dockerfile and send them to a file or command all at once. In
# this case, it's used to add configuration to the .zshrc file without
# manually editing it (Black Hat Bash, Chapter 1).

# What the PROMPT line configures?
# The PROMPT variable defines how the command line will look when the
# user opens a terminal. Here, it's customized to display useful information
# with colors, making it easier to identify where you're
# working within the container (Black Hat Bash, Chapter 1).

RUN cat >> /root/.zshrc <<'EOF'

PROMPT='%F{cyan}[Paula_Simbaña]%f %F{yellow}%1~%f %(?.%F{green}√.%F{red}X %?)%f %# '
EOF

# Block m: Container's default execution command

# Difference between CMD and RUN:
# RUN is used during image build to install or
# configure elements that will be permanently saved. In contrast,
# CMD defines which program will run when the container starts.
# In this case, the container will automatically open a Zsh terminal
# so the user can start working immediately (Black Hat
# Bash, Chapter 3).

CMD ["/usr/bin/zsh"]




