# use node images specifically node v 16, latest is not working
FROM node:16

# copy the example-frontend in the current directory to the container 
COPY . .

# run npm install & run build & install serve
RUN npm install \
	&& npm run build \
	&& npm install -g serve

# expose port 5000
EXPOSE 5000

# run the following command as params
CMD ["serve", "-s", "-l", "5000", "build"]
