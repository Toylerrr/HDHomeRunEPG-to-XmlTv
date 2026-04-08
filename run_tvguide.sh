#!/bin/sh

mkdir -p /app/output

echo "Running with HOST=$HOST FILENAME=$FILENAME" >> /app/output/cron.log

python /app/HDHomeRunEPG_To_XmlTv.py \
  --host "$HOST" \
  --filename "$FILENAME" >> /app/output/cron.log 2>&1

echo "TV guide updated at $(date)" >> /app/output/cron.log
