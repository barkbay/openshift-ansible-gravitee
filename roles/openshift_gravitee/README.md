Role Name
=========

Install Gravitee on Openshift

Requirements
------------

This role has been tested with Ansible 2.4 on Openshift 3.7

Role Variables
--------------

* openshift_gravitee_namespace : project/namespace where Openshift/Kubernetes objetcs must be deployed
* openshift_gravitee_node_selector : could be empty, if set set a node selector on the namespace
* mongo_image
* elastic_image
* gravitee_api_image
* gravitee_ui_image
* gravitee_gateway_image

Dependencies
------------

* [lib_openshift](https://github.com/openshift/openshift-ansible/tree/master/roles/lib_openshift) released under the Apache License, Version 2.0 license
* [lib_utils](https://github.com/openshift/openshift-ansible/tree/master/roles/lib_utils) released under the Apache License, Version 2.0 license

Example Playbook
----------------

```
- name: Gravitee
  hosts: openshift
  roles:
  - role: openshift_gravitee
```

License
-------

Apache License 2.0
