create table if not exists countries (
    country_code VARCHAR(2) not null primary key,
    country_name text not null,
    country_lat double precision not null,
    country_long double precision not null,
    balance double precision not null default 0
);

INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('AD','Andorra',42.546245,1.601554,3999892.60),
	 ('AE','United Arab Emirates',23.424076,53.847818,7613163.20),
	 ('AF','Afghanistan',33.93911,67.709953,6057504.71),
	 ('AG','Antigua and Barbuda',17.060816,-61.796428,6580619.52),
	 ('AI','Anguilla',18.220554,-63.068615,1507451.19),
	 ('AL','Albania',41.153332,20.168331,8027549.96),
	 ('AM','Armenia',40.069099,45.038189,9827452.72),
	 ('AN','Netherlands Antilles',12.226079,-69.060087,4478670.41),
	 ('AO','Angola',-11.202692,17.873887,1626632.90),
	 ('AQ','Antarctica',-75.250973,-0.071389,3326878.08);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('AR','Argentina',-38.416097,-63.616672,4097602.28),
	 ('AS','American Samoa',-14.270972,-170.132217,6523639.87),
	 ('AT','Austria',47.516231,14.550072,2833583.69),
	 ('AU','Australia',-25.274398,133.775136,6963022.48),
	 ('AW','Aruba',12.52111,-69.968338,1749415.26),
	 ('AZ','Azerbaijan',40.143105,47.576927,3391729.65),
	 ('BA','Bosnia and Herzegovina',43.915886,17.679076,3431669.38),
	 ('BB','Barbados',13.193887,-59.543198,2360799.85),
	 ('BD','Bangladesh',23.684994,90.356331,8276029.67),
	 ('BE','Belgium',50.503887,4.469936,2924290.82);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('BF','Burkina Faso',12.238333,-1.561593,6202054.38),
	 ('BG','Bulgaria',42.733883,25.48583,8230645.85),
	 ('BH','Bahrain',25.930414,50.637772,5610314.57),
	 ('BI','Burundi',-3.373056,29.918886,6438265.37),
	 ('BJ','Benin',9.30769,2.315834,4071413.02),
	 ('BM','Bermuda',32.321384,-64.75737,7619463.83),
	 ('BN','Brunei',4.535277,114.727669,1710608.11),
	 ('BO','Bolivia',-16.290154,-63.588653,1522543.84),
	 ('BR','Brazil',-14.235004,-51.92528,7829354.14),
	 ('BS','Bahamas',25.03428,-77.39628,1891224.37);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('BT','Bhutan',27.514162,90.433601,1213668.37),
	 ('BV','Bouvet Island',-54.423199,3.413194,9302307.44),
	 ('BW','Botswana',-22.328474,24.684866,8334985.10),
	 ('BY','Belarus',53.709807,27.953389,4339149.21),
	 ('BZ','Belize',17.189877,-88.49765,1757397.35),
	 ('CA','Canada',56.130366,-106.346771,3112219.36),
	 ('CC','Cocos [Keeling] Islands',-12.164165,96.870956,3505282.17),
	 ('CD','Congo [DRC]',-4.038333,21.758664,6387551.32),
	 ('CF','Central African Republic',6.611111,20.939444,3391899.02),
	 ('CG','Congo [Republic]',-0.228021,15.827659,2330071.68);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('CH','Switzerland',46.818188,8.227512,9053451.39),
	 ('CI','Côte d''Ivoire',7.539989,-5.54708,3824978.95),
	 ('CK','Cook Islands',-21.236736,-159.777671,4813993.29),
	 ('CL','Chile',-35.675147,-71.542969,7836737.32),
	 ('CM','Cameroon',7.369722,12.354722,9584937.73),
	 ('CN','China',35.86166,104.195397,5155789.83),
	 ('CO','Colombia',4.570868,-74.297333,9345589.23),
	 ('CR','Costa Rica',9.748917,-83.753428,9816160.79),
	 ('CU','Cuba',21.521757,-77.781167,7419386.21),
	 ('CV','Cape Verde',16.002082,-24.013197,7602406.16);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('CX','Christmas Island',-10.447525,105.690449,4639092.99),
	 ('CY','Cyprus',35.126413,33.429859,8848427.16),
	 ('CZ','Czech Republic',49.817492,15.472962,2811453.32),
	 ('DE','Germany',51.165691,10.451526,4126070.18),
	 ('DJ','Djibouti',11.825138,42.590275,7932734.89),
	 ('DK','Denmark',56.26392,9.501785,9015937.78),
	 ('DM','Dominica',15.414999,-61.370976,7030509.74),
	 ('DO','Dominican Republic',18.735693,-70.162651,3853857.44),
	 ('DZ','Algeria',28.033886,1.659626,5335321.38),
	 ('EC','Ecuador',-1.831239,-78.183406,3901621.45);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('EE','Estonia',58.595272,25.013607,1732952.29),
	 ('EG','Egypt',26.820553,30.802498,2751105.10),
	 ('EH','Western Sahara',24.215527,-12.885834,3524231.33),
	 ('ER','Eritrea',15.179384,39.782334,8351296.52),
	 ('ES','Spain',40.463667,-3.74922,9940879.69),
	 ('ET','Ethiopia',9.145,40.489673,8211487.94),
	 ('FI','Finland',61.92411,25.748151,2463609.09),
	 ('FJ','Fiji',-16.578193,179.414413,9970260.30),
	 ('FK','Falkland Islands [Islas Malvinas]',-51.796253,-59.523613,7712509.45),
	 ('FM','Micronesia',7.425554,150.550812,6354981.91);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('FO','Faroe Islands',61.892635,-6.911806,3253742.67),
	 ('FR','France',46.227638,2.213749,2875624.36),
	 ('GA','Gabon',-0.803689,11.609444,9754091.00),
	 ('GB','United Kingdom',55.378051,-3.435973,6333430.93),
	 ('GD','Grenada',12.262776,-61.604171,1109960.27),
	 ('GE','Georgia',42.315407,43.356892,5907484.64),
	 ('GF','French Guiana',3.933889,-53.125782,9046548.50),
	 ('GG','Guernsey',49.465691,-2.585278,6403838.55),
	 ('GH','Ghana',7.946527,-1.023194,5233278.17),
	 ('GI','Gibraltar',36.137741,-5.345374,4568688.25);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('GL','Greenland',71.706936,-42.604303,2325166.80),
	 ('GM','Gambia',13.443182,-15.310139,4203658.72),
	 ('GN','Guinea',9.945587,-9.696645,8109223.81),
	 ('GP','Guadeloupe',16.995971,-62.067641,2497735.04),
	 ('GQ','Equatorial Guinea',1.650801,10.267895,8504935.02),
	 ('GR','Greece',39.074208,21.824312,8765967.67),
	 ('GS','South Georgia and the South Sandwich Islands',-54.429579,-36.587909,8580211.44),
	 ('GT','Guatemala',15.783471,-90.230759,2443270.04),
	 ('GU','Guam',13.444304,144.793731,1951296.81),
	 ('GW','Guinea-Bissau',11.803749,-15.180413,1764473.94);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('GY','Guyana',4.860416,-58.93018,9045528.55),
	 ('GZ','Gaza Strip',31.354676,34.308825,3991082.04),
	 ('HK','Hong Kong',22.396428,114.109497,7685121.93),
	 ('HM','Heard Island and McDonald Islands',-53.08181,73.504158,5150942.98),
	 ('HN','Honduras',15.199999,-86.241905,6907135.96),
	 ('HR','Croatia',45.1,15.2,9762793.43),
	 ('HT','Haiti',18.971187,-72.285215,5026300.60),
	 ('HU','Hungary',47.162494,19.503304,7315878.53),
	 ('ID','Indonesia',-0.789275,113.921327,3095339.09),
	 ('IE','Ireland',53.41291,-8.24389,1355063.47);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('IL','Israel',31.046051,34.851612,7933070.20),
	 ('IM','Isle of Man',54.236107,-4.548056,6695707.03),
	 ('IN','India',20.593684,78.96288,5262873.23),
	 ('IO','British Indian Ocean Territory',-6.343194,71.876519,6892778.99),
	 ('IQ','Iraq',33.223191,43.679291,9009688.56),
	 ('IR','Iran',32.427908,53.688046,7097491.20),
	 ('IS','Iceland',64.963051,-19.020835,4256609.58),
	 ('IT','Italy',41.87194,12.56738,2031047.27),
	 ('JE','Jersey',49.214439,-2.13125,7225260.25),
	 ('JM','Jamaica',18.109581,-77.297508,9100102.24);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('JO','Jordan',30.585164,36.238414,1381102.62),
	 ('JP','Japan',36.204824,138.252924,1438892.20),
	 ('KE','Kenya',-0.023559,37.906193,5218398.39),
	 ('KG','Kyrgyzstan',41.20438,74.766098,5606401.18),
	 ('KH','Cambodia',12.565679,104.990963,3016311.47),
	 ('KI','Kiribati',-3.370417,-168.734039,2940134.98),
	 ('KM','Comoros',-11.875001,43.872219,9328964.86),
	 ('KN','Saint Kitts and Nevis',17.357822,-62.782998,7805175.03),
	 ('KP','North Korea',40.339852,127.510093,9492511.69),
	 ('KR','South Korea',35.907757,127.766922,9360436.16);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('KW','Kuwait',29.31166,47.481766,3387777.52),
	 ('KY','Cayman Islands',19.513469,-80.566956,2498264.07),
	 ('KZ','Kazakhstan',48.019573,66.923684,2048663.49),
	 ('LA','Laos',19.85627,102.495496,4847900.28),
	 ('LB','Lebanon',33.854721,35.862285,8762050.34),
	 ('LC','Saint Lucia',13.909444,-60.978893,2454633.20),
	 ('LI','Liechtenstein',47.166,9.555373,2887007.07),
	 ('LK','Sri Lanka',7.873054,80.771797,5690550.39),
	 ('LR','Liberia',6.428055,-9.429499,2168091.97),
	 ('LS','Lesotho',-29.609988,28.233608,7369166.84);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('LT','Lithuania',55.169438,23.881275,6107655.25),
	 ('LU','Luxembourg',49.815273,6.129583,7967747.16),
	 ('LV','Latvia',56.879635,24.603189,6558934.57),
	 ('LY','Libya',26.3351,17.228331,6283165.71),
	 ('MA','Morocco',31.791702,-7.09262,9874480.01),
	 ('MC','Monaco',43.750298,7.412841,9343022.87),
	 ('MD','Moldova',47.411631,28.369885,4723839.75),
	 ('ME','Montenegro',42.708678,19.37439,5322213.51),
	 ('MG','Madagascar',-18.766947,46.869107,6880012.86),
	 ('MH','Marshall Islands',7.131474,171.184478,5859438.68);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('MK','Macedonia [FYROM]',41.608635,21.745275,5615919.75),
	 ('ML','Mali',17.570692,-3.996166,3134895.95),
	 ('MM','Myanmar [Burma]',21.913965,95.956223,4785718.90),
	 ('MN','Mongolia',46.862496,103.846656,3240453.99),
	 ('MO','Macau',22.198745,113.543873,8385354.13),
	 ('MP','Northern Mariana Islands',17.33083,145.38469,1985502.29),
	 ('MQ','Martinique',14.641528,-61.024174,9198544.56),
	 ('MR','Mauritania',21.00789,-10.940835,1262355.83),
	 ('MS','Montserrat',16.742498,-62.187366,8436978.23),
	 ('MT','Malta',35.937496,14.375416,4531083.31);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('MU','Mauritius',-20.348404,57.552152,4179560.44),
	 ('MV','Maldives',3.202778,73.22068,4659711.80),
	 ('MW','Malawi',-13.254308,34.301525,1865670.59),
	 ('MX','Mexico',23.634501,-102.552784,5567080.17),
	 ('MY','Malaysia',4.210484,101.975766,4680827.78),
	 ('MZ','Mozambique',-18.665695,35.529562,3492296.73),
	 ('NA','Namibia',-22.95764,18.49041,6430166.83),
	 ('NC','New Caledonia',-20.904305,165.618042,5578219.10),
	 ('NE','Niger',17.607789,8.081666,1477948.91),
	 ('NF','Norfolk Island',-29.040835,167.954712,5257934.83);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('NG','Nigeria',9.081999,8.675277,4900357.77),
	 ('NI','Nicaragua',12.865416,-85.207229,8607679.06),
	 ('NL','Netherlands',52.132633,5.291266,7554511.49),
	 ('NO','Norway',60.472024,8.468946,3426138.20),
	 ('NP','Nepal',28.394857,84.124008,6515203.64),
	 ('NR','Nauru',-0.522778,166.931503,8536023.85),
	 ('NU','Niue',-19.054445,-169.867233,2837556.99),
	 ('NZ','New Zealand',-40.900557,174.885971,8716027.91),
	 ('OM','Oman',21.512583,55.923255,2293969.15),
	 ('PA','Panama',8.537981,-80.782127,2323479.50);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('PE','Peru',-9.189967,-75.015152,6158017.49),
	 ('PF','French Polynesia',-17.679742,-149.406843,4900448.78),
	 ('PG','Papua New Guinea',-6.314993,143.95555,8694327.55),
	 ('PH','Philippines',12.879721,121.774017,8549393.37),
	 ('PK','Pakistan',30.375321,69.345116,6184739.04),
	 ('PL','Poland',51.919438,19.145136,8316436.50),
	 ('PM','Saint Pierre and Miquelon',46.941936,-56.27111,4264040.81),
	 ('PN','Pitcairn Islands',-24.703615,-127.439308,7818838.00),
	 ('PR','Puerto Rico',18.220833,-66.590149,5364249.32),
	 ('PS','Palestinian Territories',31.952162,35.233154,5558129.50);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('PT','Portugal',39.399872,-8.224454,4411430.23),
	 ('PW','Palau',7.51498,134.58252,6389179.64),
	 ('PY','Paraguay',-23.442503,-58.443832,3990027.93),
	 ('QA','Qatar',25.354826,51.183884,6058146.61),
	 ('RE','Réunion',-21.115141,55.536384,3661986.05),
	 ('RO','Romania',45.943161,24.96676,4992847.87),
	 ('RS','Serbia',44.016521,21.005859,6964919.89),
	 ('RU','Russia',61.52401,105.318756,4791436.93),
	 ('RW','Rwanda',-1.940278,29.873888,5978544.64),
	 ('SA','Saudi Arabia',23.885942,45.079162,8043751.81);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('SB','Solomon Islands',-9.64571,160.156194,7539041.83),
	 ('SC','Seychelles',-4.679574,55.491977,8104221.60),
	 ('SD','Sudan',12.862807,30.217636,8120009.44),
	 ('SE','Sweden',60.128161,18.643501,3663838.92),
	 ('SG','Singapore',1.352083,103.819836,2874423.46),
	 ('SH','Saint Helena',-24.143474,-10.030696,5450238.54),
	 ('SI','Slovenia',46.151241,14.995463,4084113.77),
	 ('SJ','Svalbard and Jan Mayen',77.553604,23.670272,4656606.15),
	 ('SK','Slovakia',48.669026,19.699024,1168571.30),
	 ('SL','Sierra Leone',8.460555,-11.779889,4455828.25);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('SM','San Marino',43.94236,12.457777,8424104.18),
	 ('SN','Senegal',14.497401,-14.452362,9292312.33),
	 ('SO','Somalia',5.152149,46.199616,2864710.57),
	 ('SR','Suriname',3.919305,-56.027783,1411111.19),
	 ('ST','São Tomé and Príncipe',0.18636,6.613081,6414092.73),
	 ('SV','El Salvador',13.794185,-88.89653,8614873.56),
	 ('SY','Syria',34.802075,38.996815,8179811.28),
	 ('SZ','Swaziland',-26.522503,31.465866,1751593.90),
	 ('TC','Turks and Caicos Islands',21.694025,-71.797928,8445452.65),
	 ('TD','Chad',15.454166,18.732207,6695543.40);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('TF','French Southern Territories',-49.280366,69.348557,9426401.75),
	 ('TG','Togo',8.619543,0.824782,5935908.01),
	 ('TH','Thailand',15.870032,100.992541,8714755.77),
	 ('TJ','Tajikistan',38.861034,71.276093,1559369.05),
	 ('TK','Tokelau',-8.967363,-171.855881,5915067.67),
	 ('TL','Timor-Leste',-8.874217,125.727539,2002249.85),
	 ('TM','Turkmenistan',38.969719,59.556278,6776000.43),
	 ('TN','Tunisia',33.886917,9.537499,5316021.24),
	 ('TO','Tonga',-21.178986,-175.198242,2266431.13),
	 ('TR','Turkey',38.963745,35.243322,5987658.41);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('TT','Trinidad and Tobago',10.691803,-61.222503,6205209.60),
	 ('TV','Tuvalu',-7.109535,177.64933,9708937.68),
	 ('TW','Taiwan',23.69781,120.960515,2789995.80),
	 ('TZ','Tanzania',-6.369028,34.888822,9887920.01),
	 ('UA','Ukraine',48.379433,31.16558,3808720.94),
	 ('UG','Uganda',1.373333,32.290275,9931069.94),
	 ('US','United States',37.09024,-95.712891,7898802.12),
	 ('UY','Uruguay',-32.522779,-55.765835,9317204.47),
	 ('UZ','Uzbekistan',41.377491,64.585262,5107949.77),
	 ('VA','Vatican City',41.902916,12.453389,3170114.50);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('VC','Saint Vincent and the Grenadines',12.984305,-61.287228,6910277.60),
	 ('VE','Venezuela',6.42375,-66.58973,4969030.43),
	 ('VG','British Virgin Islands',18.420695,-64.639968,8379053.53),
	 ('VI','U.S. Virgin Islands',18.335765,-64.896335,5172466.02),
	 ('VN','Vietnam',14.058324,108.277199,7762540.00),
	 ('VU','Vanuatu',-15.376706,166.959158,4185696.71),
	 ('WF','Wallis and Futuna',-13.768752,-177.156097,8207399.62),
	 ('WS','Samoa',-13.759029,-172.104629,6837762.70),
	 ('XK','Kosovo',42.602636,20.902977,7269851.71),
	 ('YE','Yemen',15.552727,48.516388,7791719.55);
INSERT INTO countries (country_code,country_name,country_lat,country_long,balance) VALUES
	 ('YT','Mayotte',-12.8275,45.166244,4241222.65),
	 ('ZA','South Africa',-30.559482,22.937506,4862557.96),
	 ('ZM','Zambia',-13.133897,27.849332,5309778.87);

UPDATE countries set balance = random()* (10000000+10000000 + 1) - 10000000;