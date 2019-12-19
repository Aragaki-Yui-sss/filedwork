#!/bin/bash

awk '{nfld=NF}
{
       for(i=0;i<=NF;i++)
       {
           sum[i]+=$i
		   if(NF!=nfld)
			   	   print "line " NR " has " NF " entries not " nfld
	   }
}
END{
		for (i=1;i<=nfld;i++)
			   printf ("%g%s", sum[i], i<nfld ? "\t" : "\n")			
}' emp.data
