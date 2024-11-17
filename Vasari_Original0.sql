--
-- Fichier généré par SQLiteStudio v3.4.4 sur Sun Nov 17 11:51:07 2024
--
-- Encodage texte utilisé : UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tableau : Indice Copioso delle cose più notabili
CREATE TABLE IF NOT EXISTS [Indice Copioso delle cose più notabili] (
    Co      INTEGER PRIMARY KEY AUTOINCREMENT,
    Name    TEXT,
    Pages   TEXT,
    Section TEXT,
    Vita    TEXT
);


-- Tableau : Location_General
CREATE TABLE IF NOT EXISTS Location_General (
    LG       INTEGER PRIMARY KEY AUTOINCREMENT,
    Name     TEXT,
    Specific TEXT    REFERENCES Location_Specific (LS) 
);

INSERT INTO Location_General (
                                 LG,
                                 Name,
                                 Specific
                             )
                             VALUES (
                                 1,
                                 'Ancona',
                                 NULL
                             );

INSERT INTO Location_General (
                                 LG,
                                 Name,
                                 Specific
                             )
                             VALUES (
                                 2,
                                 'Arezzo',
                                 ''
                             );

INSERT INTO Location_General (
                                 LG,
                                 Name,
                                 Specific
                             )
                             VALUES (
                                 3,
                                 'Ascesi',
                                 ''
                             );


-- Tableau : Location_Specific
CREATE TABLE IF NOT EXISTS Location_Specific (
    LS              INTEGER PRIMARY KEY AUTOINCREMENT,
    Parent_Location TEXT    REFERENCES Location_General (LG),
    Name            TEXT
);

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  1,
                                  '2',
                                  'Duomo'
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  2,
                                  '2',
                                  'Pieve'
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  3,
                                  '2',
                                  'S. Domenico'
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  4,
                                  '2',
                                  'S.  Francesco '
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  5,
                                  '2',
                                  'S.  Lorenzo'
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  6,
                                  '2',
                                  'S.  Ivstino'
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  7,
                                  '2',
                                  'Compagnia dello Spirito Santo'
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  8,
                                  '2',
                                  'Compagnia de Paracchivoli'
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  9,
                                  '2',
                                  'S.  Agostino'
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  10,
                                  '2',
                                  'S.  Domenico'
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  11,
                                  '2',
                                  'S.  Bernardo'
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  12,
                                  '2',
                                  'S.  Antonio'
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  13,
                                  '2',
                                  'S.  Maria delle Grazie'
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  14,
                                  '2',
                                  'Duomo Vecchio'
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  15,
                                  '2',
                                  'La Fraternita'
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  16,
                                  '2',
                                  'S.  Piero'
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  17,
                                  '2',
                                  'Badia'
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  18,
                                  '2',
                                  'Sargiano'
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  19,
                                  '3',
                                  'S.  Francesco'
                              );

INSERT INTO Location_Specific (
                                  LS,
                                  Parent_Location,
                                  Name
                              )
                              VALUES (
                                  20,
                                  '3',
                                  'S.  Chiara'
                              );


-- Tableau : Pages
CREATE TABLE IF NOT EXISTS Pages (
    P       INTEGER PRIMARY KEY AUTOINCREMENT,
    Page    TEXT,
    Section TEXT    REFERENCES Section (S),
    Vita    TEXT    REFERENCES Vita (V) 
);


-- Tableau : Profession
CREATE TABLE IF NOT EXISTS Profession (
    Profession INTEGER PRIMARY KEY AUTOINCREMENT,
    Nom        TEXT
);

INSERT INTO Profession (
                           Profession,
                           Nom
                       )
                       VALUES (
                           1,
                           'Pittore'
                       );

INSERT INTO Profession (
                           Profession,
                           Nom
                       )
                       VALUES (
                           2,
                           'Fcultore'
                       );

INSERT INTO Profession (
                           Profession,
                           Nom
                       )
                       VALUES (
                           3,
                           'Architettore'
                       );


-- Tableau : Section
CREATE TABLE IF NOT EXISTS Section (
    S    INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT
);

INSERT INTO Section (
                        S,
                        Name
                    )
                    VALUES (
                        1,
                        'Prima'
                    );

