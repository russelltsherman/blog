---
title: "AWS KMS+SSM"
description: "Use Terraform to easily provision KMS+SSM resources for chamber."
---

{{% dialog type="warning" icon="fa-info-circle" title="Prerequisites" %}}
This assumes you've followed the [Geodesic Module Usage with Terraform]() guide which covers all the scaffolding necessary to get started.
{{% /dialog %}}

## Dependencies

None

## Install

### Add `chamber` Terraform Root Module

Create a file in `/conf/chamber/kms.tf` with following content

{{% include-github title="/conf/chamber/kms-key.tf" type="code-block" org="cloudposse" repo="terraform-root-modules" ref="0.1.5" file="/aws/chamber/kms-key.tf" language="hcl" %}}

### Rebuild the Geodesic Module

[Rebuild]() the module
```shell
make docker/build
```

### Start the Geodesic Shell

Run the Geodesic shell followed by `assume-role`
```shell
$CLUSTER_NAME
```

Then login to AWS by running `assume-role`:

### Provision Chamber Resources

Change directory to `/conf/chamber` and run there commands to provision the `kms` backend.
```bash
init-terraform
terraform plan
terraform apply
```

## Usage

Use [Chamber]({{< relref "tools/chamber.md" >}}) to manage secrets in KMS.
