{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DeriveFunctor #-}

module Network.Ethereum.Contract.HKD where

data Solidity a = Solidity a deriving (Functor)

type family HKD (f :: * -> *) a :: * where
  HKD Solidity a = a
  HKD f a = f a
