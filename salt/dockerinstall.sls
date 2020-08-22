docker installeren:
  pkg.installed:
    - pkgs:
      - docker.io

docker:
  service.running:
    - enable: True
    - reload: True