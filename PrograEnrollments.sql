SELECT 
sch.name as SCHOOL,
stu.student_number AS STUDENT_NUMBER,
stu.lastfirst AS STUDENT_NAME,
sk.programenrollmentid AS PROGRAM_ID,
CASE
    WHEN sk.programenrollmentid = 05 THEN 'Alternative Education Program (ENG)'
    WHEN sk.programenrollmentid = 06 THEN 'Alternative Education Program (FRE)'
    WHEN sk.programenrollmentid = 07 THEN 'Functional Integrated Program (ENG)'
    WHEN sk.programenrollmentid = 09 THEN 'Adult Secondary Program (ENG)'
    WHEN sk.programenrollmentid = 10 THEN 'English'
    WHEN sk.programenrollmentid = 11 THEN 'Fransaskois Program'
    WHEN sk.programenrollmentid = 12 THEN 'French Immersion/Bilingual Program'
    WHEN sk.programenrollmentid = 15 THEN 'Special Education Program (GL<=9)'
    WHEN sk.programenrollmentid = 16 THEN 'Adult Secondary Program (FRE)'
    WHEN sk.programenrollmentid = 17 THEN 'Functional Integrated Program (FRE)'
    WHEN sk.programenrollmentid = 18 THEN 'Alternative Adult Seconday (ENG)'
    ELSE 'No Enrollment Program' END AS PROGRAM_NAME,
sk.immersiontypecode AS IMMERSION_TYPE
FROM students stu
INNER JOIN S_SK_STU_X sk ON stu.DCID = sk.studentsdcid
INNER JOIN schools sch ON stu.schoolID = sch.school_number
WHERE stu.enroll_status = 0
ORDER BY sk.programenrollmentid
