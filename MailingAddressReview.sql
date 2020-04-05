SELECT 
sch.name as SCHOOL,
stu.student_number AS STUDENT_NUMBER,
stu.mailing_street AS STREET_ADDRESS,
stu.mailing_city AS TOWN,
stu.mailing_state AS PROVINCE,
stu.mailing_zip AS POSTAL_CODE
FROM students stu
INNER JOIN schools sch ON stu.schoolID = sch.school_number
WHERE (stu.mailing_street IS NULL
OR stu.mailing_city IS NULL
OR stu.mailing_state IS NULL
OR stu.mailing_zip IS NULL)
AND stu.enroll_status = 0
