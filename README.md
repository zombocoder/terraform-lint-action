# Terraform Lint Action

A GitHub Action to automatically lint and ensure your Terraform files are formatted consistently.

## Usage

To use this action in your GitHub workflow, add the following configuration to your `.github/workflows/terraform-lint.yml` file:

```yaml
name: Terraform Lint

on: [push, pull_request]

jobs:
  terraform-lint:
    runs-on: ubuntu-latest
    steps:
      - name: Check out repository
        uses: actions/checkout@v3

      - name: Lint Terraform files
        uses: zombocoder/terraform-lint-action@v1.0.0
```

### Inputs

This action does not require any inputs.

### Example Output

The action will provide a detailed output of any files that need formatting, allowing you to correct them by running `terraform fmt` locally.

### Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
