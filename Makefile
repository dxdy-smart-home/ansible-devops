ANSIBLE_PLAYBOOK_WRAPPER=ansible-playbook --vault-password-file=vault_pass --extra-vars @passwd.yml.enc -i inventory/${CONFIG}

co2_install:
	${ANSIBLE_PLAYBOOK_WRAPPER} co2.yml

edit_passwd:
	ansible-vault edit passwd.yml.enc --vault-password-file=vault_pass
