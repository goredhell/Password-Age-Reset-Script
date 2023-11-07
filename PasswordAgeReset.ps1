#Aytek Gafarogullari 02.2018
#Active Directory üzerinde password group policy uzerinde degisiklik yapmadan kullanicinin son sifre degistirdigi tarihi sifirlamak

#Aytek Gafarogullari 02.2018
#Reset a users password age without resetting password. You need run script in a Domain Admin account.

$Kullanici = Read-Host -Prompt 'User to reset password age:'
SET-ADUSER $kullanici -replace @{pwdLastSet="0"}
SET-ADUSER $kullanici -replace @{pwdLastSet="-1"}