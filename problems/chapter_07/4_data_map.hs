-- import the Data.Map module and solve the following problem
--   (You may use other modules as well if you wish)
--
-- See the url below for the list of functions in Data.Map
--   http://www.haskell.org/ghc/docs/7.6-latest/html/libraries/containers-0.5.0.0/Data-Map-Lazy.html
--
import Data.List as L
import qualified Data.Map as M

-- Define a function that will count the number of times
-- each character appears in a string
countMyChars :: String -> M.Map Char Integer
countMyChars = M.fromListWith (+) . testmap2
testmap2 myinput = [ (c,1) | c <- myinput ]

--countMyChars' :: String -> Map.Map Char Integer
--countMyChars' myinput = Map.fromListWith (+) . [ (c,1) | c <- myinput ]

-- Build a gene "database" from the following data that allows
-- the gene data to be looked up by gene name. Provide a function
-- that uses the db to lookup gene information.

geneData :: String
geneData =
  -- <Gene Name> <Ensembl Id> <Chromosome>
  "FKRP ENSG00000181027 Chromosome-19\n" ++
  "LMNA ENSG00000160789 Chromosome-1\n" ++
  "DYSF ENSG00000135636 Chromosome-2\n" ++
  "FKTN ENSG00000106692 Chromosome-9"

myDB :: M.Map String String
myDB = M.fromList parsedFile
    where parsedFile = map parseLine $ lines geneData
          parseLine line = (head $ words $ line, line)

dbLookup :: String -> Maybe String
dbLookup gene = M.lookup gene $ myDB
