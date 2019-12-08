docker-compose down
del site\public\typo3conf\LocalConfiguration.php
del site\public\typo3conf\PackageStates.php
docker-compose build