#!/bin/bash

awk '
{x[int($1/10)]++}
END{
        for(i=0;i<10;i++)
		   printf("%2d - %2d :%3d %s\n",10*i,10*i+9,x[i],rep(x[i],"*"))
}
function rep(n,s,  t)
{
        while(n-->0)
		   t=t  s
		return t
}' emp02.data
