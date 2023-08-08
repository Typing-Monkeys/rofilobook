# rofilobook
Immagini Docker per Kubeflow

## Base

Immagine base da cui partire per creare immagini con dipendenze specifiche per i differenti task.

**Pull dell'immagine:**
```bash
docker pull ghcr.io/typing-monkeys/rofilobook:latest
```

**Template per creare la propria immagine:**
```dockerfile
FROM ghcr.io/typing-monkeys/rofilobook:latest

USER root
# installa dipendenze con apt, modifica file di configurazione,
# o qualunque altra operazione che necessiti dei permessi di root

USER jovyan

# installa pacchetti con pip o qualunque altra operazione che
# NON richieda i permessi di root
```

## Interpolation Task

```bash
docker pull ghcr.io/typing-monkeys/rofilobook:interpolation
```
