module Vapid.V1.Total where

open import Vapid.Common
open import Vapid.Relations
open import Vapid.V1.Syntax

data OBS₁ᵀ : Set where
  r₁ r₂ ∞ : OBS₁ᵀ

eval₁ᵀ : PGM₁ → OBS₁ᵀ
eval₁ᵀ q₁ = r₂
eval₁ᵀ q₂ = r₁
eval₁ᵀ q₃ = ∞

Eval₁ᵀ : REL PGM₁ OBS₁ᵀ 0ℓ
Eval₁ᵀ = graph eval₁ᵀ

Eval₁ᵀ-functional : Functional Eval₁ᵀ
Eval₁ᵀ-functional = graph-functional eval₁ᵀ

Eval₁ᵀ-total : Total Eval₁ᵀ
Eval₁ᵀ-total = graph-total eval₁ᵀ
