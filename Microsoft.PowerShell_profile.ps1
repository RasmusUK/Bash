#Import-Module posh-git
#oh-my-posh init pwsh | Invoke-Expression
Invoke-Expression (&starship init powershell)
#Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

Import-Module PSReadLine
#Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
#Set-PSReadLineOption -EditMode Windows
Set-PSReadLineKeyHandler -Key Tab -Function Complete
#Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
#Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

#Functions for PRDAT
#fsharp path = C:\Users\rasmu\Documents\fsharp\
#$prdatFsLexYacc = C:\Users\rasmu\Documents\fsharp\FsLexYacc.Runtime.dll
#$prdatFsLex = C:\Users\rasmu\Documents\fsharp\fslex.exe
#$prdatFsyacc = C:\Users\rasmu\Documents\fsharp\fsyacc.exe
function prdat { cd "C:\Git\PRDAT_Assignments\" }
function fsi
    {      
        param(
            [Parameter(
            Mandatory=$True,
            ValueFromRemainingArguments=$true,
            Position = 1
            )][string[]]
            $files
        )  
        dotnet fsi -r C:\Users\rasmu\Documents\fsharp\FsLexYacc.Runtime.dll $files 
    }   
function fsyacc ($name, $file) { C:\Users\rasmu\Documents\fsharp\fsyacc.exe --module $name $file }
function fslex ($file) { C:\Users\rasmu\Documents\fsharp\fslex.exe --unicode $file }

#cd shortcuts
function g { cd "C:\Git\" }
function secua { cd "C:\Git\SECU_Assignments\" }

#Git shortcuts
function gs { git status }
function gacp ($msg) 
{
    git pull
    git add .
    git commit -m $msg
    git push
}
