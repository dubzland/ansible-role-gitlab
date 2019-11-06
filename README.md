# Dubzland: GitLab
[![Gitlab pipeline status (self-hosted)](https://img.shields.io/gitlab/pipeline/jdubz/dubzland-gitlab?gitlab_url=https%3A%2F%2Fgit.dubzland.net)](https://git.dubzland.net/jdubz/dubzland-gitlab/pipelines)

Installs and configures the GitLab CE DevOps platform.

## Requirements

Ansible 2.2 or higher.

## Role Variables

Available variables are listed below, along with their default values (see
    `defaults/main.yml` for more info):

```yaml
dubzland_gitlab_version: ""
```

Specific version of GitLab to install.  Must match the platform's package
manager's version format (ie. for Debian: `12.3.5-ee.0`).

## Dependencies

None.

## Example Playbook

```yaml
- hosts: servers
  roles:
    - role: gitlab
```

## License

MIT

## Author

* [Josh Williams](https://codingprime.com)
