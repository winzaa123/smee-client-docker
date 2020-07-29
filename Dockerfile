FROM keymetrics/pm2:12-alpine
RUN npm install --global smee-client
# Bitbucket Patch, see https://github.com/probot/smee-client/pull/122/commits/f2f8e9fa57a36d816fa27f74aaaeb18bc3006b46#diff-168726dbe96b3ce427e7fedce31bb0bc
COPY index.js /usr/local/lib/node_modules/smee-client/index.js

COPY pm2.json .

# ENTRYPOINT ["smee"]
CMD [ "pm2-runtime", "start", "pm2.json" ]
