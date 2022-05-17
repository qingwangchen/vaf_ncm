### NGSCheckMate - vaf_ncm

### Getting Started

We recommend using choppy system and Aliyun OSS service. The command will look like this:

```
# Activate the choppy environment
$ open-choppy-env

# Install the APP
$ choppy install YaqingLiu/vaf_ncm-latest [-f]

# List the parameters
$ choppy samples YaqingLiu/vaf_ncm-latest [--no-default]

# Submit you task with the `samples.json file` and `project name`
$ choppy batch YaqingLiu/vaf_ncm-latest samples.json -p Project [-l project:Label]

# Query the status of all tasks in the project
$ choppy query -L project:Label | grep "status"
```

### Reference
> https://github.com/parklab/NGSCheckMate
