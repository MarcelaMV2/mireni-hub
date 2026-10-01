---
name: sin-emoji-usar-iconos-svg
description: El usuario no quiere emojis ni caracteres Unicode decorativos; en su UI usa iconos SVG del set Tabler
metadata:
  type: feedback
---

No usar emojis ni caracteres Unicode decorativos (como `♥`, `★`, `→`) en la UI de mireni-hub. Para cualquier símbolo o pictograma usar iconos SVG, preferentemente del set **Tabler** vía `astro-icon/components` (`import { Icon } from "astro-icon/components"`).

Ejemplo correcto:
```astro
<Icon name="tabler:heart-filled" width={16} height={16} class="mi-clase" aria-hidden="true" />
```

**Why:** El usuario corrigió explícitamente cuando sugerí cambiar el corazón SVG del footer por el carácter `♥` ("no cochinos emojis sino iconos"). Además, el set de iconos instalado es **tabler**, no `ph` — usar `ph:` rompe el build con `Unable to locate the "ph" icon set!`.

**How to apply:** Antes de añadir un símbolo decorativo, reutilizar un icono Tabler existente en lugar de un carácter. Verificar el prefijo del set contra los que ya se usan en el repo (`grep -rn 'name="tabler:' src/`). Añadir `aria-hidden="true"` en iconos puramente decorativos y `aria-label` en los que sean interactivos.