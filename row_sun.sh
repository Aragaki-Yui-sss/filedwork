#!/bin/bash
awk '{print $1}' | awk '{sum+=$1}END{print sum}'
