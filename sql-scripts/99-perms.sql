UPDATE mysql.user SET host='%' WHERE user='root' AND host!='%';
FLUSH PRIVILEGES;
