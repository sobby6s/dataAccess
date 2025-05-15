CREATE TABLE `magazin`.`produse` (
    `idprodus` INT UNSIGNED NOT NULL AUTO_INCREMENT , 
    `numep` VARCHAR(100) NOT NULL , 
    `cantitate` INT NOT NULL DEFAULT '0' , 
    `idfirma` INT NOT NULL , 
    `firma` VARCHAR(50) NOT NULL , 
    `adresafirma` VARCHAR(100) NULL , 
    `modelprodus` VARCHAR(50) NOT NULL , 
    `stocprodus` INT NOT NULL DEFAULT '0' , 
    `pret` DECIMAL(10,2) NOT NULL , 
    `categoriep` VARCHAR(100) NOT NULL , 
    `descrierep` TEXT NOT NULL , 
    `dataadaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`idprodus`)) ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_general_ci;


    INSERT INTO `produse` 
    (`idprodus`, `numep`, `cantitate`, `idfirma`, `firma`, `adresafirma`, `modelprodus`, `stocprodus`, `pret`, `categoriep`, `descrierep`, `dataadaugare`) 
    VALUES ('1', 'Telefon mobil OnePlus 12, Dual SIM, 16GB RAM, 512GB, 5G, Silky Black', '10', '1', 's.c Telefoane de la baiatul s.r.l', 'str. ion buzoianu nr. 12', 'baton', '10', '3780.56', 'Smartphone', 'Era si timpul\r\n\r\nTimpul da putere creatiei, lasandu-si amprenta peste tot in jurul nostru. Cu un design elegant si o maiestrie inspirata de cele mai luxoase ceasuri din lume, declaratiile indraznete rezida in fiecare detaliu.\r\n\r\nPerformanta de elita, de lunga durata\r\n\r\nDepasind orice Pro sau Ultra, OnePlus 12 redefineste standardul de aur pentru puterea si eficienta unui flagship. Cu un procesor ultra-flagship, pana la 16 GB de memorie RAM LPDDR5X si o baterie masiva de 5400 mAh, alimentati-va spre varful performantei.', current_timestamp());


    CREATE TABLE `magazin`.`firme` (
        `id` INT( ) UNSIGNED NOT NULL AUTO_INCREMENT , 
        `nume` VARCHAR(200) NOT NULL , 
        `adresa` VARCHAR(200) NOT NULL , 
        `dataadaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , PRIMARY KEY (` id`)) ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_general_ci;