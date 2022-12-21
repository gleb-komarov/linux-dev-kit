echo "Crack idea..."

apt update
apt install unrar
./download-from-google "1X66TMRRD-ARmdJ1f30cRSqHRZtXqzpMA" "JetBrains2021.2.3-FineAgent.rar"
unrar JetBrains2021.2.3-FineAgent.rar
echo "-javaagent:/home/${USER}/idea-IU-212.5457.46/bin/FineAgent.jar" >> /home/${USER}/idea-IU-212.5457.46/bin/idea64.vmoptions
cp FineAgent.jar /home/${USER}/idea-IU-212.5457.46/bin