INSERT INTO Section (
                        S,
                        Name
                    )
                    VALUES (
                        2,
                        'Seconda'
                    );

INSERT INTO Section (
                        S,
                        Name
                    )
                    VALUES (
                        3,
                        'Terza - Vol.I'
                    );

INSERT INTO Section (
                        S,
                        Name
                    )
                    VALUES (
                        4,
                        'Terza - Vol.II'
                    );


-- Tableau : Tavola de luoghi dove sono l'opere descritte
CREATE TABLE IF NOT EXISTS [Tavola de luoghi dove sono l'opere descritte] (
    O                 INTEGER PRIMARY KEY AUTOINCREMENT,
    Description       TEXT,
    Location_General  TEXT,
    Location_Specific TEXT,
    Pages             TEXT    REFERENCES Pages (P),
    Section           TEXT
);


-- Tableau : Tavola delle Vite de gli Artefici
CREATE TABLE IF NOT EXISTS [Tavola delle Vite de gli Artefici] (
    Artistes   INTEGER PRIMARY KEY AUTOINCREMENT,
    Nom        TEXT,
    Profession TEXT    REFERENCES Profession (Nom),
    Page       TEXT    REFERENCES Pages (P),
    Section    TEXT    REFERENCES Section (S) 
);

INSERT INTO [Tavola delle Vite de gli Artefici] (
                                                    Artistes,
                                                    Nom,
                                                    Profession,
                                                    Page,
                                                    Section
                                                )
                                                VALUES (
                                                    1,
                                                    'Andrea Tafi',
                                                    NULL,
                                                    NULL,
                                                    '1'
                                                );

INSERT INTO [Tavola delle Vite de gli Artefici] (
                                                    Artistes,
                                                    Nom,
                                                    Profession,
                                                    Page,
                                                    Section
                                                )
                                                VALUES (
                                                    2,
                                                    'Andrea Pifano',
                                                    NULL,
                                                    NULL,
                                                    '1'
                                                );

INSERT INTO [Tavola delle Vite de gli Artefici] (
                                                    Artistes,
                                                    Nom,
                                                    Profession,
                                                    Page,
                                                    Section
                                                )
                                                VALUES (
                                                    3,
                                                    'Andrea Orgagna',
                                                    NULL,
                                                    NULL,
                                                    '1'
                                                );

INSERT INTO [Tavola delle Vite de gli Artefici] (
                                                    Artistes,
                                                    Nom,
                                                    Profession,
                                                    Page,
                                                    Section
                                                )
                                                VALUES (
                                                    4,
                                                    'Agoftino Sanefe',
                                                    NULL,
                                                    NULL,
                                                    '1'
                                                );

INSERT INTO [Tavola delle Vite de gli Artefici] (
                                                    Artistes,
                                                    Nom,
                                                    Profession,
                                                    Page,
                                                    Section
                                                )
                                                VALUES (
                                                    5,
                                                    'Agnol Sanefe',
                                                    NULL,
                                                    NULL,
                                                    '1'
                                                );

INSERT INTO [Tavola delle Vite de gli Artefici] (
                                                    Artistes,
                                                    Nom,
                                                    Profession,
                                                    Page,
                                                    Section
                                                )
                                                VALUES (
                                                    6,
                                                    'Ambrogio Lorenzetti',
                                                    NULL,
                                                    NULL,
                                                    '1'
                                                );

INSERT INTO [Tavola delle Vite de gli Artefici] (
                                                    Artistes,
                                                    Nom,
                                                    Profession,
                                                    Page,
                                                    Section
                                                )
                                                VALUES (
                                                    7,
                                                    'Agnol Gaddi',
                                                    NULL,
                                                    NULL,
                                                    '1'
                                                );

INSERT INTO [Tavola delle Vite de gli Artefici] (
                                                    Artistes,
                                                    Nom,
                                                    Profession,
                                                    Page,
                                                    Section
                                                )
                                                VALUES (
                                                    8,
                                                    'Antonio Venez',
                                                    NULL,
                                                    NULL,
                                                    '1'
                                                );

