# Bug bounty

```
ffuf -w traversal.txt -u http://<domain>/FUZZ -mr "root" -mc 200,303,301,302,303,304,308,307,404,405,403 -c
```
# spider

```
gospider -q -s <domain>  -o output -c 10 -d 1
```

```
findomain -t <domain> 2>/dev/null | httpx -silent | xargs -I@ sh -c 'ffuf -w path.txt -u @/FUZZ -t 100 -mc 200 -H "Content-Type: application/json"
```
```
assetfinder <domain> | sed 's#*.# #g' | httpx -silent -threads 10 | xargs -I@ sh -c 'ffuf -w path.txt -u @/FUZZ -mc 200 -H "Content-Type: application/json" -t 150 -H "X-Forwarded-For:127.0.0.1"'
```

```
wget -nv -nc https://chaos-data.projectdiscovery.io/playstation.zip ; unzip http://playstation.zip ; cat *.txt | httpx -silent -threads 300 | anew fullAlive; gospider -a -d 0 -S fullAlive -c 5 -t 100 -d 5 --blacklist black | egrep -o '(http|https)://[^/"]+' | anew httpSpider
```

unfurl --unique domains

# cve's check
cat alive.txt | nuclei -t nuclei-templates/workflows | tee -a workflows.

# js file end points extrant
cat file.js | grep -aoP "(?<=(\"|\'|\`))\/[a-zA-Z0-9_?&=\/\-\#\.]*(?=(\"|\'|\`))" | sort -u

# create own wordlist
echo "http://api.uber.com" | waybackurls | cut -d "/" -f 4,5 | sed 's/?.*//' | sort -u 


# AndroidManifest
cat AndroidManifest.xml | grep -P '<(activity(-alias)?|service|receiver|provider)(?![^>]*exported="false")'

# Apk folder strings grep
grep -EHirn "accesskey|admin|aes|api_key|apikey|checkClientTrusted|crypt|http:|https:|password|pinning|secret|SHA256|SharedPreferences|superuser|token|X509TrustManager|github|api_secret|aws|s3|firebaseio.com" ./
#more-setJavaScriptEnabled, root, JavascriptInterface , MODE_WORLD_READABLE, MODE_WORLD_WRITEABLE, Pinner, checkServerTrusted, api_secret, api/v1, api/v2

grep -EHirn "api_secret|api/v1|api/v2" ./

# Apk folder url's grep
grep -Phro "(https?://)[\w\.-/]+[\"'\`]" uberApk/ | sed 's#"##g' | anew | grep -v "w3\|android\|github\|http://schemas.android\|google\|http://goo.gl" ./

# Android deep link
grep -rnF "deeplinkschema://" ./

# Android subdomain
grep -i -rnw  'app_landing_page_domain'

# Android firebase
for apk in $(ls *.apk ); do urll=`strings $apk | grep -i fire | grep -i http | cut -d':' -f2`; curl -sb --url "https:$urll/.json" | jq | tee "${apk%.*}".json ; done

# Android api keys
grep -RP '(?<![A-Za-z0-9/+=])[A-Za-z0-9/+=]{40}(?![A-Za-z0-9/+=])' *
