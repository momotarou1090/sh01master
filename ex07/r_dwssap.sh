cat /etc/passwd | awk "NR%2!=0" | grep -v "#" | rev | sort -r | awk 'NR>= '${FT_LINE1}' && NR<= '${FT_LINE2}'' | cut -f 7 -d : | sed 's/$/, /' | sed -e '$s/,/./'| tr -d '\n'
