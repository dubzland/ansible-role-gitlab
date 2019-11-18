# Ansible Role: GitLab
[![Gitlab pipeline status (self-hosted)](https://git.dubzland.net/dubzland/ansible-role-gitlab/badges/master/pipeline.svg)](https://git.dubzland.net/dubzland/ansible-role-gitlab)

Installs and configures the GitLab CE DevOps platform.

## Requirements

Ansible 2.2 or higher.

## Role Variables

Available variables are listed below, along with their default values (see
    `defaults/main.yml` for more info):

### dubzland_gitlab_edition

```yaml
dubzland_gitlab_edition: 'gitlab-ee'
```

Edition of GitLab to install (ee/ce).

### dubzland_gitlab_version

```yaml
dubzland_gitlab_version: ""
```

Specific version of GitLab to install.  Must match the platform's package
manager's version format (ie. for Debian: `12.3.5-ee.0`).

### dubzland_gitlab_configuration_template

```yaml
dubzland_gitlab_configuration_template: 'etc/gitlab/gitlab.rb.j2'
```

Template used to generate `/etc/gitlab/gitlab.rb`.  Override if you need more
customization than the variables provided.

### dubzland_gitlab_external_url

```yaml
dubzland_gitlab_external_url: 'https://gitlab/'
```

URL on which GitLab will be reachable.

### dubzland_gitlab_time_zone

```yaml
dubzland_gitlab_time_zone: 'UTC'
```

Default time zone used for dates in GitLab.

### dubzland_gitlab_email_enabled

```yaml
dubzland_gitalb_email_enabled: "false"
```

Should GitLab generate emails? (must be a string).

### dubzland_gitlab_email_from

```yaml
dubzland_gitlab_email_from: 'gitlab@example.com'
```

Source email address used by GitLab for outgoing emails.

### dubzland_gitlab_email_display_name

```yaml
dubzland_gitlab_email_display_name: 'GitLab'
```

Human readable name to use for outgoing emails.

### dubzland_gitlab_email_reply_to

```yaml
dubzland_gitlab_email_reply_to: 'gitlab@example.com'
```

Reply-to email address used in outgoing emails.

### dubzland_gitlab_default_theme

```yaml
dubzland_gitlab_default_theme: 1
```

Theme used as the default for new users.

### dubzland_gitlab_nginx_redirect_http_to_https

```yaml
dubzland_gitlab_nginx_redirect_http_to_https: "true"
```

Should GitLab redirect `http://` traffic to `https://`? (must be a string)

### dubzland_gitlab_nginx_ssl_certificate/dubzland_gitlab_nginx_ssl_certificate_key

```yaml
dubzland_gitlab_nginx_ssl_certificate: "/etc/gitlab/ssl/gitlab.crt"
dubzland_gitlab_nginx_ssl_certificate_key: "/etc/gitlab/ssl/gitlab.key"
```

SSL Certificate/key to use for `https://` traffic.

### dubzland_gitlab_nginx_ssl_dhparams

```yaml
# dubzland_gitlab_nginx_ssl_dhparams: "/etc/gitlab/ssl/dhparams.pem"
```

Diffie-Hellman key key used for encryption.

### dubzland_gitlab_nginx_ssl_protocols

```yaml
dubzland_gitlab_nginx_ssl_protocols: "TLSv1.1 TLSv1.2"
```

TLS versions NGINX should support.

### dubzland_gitlab_nginx_listen_port

```yaml
# dubzland_gitlab_nginx_listen_port: 80
```

Override the port GitLab's nginx server will listen on.

### dubzland_gitlab_nginx_listen_https

```yaml
# dubzland_gitlab_nginx_listen_https: "false"
```

Should GitLab accept `https://` connections?  Set this to "false" if you have
another reverse proxy handling TLS termination.

### dubzland_gitlab_create_self_signed_cert

```yaml
dubzland_gitlab_create_self_signed_cert: "true"
```

Whether or not a self-signed certificate should be generated.  If `true`, the
certificate/key specified above will be generated.

### dubzland_gitlab_self_signed_cert_subject

```yaml
dubzland_gitlab_self_signed_cert_subject: "/C=US/ST=Mississippi/L=Hernaneo/O=Tech/CN=gitlab"
```

Subject to use when generating a self-signed certificate.

### dubzland_gitlab_backups_enabled

```yaml
dubzland_gitlab_backups_enabled: True
```

Whether the daily backup job should be enabled.

### dubzland_gitlab_backup_keep_time

```yaml
dubzland_gitlab_backup_keep_time: 604800
```

Time (in seconds) to retain backups (7 days).

## Dependencies

None.

## Example Playbook

```yaml
- hosts: servers
  roles:
    - role: dubzland.gitlab
```

## License

MIT

## Author

* [Josh Williams](https://codingprime.com)
