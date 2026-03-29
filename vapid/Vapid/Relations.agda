module Vapid.Relations where

open import Vapid.Common

Functional : {P O : Set} → REL P O 0ℓ → Set
Functional {P} {O} R =
  (p : P) → (o₁ o₂ : O) → R p o₁ → R p o₂ → o₁ ≡ o₂

Total : {P O : Set} → REL P O 0ℓ → Set
Total {P} {O} R =
  (p : P) → Σ O (λ o → R p o)

graph : {P O : Set} → (P → O) → REL P O 0ℓ
graph f p o = f p ≡ o

graph? : {P O : Set} → (P → Maybe O) → REL P O 0ℓ
graph? f p o = f p ≡ just o

graph-functional : {P O : Set} → (f : P → O) → Functional (graph f)
graph-functional f p o₁ o₂ pf₁ pf₂ = trans (sym pf₁) pf₂

graph-total : {P O : Set} → (f : P → O) → Total (graph f)
graph-total f p = f p , refl

graph?-functional : {P O : Set} → (f : P → Maybe O) → Functional (graph? f)
graph?-functional f p o₁ o₂ pf₁ pf₂ =
  just-injective (trans (sym pf₁) pf₂)
