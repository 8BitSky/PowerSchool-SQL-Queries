Select
    stu.student_number as STUDENT_NUMBER,
    stu.lastfirst as NAME,
    sk.AboriginalStatus as AB_STATUS, 
    stu.street AS STREET_ADDRESS,
    stu.city AS TOWN,
    stu.state AS PROVINCE,
    stu.zip AS POSTAL_CODE,
CASE     
    WHEN sk.BandAffiliationCode = 355 THEN 'Peter Ballantyne Cree Nation'
                WHEN sk.BandAffiliationCode = 350 THEN 'Cumberland House Cree Nation'
                WHEN sk.BandAffiliationCode = 353 THEN 'Lac La Ronge Indian Band'
                WHEN sk.BandAffiliationCode = 394 THEN 'Canoe Lake First Nation'
                WHEN sk.BandAffiliationCode = 354 THEN 'Montreal Lake Cree Nation'
                WHEN sk.BandAffiliationCode = 401 THEN 'Clearwater River Dene Nation'
                WHEN sk.BandAffiliationCode = 403 THEN 'Birch Narrows Dene Nation'
                WHEN sk.BandAffiliationCode = 352 THEN 'Hatchet Lake Denesuline Nation'
                WHEN sk.BandAffiliationCode = 400 THEN 'English River First Nation'
                WHEN sk.BandAffiliationCode = 398 THEN 'Buffalo River First Nation'
                WHEN sk.BandAffiliationCode = 378 THEN 'Carry the Kettle First Nation'
                WHEN sk.BandAffiliationCode = 357 THEN 'Shoal Lake Cree Nation'
                WHEN sk.BandAffiliationCode = 404 THEN 'Big River First Nation'
                WHEN sk.BandAffiliationCode = 359 THEN 'Black Lake Denesuline Nation'
                WHEN sk.BandAffiliationCode = 340 THEN 'Little Pine First Nation'
                WHEN sk.BandAffiliationCode = 402 THEN 'Waterhen First Nation'
                WHEN sk.BandAffiliationCode = 391 THEN 'George Gordon First Nation'
                WHEN sk.BandAffiliationCode = 376 THEN 'Yellowquill First Nation'
                WHEN sk.BandAffiliationCode = 375 THEN 'Muskeg Lake Cree Nation'
                WHEN sk.BandAffiliationCode = 346 THEN 'Red Pheasant First Nation'
                WHEN sk.BandAffiliationCode = 351 THEN 'Fond Du Lac Denesuline Nation'
                WHEN sk.BandAffiliationCode = 363 THEN 'Ochapawace First Nation'
                WHEN sk.BandAffiliationCode = 396 THEN 'Makwa Sahgaiehcan First Nation'
                WHEN sk.BandAffiliationCode = 342 THEN 'Moosomin First Nation'
                WHEN sk.BandAffiliationCode = 361 THEN 'Cowessess First Nation'
                WHEN sk.BandAffiliationCode = 356 THEN 'Red Earth Cree First Nation'
                WHEN sk.BandAffiliationCode = 399 THEN 'Big Island Cree Nation'
                WHEN sk.BandAffiliationCode = 374 THEN 'Mistawasis First Nation'
                WHEN sk.BandAffiliationCode = 397 THEN 'Island Lake First Nation'
                WHEN sk.BandAffiliationCode = 360 THEN 'Sturgeon Lake First Nation'
                WHEN sk.BandAffiliationCode = 344 THEN 'Onion Lake First Nation'
                WHEN sk.BandAffiliationCode = 370 THEN 'James Smith Cree Nation'
                WHEN sk.BandAffiliationCode = 395 THEN 'Flying Dust First Nation'
                WHEN sk.BandAffiliationCode = 406 THEN 'Ahtahkakoop First Nation'
                WHEN sk.BandAffiliationCode = 362 THEN 'Kahkewistahaw First Nation'
                WHEN sk.BandAffiliationCode = 366 THEN 'Cote First Nation'
                WHEN sk.BandAffiliationCode = 358 THEN 'Wahpeton Dakota First Nation'
                WHEN sk.BandAffiliationCode = 384 THEN 'Peepeekisis First Nation'
                WHEN sk.BandAffiliationCode = 373 THEN 'One Arrow First Nation'
                WHEN sk.BandAffiliationCode = 390 THEN 'Fishing Lake First Nation'
                WHEN sk.BandAffiliationCode IS NULL THEN 'Not Declared'
                ELSE 'Update SQL Statement' END as BAND_AFFILIATION,
    sk.TreatyNumber as TREATY_NUMBER,
    sk.ReserveResidencyCode as RESERVE_RESIDENCY,
    sch.name as SCHOOL
FROM students stu
INNER JOIN S_SK_STU_X sk ON stu.DCID = sk.studentsdcid
INNER JOIN schools sch ON stu.schoolID = sch.school_number
WHERE stu.enroll_status = 0
AND sk.AboriginalStatus IS NOT NULL
ORDER BY sk.AboriginalStatus
