# csv2html csv-file.csv

   CSV=$1
   echo '<Table border="1">'
   while read line
   do
      echo "<tr align='center'>"
         for word in $(echo $line | tr '\t' '§' | tr '\t' ' ')
          do
             echo "<td nowrap >$(echo "$word" | tr '§' ' ' | sed 's/ /\ /g' )</td>"
          done
      echo "</tr>"
   done <$CSV
   echo "</table>"
