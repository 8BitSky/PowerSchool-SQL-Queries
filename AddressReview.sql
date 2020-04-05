SELECT 
sch.name as SCHOOL,
stu.student_number AS STUDENT_NUMBER,
stu.street AS STREET_ADDRESS,
stu.city AS TOWN,
stu.state AS PROVINCE,
stu.zip AS POSTAL_CODE
FROM students stu
INNER JOIN schools sch ON stu.schoolID = sch.school_number
WHERE (stu.street IS NULL
OR stu.city IS NULL
OR stu.state IS NULL
OR stu.zip IS NULL)
AND stu.enroll_status = 0
