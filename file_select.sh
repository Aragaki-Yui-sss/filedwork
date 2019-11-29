#!/bin/bash

function ergodic(){
  for file in `ls $1`
  do
          if [ -d $1"/"$file ]
          then
                    ergodic $1"/"$file
          else
                        local path=$1"/"$file
                        local name=$file
                    local size=`du --max-depth=1 $path`
                    print $size $path > /audiodata3/audio_public/WAKEUP_DATA/huawei_abroad/cv_corpus_v1/text6.txt
          fi
  done
}
          IFS=$'\n' #这个必须要，否则会在文件名中有空格时出错
          INIT_PATH="/audiodata/audio_public/asr_data/asr_near_field/cv_corpus_v1/cv-other-train/";
          ergodic $INIT_PATH
~
