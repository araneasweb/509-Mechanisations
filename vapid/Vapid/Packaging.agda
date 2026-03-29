module Vapid.Packaging where

open import Vapid.Common
open import Vapid.V0
open import Vapid.V1.Syntax
open import Vapid.V1.Total
open import Vapid.V1.Partial

record TotalLanguage : Set₁ where
  field
    Pgm  : Set
    Obs  : Set
    eval : Pgm → Obs

record PartialLanguage : Set₁ where
  field
    Pgm  : Set
    Obs  : Set
    eval : Pgm → Maybe Obs

Vapid₀ : TotalLanguage
Vapid₀ = record
  { Pgm  = PGM₀
  ; Obs  = OBS₀
  ; eval = eval₀
  }

Vapid₁-total : TotalLanguage
Vapid₁-total = record
  { Pgm  = PGM₁
  ; Obs  = OBS₁ᵀ
  ; eval = eval₁ᵀ
  }

Vapid₁-partial : PartialLanguage
Vapid₁-partial = record
  { Pgm  = PGM₁
  ; Obs  = OBS₁ᴾ
  ; eval = eval₁ᴾ
  }
