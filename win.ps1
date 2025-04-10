---
- name: Restart Windows Server
  hosts: win22  # Replace with the appropriate host or group
  gather_facts: yes
  tasks:
    - name: Restart the Windows Server
      win_reboot:
        reboot_timeout: 600
        test_command: whoami  # This ensures the server is responsive after reboot
      when: ansible_facts['os_family'] == "Windows"  # Ensures it's only for Windows hosts
