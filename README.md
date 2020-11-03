# MyNixDevOverlay

Overlay para desenvolvimento de pacotes para o Nix e NixOS.

## Pacotes

### No Nixpkgs

- velero 
- popeye 

### Pronto

- kube-capacity (PR aberta)
- kubectl-example (PR aberta)
- gojsontoyaml (PR aberta)

### Empacotando...

- jsonnet-bundler
- kube-linter

### TODO

- Jmeter (sem mantenedor)
- OCS Inventory Agent
- rtop
## TODO

- Add nix install no Github dos pacotes que mantenho
- Multi Arch/OS (Darwin & ARM)
- Backport? (Para as branchs anteriores ao Nix Unstable)
- Nix tests
- Golang tests (Rodar determinados testes somente)
- Notificacoes para novas releases (por enquanto somente via Github)

## Bugs

- Checar velero shell completion (collision between `velero-1.5.1/share/bash-completion/completions/helm.bash` and `helm-3.3.1/share/bash-completion/completions/helm.bash` and collision between `velero-1.5.1/share/zsh/site-functions/_helm` and `helm-3.3.1/share/zsh/site-functions/_helm`)
