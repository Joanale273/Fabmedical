host="fabmedical-633399.mongo.cosmos.azure.com"
username="fabmedical-633399"
password="mGlofzxeVDmrTSQcXgWrhAizWCTyqDNX7J7Cd3eNVdck4RMgNwhrHwHz9FW9o67NCks255DlvxkaXdNH2NFC4A=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
