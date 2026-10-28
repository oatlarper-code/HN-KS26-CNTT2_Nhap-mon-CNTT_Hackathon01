# Script: auto_report.ps1
# Tac gia: Nguyen Hoang Minh Phuc
# Ngay tao: 28/10/2026

Write-Host "Dang loc log...";
Write-Host "===BAO CAO LOI===" > logs/auto_report.txt
Get-content logs/fruit.log | Select-string "ERROR" > logs/auto_report.txt 

Write-Host "Hoan thanh!"