INSERT INTO [Tavola delle Vite de gli Artefici] (
                                                    Artistes,
                                                    Nom,
                                                    Profession,
                                                    Page,
                                                    Section
                                                )
                                                VALUES (
                                                    9,
                                                    'Antonio Filarete',
                                                    NULL,
                                                    NULL,
                                                    '2'
                                                );

INSERT INTO [Tavola delle Vite de gli Artefici] (
                                                    Artistes,
                                                    Nom,
                                                    Profession,
                                                    Page,
                                                    Section
                                                )
                                                VALUES (
                                                    10,
                                                    'Antonello da Mefsina',
                                                    NULL,
                                                    NULL,
                                                    '2'
                                                );

INSERT INTO [Tavola delle Vite de gli Artefici] (
                                                    Artistes,
                                                    Nom,
                                                    Profession,
                                                    Page,
                                                    Section
                                                )
                                                VALUES (
                                                    11,
                                                    'Aleffo Baldouinetti',
                                                    NULL,
                                                    NULL,
                                                    '2'
                                                );

INSERT INTO [Tavola delle Vite de gli Artefici] (
                                                    Artistes,
                                                    Nom,
                                                    Profession,
                                                    Page,
                                                    Section
                                                )
                                                VALUES (
                                                    12,
                                                    'Andrea del Caftagno',
                                                    NULL,
                                                    NULL,
                                                    '2'
                                                );

INSERT INTO [Tavola delle Vite de gli Artefici] (
                                                    Artistes,
                                                    Nom,
                                                    Profession,
                                                    Page,
                                                    Section
                                                )
                                                VALUES (
                                                    13,
                                                    'Antonio Roffelino',
                                                    NULL,
                                                    NULL,
                                                    '2'
                                                );

INSERT INTO [Tavola delle Vite de gli Artefici] (
                                                    Artistes,
                                                    Nom,
                                                    Profession,
                                                    Page,
                                                    Section
                                                )
                                                VALUES (
                                                    14,
                                                    'Antonio Pollaiuolo',
                                                    NULL,
                                                    NULL,
                                                    '2'
                                                );

INSERT INTO [Tavola delle Vite de gli Artefici] (
                                                    Artistes,
                                                    Nom,
                                                    Profession,
                                                    Page,
                                                    Section
                                                )
                                                VALUES (
                                                    15,
                                                    'Andrea Verocchio',
                                                    NULL,
                                                    NULL,
                                                    '2'
                                                );

INSERT INTO [Tavola delle Vite de gli Artefici] (
                                                    Artistes,
                                                    Nom,
                                                    Profession,
                                                    Page,
                                                    Section
                                                )
                                                VALUES (
                                                    16,
                                                    'Andrea Mantegna',
                                                    NULL,
                                                    NULL,
                                                    '2'
                                                );


-- Tableau : Tavola di Ritratti che sono nominati
CREATE TABLE IF NOT EXISTS [Tavola di Ritratti che sono nominati] (
    R       INTEGER PRIMARY KEY AUTOINCREMENT,
    Name    TEXT,
    Page    TEXT    REFERENCES Pages (P),
    Section TEXT    REFERENCES Section (S) 
);

INSERT INTO [Tavola di Ritratti che sono nominati] (
                                                       R,
                                                       Name,
                                                       Page,
                                                       Section
                                                   )
                                                   VALUES (
                                                       1,
                                                       'Agnolo Gaddi',
                                                       NULL,
                                                       '1'
                                                   );

INSERT INTO [Tavola di Ritratti che sono nominati] (
                                                       R,
                                                       Name,
                                                       Page,
                                                       Section
                                                   )
                                                   VALUES (
                                                       2,
                                                       'Agnolo Acciaiuoli',
                                                       NULL,
                                                       '2'
                                                   );

INSERT INTO [Tavola di Ritratti che sono nominati] (
                                                       R,
                                                       Name,
                                                       Page,
                                                       Section
                                                   )
                                                   VALUES (
                                                       3,
                                                       'Agnolo poliuiano',
                                                       NULL,
                                                       '2'
                                                   );

INSERT INTO [Tavola di Ritratti che sono nominati] (
                                                       R,
                                                       Name,
                                                       Page,
                                                       Section
                                                   )
                                                   VALUES (
                                                       4,
                                                       'Aleffo Baldouinetti',
                                                       NULL,
                                                       '2'
                                                   );

