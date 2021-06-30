# Cabeceras

# Cabecera H1

## Cabecera H2

### Cabecera H3

#### Cabecera H4

##### Cabecera H5

###### Cabecera H6

# Underlines

## Underline 1

# Underline 2

#Enfasis

- _italica_
- _italica_
- **bold o strong**
- **bold o strong**
- ~~tachado~~
- podemos combinar \*italico, **bold** o ~~tachado~~

# Listas

## Ordenadas

1. Ítem
1. Ítem
1. Ítem

## Desordenadas

- Ítem
- Ítem
- Ítem
- Ítem

# Links

- [Google](http://www.google.com.co)
- [index](index.html)

# imágenes

- ![Imagen](https://git-scm.com/images/logo@2x.png)

# Snipets

Código en JSON

```JSON
[
  {
    "title": "apples",
    "count": [12000, 20000],
    "description": {"text": "...", "sensitive": false}
  },
  {
    "title": "oranges",
    "count": [17500, null],
    "description": {"text": "...", "sensitive": false}
  }
]
```

Código en kotlin

```Kotlin
import kotlinx.serialization.Serializable
import kotlin.random.Random

interface Building

@Serializable
class House(
    private val rooms: Int? = 3,
    val name: String = "Palace"
) : Building {
    var residents: Int = 4
        get() {
            println("Current residents: $field")
            return field
        }

    fun burn(evacuation: (people: Int) -> Boolean) {
        rooms ?: return
        if (evacuation((0..residents).random()))
            residents = 0
    }
}

fun main() {
    val house = House(name = "Skyscraper 1")
    house.burn {
        Random.nextBoolean()
    }
}
```
