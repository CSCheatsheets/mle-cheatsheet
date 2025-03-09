# `ada` - Command

`ada` means "Amazon Developer Account". It's required to authenticate the AWS ADA
credentials to log into AWS instances. Its configuration file is located in `~/.aws/config`.

## Print the Current ADA Identity

Print the identity information of the current ADA account/credential.

```shell
# Command
ada cred(entials) print --account [account_id] --role [role_type]

# Example
ada cred print --account 1234567 --role admin
ada credentials print --account 1234567 --role admin
```

## Update the Current ADA Credential

```shell
# Command
ada cred(entials) update \
    --account [account_id] \
    --role [role_type] \
    --provider [provider_tag] \
    --once

# Example
ada cred update \
    --account 1234567 \
    --role admin \
    --provider Isengard \
    --once
```
