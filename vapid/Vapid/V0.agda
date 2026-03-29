module Vapid.V0 where

open import Vapid.Common
open import Vapid.Relations

data PGM₀ : Set where
  p₁ p₂ : PGM₀

data OBS₀ : Set where
  o₁ o₂ : OBS₀

eval₀ : PGM₀ → OBS₀
eval₀ p₁ = o₂
eval₀ p₂ = o₁

Eval₀ : REL PGM₀ OBS₀ 0ℓ
Eval₀ = graph eval₀

Eval₀-functional : Functional Eval₀
Eval₀-functional = graph-functional eval₀

Eval₀-total : Total Eval₀
Eval₀-total = graph-total eval₀

eval₀-p₁↦o₂ : Eval₀ p₁ o₂
eval₀-p₁↦o₂ = refl

eval₀-p₂↦o₁ : Eval₀ p₂ o₁
eval₀-p₂↦o₁ = refl

eval₀-p₁↛o₁ : ¬ Eval₀ p₁ o₁
eval₀-p₁↛o₁ ()
