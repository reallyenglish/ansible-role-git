# ansible-role-git

Install `git` and git-related packages. Nothing else.

# Requirements

None

# Role Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `git_package` | package name of `git` | `{{ __git_package }}` |
| `git_additional_packages` | list of additional packages to install | `[]` |

## Debian

| Variable | Default |
|----------|---------|
| `__git_package` | `git` |

## FreeBSD

| Variable | Default |
|----------|---------|
| `__git_package` | `git` |

## OpenBSD

| Variable | Default |
|----------|---------|
| `__git_package` | `git` |

## RedHat

| Variable | Default |
|----------|---------|
| `__git_package` | `git` |

# Dependencies

None

# Example Playbook

```yaml
- hosts: localhost
  roles:
    - ansible-role-git
  vars:
    git_additional_packages:
      - "{% if ansible_os_family == 'FreeBSD' %}gitflow{% elif ansible_os_family == 'OpenBSD' %}git-cvs{% elif ansible_os_family == 'RedHat' %}git-cvs{% else %}git-flow{% endif %}"
```

# License

```
Copyright (c) 2017 Tomoyuki Sakurai <tomoyukis@reallyenglish.com>

Permission to use, copy, modify, and distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
```

# Author Information

Tomoyuki Sakurai <tomoyukis@reallyenglish.com>

This README was created by [qansible](https://github.com/trombik/qansible)
