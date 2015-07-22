mapr-impala-server Cookbook
====================
This will install mapr impala server on a MAPR cluster. 


Requirements
------------

#### packages

`mapr_hbase` - mapr_impala needs hbase and installs it if not present.
'mapr_impala_server' - Installs mapr impala server.


Attributes
----------

Overridden in the role based on the cluster you install on.

default['mapr']['impala_state'] = '10.84.100.86'
default['mapr']['impala_catalog'] = '10.84.100.86'
default['mapr']['hive'] = 'mapr-hive-0.13.201505191731-1.noarch'
default['mapr']['hive_yum_version'] = '0.13.201505191731-1'
default['mapr']['hive_version'] = '0.13'


Usage
-----
#### mapr-impala-server::default


Just include `mapr-impala-server` in your node's `run_list`:


{
  "name":"my_node",
  "run_list": [
    "recipe[mapr-impala-server]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Carl Eichhorn, Alfred Macareag, Eric Ward.
