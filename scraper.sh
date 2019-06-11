#!/bin/sh
for line in `cat sites.txt`; do
  # replace http://
  # stripped_url=`echo $line| cut -c8-`
  stripped_url=`echo $line`
  target_folder="images/"

  echo $stripped_url
  echo ""
  echo ""
  echo ""
  echo "Scraping $stripped_url"
  echo "-----------------------------------"
  # echo "> creating folder.."
  # echo $target_folder
  # mkdir -p $target_folder
  echo "> scraping $stripped_url"
  # wget -e robots=off \
  #   -H -nd -nc -np \
  #   --recursive -p \
  #   --level=1 \
  #   --accept jpg,jpeg,png,gif \
  #   --convert-links -N \
  #   --limit-rate=200k \
  #   --wait 1.0 \
  #   -P $target_folder $stripped_url
  wget -nd -nc -r -A jpeg,jpg,bmp,gif,png -l 2 -e robots=off -P $target_folder $stripped_url
  echo ""
  echo ""
  echo "> Finished scraping $stripped_url"
done
