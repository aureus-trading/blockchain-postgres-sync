#!/bin/sh

if [ "$MIGRATE" == "true" ]
then
    npm run migrate -- --connection postgresql://$PGUSER:$PGPASSWORD@$PGHOST:$PGPORT/$PGDATABASE?ssl=$PGSSL
fi

node --max-old-space-size=2048 src/autorun/index.js