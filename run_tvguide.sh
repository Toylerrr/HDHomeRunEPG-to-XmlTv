#!/bin/sh

mkdir -p /app/output

echo "Running with HOST=$HOST FILENAME=$FILENAME DAYS=2" >> /app/output/cron.log

python3 /app/HDHomeRunEPG_To_XmlTv.py \
  --host "$HOST" \
  --filename "/app/output/$FILENAME" \
  --days 2 >> /app/output/cron.log 2>&1

echo "TV guide updated at $(date)" >> /app/output/cron.log
