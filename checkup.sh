#!/bin/bash
awk '{
       for(i=2;i<=NF;i=i+3)
       {
          if(i!=2 && i!=NF-1 && $i==1 && $(i+1)>=10)
          {
             print $0;
          }
       }


}' ali.all.phones.counts > checkup_file01
