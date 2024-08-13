# Distance

## Haversine Formula vs Spherical Law of cosines

### Analysis

#### Haversine Formula

Originates from José de Mendoza y Ríos (1801) and James Andrew (1805).

Characteristics:

- more calculations, more computing power needed
- more accurate - good for small distances, bad for huge

#### Spherical Law of Cosines

Originates from Al-Khwarizmi (9th century) and al-Battani (9th century).

Characteristics:
- less calculations, less computing power needed
- less accurate - good for huge distances, bad for small

### Example Comparisons

| Method | Origin | Destination | Distance |
| --- | --- | --- | --- |
| H. F. | Gate of Athena Archegetis | Ancient Agora | 0.102153949767329 |
| H. F. | Theatre of Dionysus | Parthenon | 0.180547757474251
| Sp. L. Cos. | Gate of Athena Archegetis | Ancient Agora | 0.102153916458736 |
| Sp. L. Cos. | Theatre of Dionysus | Parthenon | 0.180547738024323