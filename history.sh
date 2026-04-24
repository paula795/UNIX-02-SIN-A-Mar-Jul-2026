 1  cd evaluation/kepler
    2  mv docs registros
    3  mkdir plantillas
    4  ls
    5  git add .
    6  git commit -m "Fix problema 1:Corrected directory structure"
    7  mv sensores.log registros/
    8  mv ajustes.old ajustes.conf
    9  ls
   10  git add .
   11  git commit -m "Fix problema 2:Misplaced and renamed files"
   12  history
   13  chmod 600 registros/sensores.log
   14  ls -l registros/sensores.log
   15  git add .
   16  git commit -m "Fix problema 3: Numeric permissions with chmod"
   17  git add registros/sensores.log
   18  git commit -m "Fix problema 3: permisos numericos 600 en sensores.log"
   19  git restore ../../histori.sh
   20  rm ../../history.sh
   21  git status
   22  chmod u+x runner.sh
   23  chmod o-w ajustes.conf
   24  git add .
   25  git commit -m "Fix problema 4:Symbolic permits"
   26  history
   27  chmod u+s runner.sh
   28  ls -l runner.sh
   29  git add .
   30  git commit -m "Fix problem 5: SUID enabled in runner.sh"
   31  git commit --allow-empty -m "Fix problema 5: SUID activado en runner.sh"
   32  ls -l runner.sh
   33  chmod u+s runner.sh
   34  ls -l runner.sh
   35  history
   36  ls -ld /tmp/kepler_zone
   37  sudo mkdir /tmp/kepler_zone
   38  sudo chmod +t /tmp/kepler_zone
   39  ls -ld /tmp/kepler_zone
   40  git add .
   41  git commit --allow-empty -m "Fix problema 6: sticky bit en /tmp/kepler_zone"
   42  sudo apt update
   43  sudo apt upgrade
   44  cat > /tmp/mi_llave.batch <<'EOF'
%no-protection
Key-Type: RSA
Key-Length: 2048
Name-Real: vega
Name-Email: vega@kepler.lab
Expire-Date: 0
%commit
EOF

   45  gpg --batch --generate-key /tmp/mi_llave.batch
   46  gpg --list-keys vega@kepler.lab
   47  gpg --encrypt --recipient vega@kepler.lab --output kepler/registros/sensores.log.gpg kepler/registros/sensores.log
   48  ls kepler/registros/
   49  pwd
   50  ls
   51  gpg --encrypt --recipient vega@kepler.lab --output registros/sensores.log.gpg registros/sensores.log
   52  ls registros/
   53  git add .
   54  git commit -m "Fix problem 7: GPG key generated and sensores.log encrypted"
   55  gpg --clearsign --local-user vega@kepler.lab --output ajustes.conf.asc ajustes.conf
   56  ls
   57  gpg --verify ajustes.conf.asc
   58  gpg --verify runner.sh.sig runner.sh
   59  gpg --detach-sign --local-user vega@kepler.lab --output runner.sh.sig runner.sh
   60  gpg --verify runner.sh.sig runner.sh
   61  git add .
   62  git commit -m "Fix problem 8: GPG signatures created and corrected"
   63  history