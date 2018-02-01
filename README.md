# Gravitee on Openshift

----

Gravitee.io is a flexible, lightweight and blazing-fast open source API.

This repository contains :

* An Ansible playbook and a role to install Gravitee on Openshift

* A sample inventory

* Docker images : because the default restricted [SCC](https://docs.openshift.com/container-platform/3.6/admin_guide/manage_scc.html) restricts the permissions of containers that are deployed on Openshift the original images had to be adapted.

  * **Important :** Elastic container needs the following command to be run on the hosts : `sysctl -w vm.max_map_count=262144`

----

## Edit the inventory

In the `inventory/example.inventory` set the hostname or IP of a Openshift master.

Change any of the parameters to match your needs, especially `gravity_host` used to create the routes and expose the services.

Please note that for the moment the role uses only **one host** :

* UI can bed accessed with `https://{{ gravity_host }}`
* Management service is accessed with `https://{{ gravity_host }}/management`
* Gateway can be accessed through the `https://{{ gravity_host }}/v1/myapi`

## Run the playbook

```bash
> ansible-playbook playbook.yml -i inventory/example.inventory
```

## TODO :

Please check [issues](https://github.com/barkbay/openshift-ansible-gravitee/issues)