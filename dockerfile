FROM node:22
# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the package.json and package-lock.json files
COPY package*.json ./

# Step 4: Install the dependencies
RUN npm install

# Step 5: Copy the rest of the application files
COPY . .

# Step 6: Build the React app
RUN npm run build


# Step 8: Expose the default Nginx port
EXPOSE 5173

# Step 9: Start Nginx when the container runs
CMD ["npm","run",  "dev"]