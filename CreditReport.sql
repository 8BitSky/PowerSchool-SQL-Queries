SELECT 
round(abs(cc.termID)/100) as Year,
sch.name as SCHOOL,
CASE WHEN cc.termID < 0 THEN 'Dropped' ELSE 'Active' END as Course_Status,
stg.grade_level as GRADE_LEVEL,
stg.course_name as COURSE,
stg.StoreCode as TERM_CODE,
stg.percent as FINAL_GRADE,
cc.termID as TERM_ID,
cc.DCID as CC_DCID,
cc.dateenrolled as ENTRY_DATE,
cc.dateleft as EXIT_DATE,
cc.currentAbsences as ABSENCES,
stu.student_number as STUDENT_NUMBER
FROM cc cc
INNER JOIN students stu ON cc.studentID = stu.ID
INNER JOIN schools sch ON stu.schoolid = sch.school_number
LEFT OUTER JOIN storedgrades stg ON (abs(cc.sectionID) = stg.sectionID AND cc.StudentID = stg.StudentID AND abs(cc.TermID) = stg.TermID) 
WHERE stg.grade_level >= 10
ORDER BY stg.grade_level
