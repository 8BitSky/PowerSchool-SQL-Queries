SELECT
sch.name as SCHOOL,
stu.student_number AS STUDENT_NUMBER,
stu.lastfirst AS STUDENT_NAME,
sk.EALLevel AS LEVEL_CODE,
CASE
    WHEN sk.EALLevel = 01 THEN 'A1 - Level 1 (A1.1)'
    WHEN sk.EALLevel = 02 THEN 'A1 - Level 2 (A1.2)'
    WHEN sk.EALLevel = 03 THEN 'A2 - Level 1 (A2.1)'
    WHEN sk.EALLevel = 04 THEN 'A2 - Level 2 (A2.2)'
    WHEN sk.EALLevel = 05 THEN 'B1 - Level 1 (B1.1)'
    WHEN sk.EALLevel = 06 THEN 'B1 - Level 2 (B1.2)'
    WHEN sk.EALLevel = 07 THEN 'Beyond B1.2'
    ELSE 'Error' END AS EAL_LEVEL,
sk.ealstartdate AS START_DATE,
sk.ealenddate AS END_DATE
FROM students stu
INNER JOIN S_SK_STU_X sk ON stu.DCID = sk.studentsdcid
INNER JOIN schools sch ON stu.schoolID = sch.school_number
WHERE stu.enroll_status = 0
AND sk.EALLevel IS NOT NULL
ORDER BY sch.name
