module Vapid.Common where

open import Level public using (0ℓ)
open import Data.Empty public using (⊥)
open import Data.Maybe public using (Maybe; just; nothing)
open import Data.Product public using (Σ; _,_)
open import Relation.Nullary public using (¬_)
open import Relation.Binary.Core public using (REL)
open import Relation.Binary.PropositionalEquality public using (_≡_; refl; sym; trans)

just-injective : {A : Set} {x y : A} → just x ≡ just y → x ≡ y
just-injective refl = refl
