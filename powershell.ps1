
# Paraméterek száma
$paramszam=$args.length

# Az egyes paraméterek
$param1=$args[0]
$param2=$args[1]

# Kiírás újsor nélkül
Write-Host -NoNewLine "Alma"

# Beolvasás konzolról (szám)
[int] $valtozo=Read-Host "Add meg a számot: "

# Várakozás
Start-Sleep 1 # 1 másodperc

# Dátum / idő komponens
$ora=(Get-Date).Hour
$perc=(Get-Date).Minute
$masodperc=(Get-Date).Second

# Külső parancs hívása eredmény visszaadással
$eredmeny=(./kulso.ps1)

# Utolsó futtatott parancs kilépési kódja / sikeres volt-e
$sikeresHaNulla=$lastExitCode
$sikeresHaIgaz=$?

# Véletlenszám 1 és 100 minimummal / maximummal
$veletlen=Get-Random -Maximum 101 -Minimum 1

# Változó összehasonlítások, minden változóra értelmezés szerint működik (pl. szövegre ABC)
$igaz=42 -eq 42 # két változó egyenlő
$igaz=42 -ne 43 # változók nem egyenlő
$igaz=42 -lt 43 # első változó kisebb
$igaz=42 -le 43 # első változó kisebb vagy egyenlő
$igaz=43 -gt 42 # első változó nagyobb
$igaz=43 -ge 42 # első változó nagyobb vagy egyenlő
$igaz="alma" -match '^a.+ma' # reguláris kifejezés

# Elágazás
if (42 -eq 42) {
	Write-Host "Reméltük"
} else {
	Write-Host "Ajjaj"
}

# Előltesztelős WHILE
$i=0
while ($i -lt 10) {
	
	$i++
}

# Hátultesztelős WHILE
$i=0
do {

	$i++
} while ($i -lt 10)

# FOR
for ($i = 0; $i -lt 10; $i++) {

}
