$libs = (ls .\libraries\ -Recurse -Include *.jar | % { $_.FullName }) -Split([Environment]::NewLine, [System.StringSplitOptions]::RemoveEmptyEntries) -join ";"
$content = -join("-cp versions\1.21.3\paper-1.21.3.jar;", $libs, " org.bukkit.craftbukkit.Main")
[IO.File]::WriteAllLines("args.txt", $content)