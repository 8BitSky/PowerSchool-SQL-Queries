SELECT
sch.name as SCHOOL,
stu.student_number AS STUDENT_NUMBER,
stu.lastfirst AS STUDENT_NAME,
CASE
    WHEN sk.PreKMinistryDesignated = 1 THEN 'Yes'
    WHEN sk.PreKMinistryDesignated = 0 THEN 'No'
    ELSE 'Error' END AS MINISTRY_DESIGNATED_SPACE,
CASE
    WHEN sk.PreKSharedSpace = 1 THEN 'Yes'
    WHEN sk.PreKSharedSpace = 0 THEN 'No'
    ELSE 'Error' END AS MINISTRY_SHARED_SPACE,
sk.prekstartdate AS SHARED_SPACE_START_DATE,
sk.prekenddate AS SHARED_SPACE_END_DATE
FROM students stu
INNER JOIN S_SK_STU_X sk ON stu.DCID = sk.studentsdcid
INNER JOIN schools sch ON stu.schoolID = sch.school_number
WHERE stu.grade_level < 0
AND stu.enroll_status = 0
