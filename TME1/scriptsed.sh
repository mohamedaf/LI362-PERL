#! /bin/bash

sed -nr '/\begin\{[^}]\}/,/\end\{[^}]\}/p' 
