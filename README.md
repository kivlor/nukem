### ☢️ Nukem ☢️

A simple docker container for nuking s3 buckets from orbit.

Run with:

```
docker build . -t nukem
docker run --rm -ti -v ~/.aws:/root/.aws nukem $BUCKET_NAME $AWS_PROFILE
```
