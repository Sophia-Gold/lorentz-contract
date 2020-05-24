# Boa constrictor measurement

This contract measures boa constrictor.

## Entrypoints

---

### `measureBoaConstrictor`

Measure the boa constrictor with given method.

**Argument:** 
  + **In Haskell:** ***method*** : [`MeasurementMethod`](#types-MeasurmentMethod)
  + **In Michelson:** `(or :method unit (or unit unit))`

<details>
  <summary><b>How to call this entrypoint</b></summary>

0. Construct an argument for the entrypoint.
1. Wrap into `MeasureBoaConstrictor` constructor.
    + **In Haskell:** `MeasureBoaConstrictor (·)`
    + **In Michelson:** `Left (·)`
</details>
<p>





---

### `zero`

Put zero to the storage.

**Argument:** 
  + **In Haskell:** [`()`](#types-lparenrparen)
  + **In Michelson:** `unit`

<details>
  <summary><b>How to call this entrypoint</b></summary>

0. Construct an argument for the entrypoint.
1. Wrap into `Zero` constructor.
    + **In Haskell:** `Zero (·)`
    + **In Michelson:** `Right (·)`
</details>
<p>









# Definitions

## Types

<a name="types-lparenrparen"></a>

---

### `()`

Unit primitive.

**Structure:** ()

**Final Michelson representation:** `unit`



<a name="types-Integer"></a>

---

### `Integer`

Signed number.

**Final Michelson representation:** `int`



<a name="types-MeasurmentMethod"></a>

---

### `MeasurmentMethod`

This type defines the way of measuring boa length. Single boa constrictor corresponds to 38 parrot steps, 31 monkey step and 9 elephant steps.

**Structure:** *one of* 
+ **ParrotStep** ()
+ **MonkeyStep** ()
+ **ElephantStep** ()


**Final Michelson representation:** `or unit (or unit unit)`



<a name="types-Named-entry"></a>

---

### `Named entry`

Some entries have names for clarity.

In resulting Michelson names may be mapped to annotations.

**Final Michelson representation (example):** `number: Integer` = `int`