INSERT INTO [Tavola di Ritratti che sono nominati] (
                                                       R,
                                                       Name,
                                                       Page,
                                                       Section
                                                   )
                                                   VALUES (
                                                       5,
                                                       'Aleffandro papa VI',
                                                       NULL,
                                                       '2'
                                                   );

INSERT INTO [Tavola di Ritratti che sono nominati] (
                                                       R,
                                                       Name,
                                                       Page,
                                                       Section
                                                   )
                                                   VALUES (
                                                       6,
                                                       'Alberto Magno',
                                                       NULL,
                                                       '2'
                                                   );

INSERT INTO [Tavola di Ritratti che sono nominati] (
                                                       R,
                                                       Name,
                                                       Page,
                                                       Section
                                                   )
                                                   VALUES (
                                                       7,
                                                       'Alfonfo Re di Napoli',
                                                       NULL,
                                                       '2'
                                                   );

INSERT INTO [Tavola di Ritratti che sono nominati] (
                                                       R,
                                                       Name,
                                                       Page,
                                                       Section
                                                   )
                                                   VALUES (
                                                       8,
                                                       'Amerigo Vefpucci',
                                                       NULL,
                                                       '2'
                                                   );

INSERT INTO [Tavola di Ritratti che sono nominati] (
                                                       R,
                                                       Name,
                                                       Page,
                                                       Section
                                                   )
                                                   VALUES (
                                                       9,
                                                       'Antonino Arciuefcouo, & fanto',
                                                       NULL,
                                                       '2'
                                                   );

INSERT INTO [Tavola di Ritratti che sono nominati] (
                                                       R,
                                                       Name,
                                                       Page,
                                                       Section
                                                   )
                                                   VALUES (
                                                       10,
                                                       'Antonio Brancacci',
                                                       NULL,
                                                       '2'
                                                   );

INSERT INTO [Tavola di Ritratti che sono nominati] (
                                                       R,
                                                       Name,
                                                       Page,
                                                       Section
                                                   )
                                                   VALUES (
                                                       11,
                                                       'Antonio Colonna',
                                                       NULL,
                                                       '2'
                                                   );

INSERT INTO [Tavola di Ritratti che sono nominati] (
                                                       R,
                                                       Name,
                                                       Page,
                                                       Section
                                                   )
                                                   VALUES (
                                                       12,
                                                       'Antonio Roffellino fcultore',
                                                       NULL,
                                                       '2'
                                                   );

INSERT INTO [Tavola di Ritratti che sono nominati] (
                                                       R,
                                                       Name,
                                                       Page,
                                                       Section
                                                   )
                                                   VALUES (
                                                       13,
                                                       'Antonio Pollaiuoli',
                                                       NULL,
                                                       '2'
                                                   );

INSERT INTO [Tavola di Ritratti che sono nominati] (
                                                       R,
                                                       Name,
                                                       Page,
                                                       Section
                                                   )
                                                   VALUES (
                                                       14,
                                                       'Argiropilo',
                                                       NULL,
                                                       '2'
                                                   );

INSERT INTO [Tavola di Ritratti che sono nominati] (
                                                       R,
                                                       Name,
                                                       Page,
                                                       Section
                                                   )
                                                   VALUES (
                                                       15,
                                                       'Andrea del Caftagno',
                                                       NULL,
                                                       '2'
                                                   );

INSERT INTO [Tavola di Ritratti che sono nominati] (
                                                       R,
                                                       Name,
                                                       Page,
                                                       Section
                                                   )
                                                   VALUES (
                                                       16,
                                                       'Arnolfo architettore',
                                                       NULL,
                                                       '1'
                                                   );

INSERT INTO [Tavola di Ritratti che sono nominati] (
                                                       R,
                                                       Name,
                                                       Page,
                                                       Section
                                                   )
                                                   VALUES (
                                                       17,
                                                       'Arrigo VII.  Re d''Inghilterra',
                                                       NULL,
                                                       '2'
                                                   );


