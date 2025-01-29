ask :: String -> IO ()
--ask is the function name and prompt is the arguement
ask prompt =
  do
    --this prints the promt
  putStrLn prompt
  line <- getLine
  while line/= "quit"
    if line == ""
      then ask prompt
      else putStrLn ("you said: " ++ reverse line)

main :: IO ()
main =
  do
    --assigns the string to the variable prompt
  let prompt = "please say something"
  --this calls the ask function passing the prompt as the arugement
  ask prompt