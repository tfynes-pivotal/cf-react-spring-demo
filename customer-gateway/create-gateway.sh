#!/bin/bash
cf create-service p.gateway standard cg -c '{"host":"cg"}'
cf bind-service cfe cg -c '{"routes": [ {"path":"/**", "order":10,"filters":["StripPrefix=0"]}   ]}'
cf bind-service cp cg -c '{ "routes": [ {"path":"/api/**","order":0,"filters":["StripPrefix=0"]}   ]}'