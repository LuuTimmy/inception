#!/bin/sh

envsubst < /conf/init.sql | sponge /conf/init.sql
exec $@