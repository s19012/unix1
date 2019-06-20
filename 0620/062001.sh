zipcode=$1

curl http://zip.cgis.biz/csv/zip.php?zn=${zipcode} | nkf -wLu 
