module Vapid.V1.Partial where

open import Vapid.Common
open import Vapid.Relations
open import Vapid.V1.Syntax

data OBS₁ᴾ : Set where
  s₁ s₂ : OBS₁ᴾ

eval₁ᴾ : PGM₁ → Maybe OBS₁ᴾ
eval₁ᴾ q₁ = just s₂
eval₁ᴾ q₂ = just s₁
eval₁ᴾ q₃ = nothing

Eval₁ᴾ : REL PGM₁ OBS₁ᴾ 0ℓ
Eval₁ᴾ = graph? eval₁ᴾ

Eval₁ᴾ-functional : Functional Eval₁ᴾ
Eval₁ᴾ-functional = graph?-functional eval₁ᴾ

eval₁ᴾ-q₁↦s₂ : Eval₁ᴾ q₁ s₂
eval₁ᴾ-q₁↦s₂ = refl

eval₁ᴾ-q₂↦s₁ : Eval₁ᴾ q₂ s₁
eval₁ᴾ-q₂↦s₁ = refl

eval₁ᴾ-q₃-undefined : (o : OBS₁ᴾ) → ¬ Eval₁ᴾ q₃ o
eval₁ᴾ-q₃-undefined o ()

Eval₁ᴾ-not-total : ¬ Total Eval₁ᴾ
Eval₁ᴾ-not-total tot with tot q₃
... | o , ()
