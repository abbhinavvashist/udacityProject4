# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="abbhinavvashist/demolocal"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u abbhinavvashist
    docker image tag demolocal $dockerpath

# Step 3:
# Push image to a docker repository
docker image push $dockerpath


# Step 3:
# Push image to a docker repository
