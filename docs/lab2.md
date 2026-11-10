# Lab 2

- Le ruleset protect-main oblige à passer par une pull request pour modifier main, on ne peut plus pousser directement dessus.
- Sur chaque PR le workflow kraken lance kraken / lint-test (ruff + pytest) et le merge est bloqué tant qu'il est rouge, je l'ai vu avec la PR test-casse.
- kraken / build-push construit aussi l'image sur la PR (sans la pousser), donc un Dockerfile cassé fait échouer ce check obligatoire et bloque aussi le merge.