-- Tableau : Vita
CREATE TABLE IF NOT EXISTS Vita (
    V         INTEGER PRIMARY KEY AUTOINCREMENT,
    Name      TEXT,
    Section   TEXT    REFERENCES Section (S),
    [Page(s)] TEXT
);

INSERT INTO Vita (
                     V,
                     Name,
                     Section,
                     [Page(s)]
                 )
                 VALUES (
                     1,
                     'Andrea Tafi pittore',
                     '1',
                     NULL
                 );

INSERT INTO Vita (
                     V,
                     Name,
                     Section,
                     [Page(s)]
                 )
                 VALUES (
                     2,
                     'Andrea Pifano fcultore, & architettore',
                     '1',
                     NULL
                 );

INSERT INTO Vita (
                     V,
                     Name,
                     Section,
                     [Page(s)]
                 )
                 VALUES (
                     3,
                     'Andrea Orgagna pittore,  fculptore, & architettore',
                     '1',
                     NULL
                 );

INSERT INTO Vita (
                     V,
                     Name,
                     Section,
                     [Page(s)]
                 )
                 VALUES (
                     4,
                     'Arnolfo Lapi architettore',
                     '1',
                     NULL
                 );

INSERT INTO Vita (
                     V,
                     Name,
                     Section,
                     [Page(s)]
                 )
                 VALUES (
                     5,
                     'Agoftino Sanefe architettore, & fculptore',
                     '1',
                     NULL
                 );

INSERT INTO Vita (
                     V,
                     Name,
                     Section,
                     [Page(s)]
                 )
                 VALUES (
                     6,
                     'Agnol Sanefe fcultore,& architettore',
                     '1',
                     NULL
                 );

INSERT INTO Vita (
                     V,
                     Name,
                     Section,
                     [Page(s)]
                 )
                 VALUES (
                     7,
                     'Ambrogio Lorenzetti pittore',
                     '1',
                     NULL
                 );

INSERT INTO Vita (
                     V,
                     Name,
                     Section,
                     [Page(s)]
                 )
                 VALUES (
                     8,
                     'Agnol Gaddi pittore',
                     '1',
                     NULL
                 );

INSERT INTO Vita (
                     V,
                     Name,
                     Section,
                     [Page(s)]
                 )
                 VALUES (
                     9,
                     'Antonio Venez pittore',
                     '1',
                     NULL
                 );

INSERT INTO Vita (
                     V,
                     Name,
                     Section,
                     [Page(s)]
                 )
                 VALUES (
                     10,
                     'Antonio Filarete fcultore',
                     '2',
                     NULL
                 );

INSERT INTO Vita (
                     V,
                     Name,
                     Section,
                     [Page(s)]
                 )
                 VALUES (
                     11,
                     'Antonello da Mefsina pittore',
                     '2',
                     NULL
                 );

INSERT INTO Vita (
                     V,
                     Name,
                     Section,
                     [Page(s)]
                 )
                 VALUES (
                     12,
                     'Aleffo Baldouinetti pittore',
                     '2',
                     NULL
                 );

INSERT INTO Vita (
                     V,
                     Name,
                     Section,
                     [Page(s)]
                 )
                 VALUES (
                     13,
                     'Andrea del Caftagno pittore',
                     '2',
                     NULL
                 );

INSERT INTO Vita (
                     V,
                     Name,
                     Section,
                     [Page(s)]
                 )
                 VALUES (
                     14,
                     'Antonio Roffelino fcultore',
                     '2',
                     NULL
                 );

INSERT INTO Vita (
                     V,
                     Name,
                     Section,
                     [Page(s)]
                 )
                 VALUES (
                     15,
                     'Antonio Pollaiuolo pittore, & fcultore',
                     '2',
                     NULL
                 );

INSERT INTO Vita (
                     V,
                     Name,
                     Section,
                     [Page(s)]
                 )
                 VALUES (
                     16,
                     'Andre Verrocchio pittore,  fcultore, & architettore',
                     '2',
                     NULL
                 );

INSERT INTO Vita (
                     V,
                     Name,
                     Section,
                     [Page(s)]
                 )
                 VALUES (
                     17,
                     'Andrea Mantegna pittore',
                     '2',
                     NULL
                 );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
