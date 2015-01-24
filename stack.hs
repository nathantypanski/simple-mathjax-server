module Main where

import Happstack.Server ( Browsing(EnableBrowsing), nullConf
                        , serveDirectory, simpleHTTP, Conf(port)
                        )

conf = nullConf { port = 12019 }

main :: IO ()
main = simpleHTTP conf $ serveDirectory EnableBrowsing [] "./MathJax"
