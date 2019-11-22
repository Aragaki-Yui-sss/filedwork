#!/bin/bash
cat ali.all.phones.counts | awk '{
      pre=$1;
      i=2;

      for(i=2;i<=NF;i=i+3)
      {
         last=$i
         for(j=1;j<=$(i+1);j++)
            {
                 pre=pre" "last
            }
      }
      print pre
     }' > ali.1.ph
