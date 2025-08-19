# README

export $(cat .env | xargs)
docker build \
  --build-arg RAILS_ENV=$RAILS_ENV \
  --build-arg DATABASE_URL=$DATABASE_URL \
  --build-arg SECRET_KEY_BASE=$SECRET_KEY_BASE \
  -t hackacode .
