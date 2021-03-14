ANSIBLE_PLAYBOOK_WRAPPER=ansible-playbook --vault-password-file=vault_pass --extra-vars @passwd.yml.enc -i inventory/${CONFIG}

co2_install:
	${ANSIBLE_PLAYBOOK_WRAPPER} co2.yml

zigbee2mqtt_install:
	${ANSIBLE_PLAYBOOK_WRAPPER} zigbee2mqtt.yml -t install

zigbee2mqtt_start:
	${ANSIBLE_PLAYBOOK_WRAPPER} zigbee2mqtt.yml -t start

zigbee2mqtt_stop:
	${ANSIBLE_PLAYBOOK_WRAPPER} zigbee2mqtt.yml -t stop

edit_passwd:
	ansible-vault edit passwd.yml.enc --vault-password-file=vault_pass
