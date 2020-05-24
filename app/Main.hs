{-# OPTIONS -Wno-orphans #-}

module Main
  ( main
  ) where

import qualified Data.Text.Lazy.IO as TL

import qualified Lorentz as L
-- import Lorentz.ContractRegistry

import Lorentz.Contracts.Example (measureBoaConstrictor)

-- contracts :: ContractRegistry
-- contracts =
--   ContractRegistry $ Map.fromList
--   [ 
--     "measureBoaConstrictor" ?:: ContractInfo
--     { ciContract = measureBoaConstrictor
--     , ciIsDocumented = True
--     }
--   ]

main :: IO ()
main =
  -- printContractFromRegistryDoc "example" contracts (Just "contracts/measureBoaConstrictor.tz")
  do
    TL.writeFile "contracts/measureBoaConstrictor.tz" $
      L.printLorentzContract False measureBoaConstrictor
    TL.writeFile "docs/measureBoaConstrictor.md" $
      L.renderLorentzDoc measureBoaConstrictor
