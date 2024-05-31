# Theorie

## Vereisten

- **XAMPP** of een vergelijkbare lokale serveromgeving.
- Een code editor, zoals **Visual Studio Code** of **Sublime Text**.
- Basiskennis van PHP, MySQL en webontwikkeling.

## Installatie

1. **Projectbestanden Kopiëren**
    - Kopier alles naar de map **xampp/htdocs**.

2. **Database Configureren**
    - Open het bestand **core/db_connect.php** en verander de database-instellingen naar jouw lokale configuratie: **$dbhost**, **$dbuser**, **$dbpass**, **$dbname** en **BASEURL**, **BASEURL_CMS**, **ABSOLUTE_HREF**.
    - Open het bestand **theorie\login\core\header.php** en verander de db_connect naar jouw lokale configuratie.
    - Open andere bestanden en verander de links naar jouw lokale configuratie.

3. **Start Apache en MySQL**
    - Start de **Apache** en **MySQL** services via het **XAMPP Control Panel**.

4. **Database Importeren**
    - Ga naar **phpMyAdmin**.
    - Maak een nieuwe database aan met de naam **webshop**.
    - Importeer het bestand **theorie.sql** in de nieuwe database.

## Starten van applicatie

- Open je webbrowser en ga naar **https://localhost/[theorie_url]**.

## Let op

- Alleen categorie b werkt
- De er zit geen tijds limiet op
- Er zit geen einde op

## Admin

- To log in as admin use the username: Guest_User and password: Guest_Password.
- Beware, messing around in the CMS is at your own risk