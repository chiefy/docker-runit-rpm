Docker image to build runit rpm based off of https://github.com/imeyer/runit-rpm

### Build
```$ docker build --tag=runit_rpm_builder .```

### Run
```$ docker run -v $(pwd)/artifacts:/artifacts runit_rpm_builder```

Running will generate RPMs inside of the artifacts dir. If you're using `boot2docker` you may have to `chmod 777 artifacts`. 

Thanks to [@imeyer](https://github.com/imeyer)