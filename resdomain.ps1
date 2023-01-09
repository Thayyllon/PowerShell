#Buscador de dominios em pagina web

$site = Read-Host "Digite o site"
$web = Invoke-WebRequest -uri "$site" -Method Options
echo "O servicor roda:"
$web.headers.server
echo ""
echo "O servidor aceita os metodos"
$web.Headers.Allow
$web2 = Invoke-WebRequest -uri "$site"
echo "Links encontrados no site:"
echo ""
$web2.links.href | Select-String http:// 
