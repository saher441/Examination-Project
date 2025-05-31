-------Insert new Student 

EXECUTE insertstudent '20251923202020','Mohamed','Hassan','2000-05-08','hassanMohamed153@gmail.com','01054484050','Qena',4,3,'Minia'

-----Create Correct Question  

select dbo.FUN_QUESTION_TEXT('what is transaction?') 'Question'

----- Error At Create Question  

select dbo.FUN_QUESTION_TEXT('what is transaction') 'Question'

------ Create Exam Manually  
EXECUTE CreateExam 1,1,2,2,2,'corrective','manual','01:00:00','02:00:00','2025-5-22'

----Create Exam Random   

EXECUTE CreateExam 1,1,2,2,2,'corrective','random','01:00:00','02:00:00','2025-5-22'

------Assign Exam To Student

-----Return Error because enter wrong date and time

EXECUTE assignExam '20250000000103','Data Analysis',2,'2025-06-02','09:00:00','11:00:00'

------- Run correct

execute assignExam '20250000000104','DevOps',2,'2025-05-31','11:00:00','12:30:00'

----- Run correct

execute assignExamcorrective '20250000000104','DevOps',2,'2025-05-31','11:00:00','12:30:00'


----Return Error because the student dosen't take normal exam

execute assignExamcorrective '20250000000104','DevOps',9,'2025-05-22','01:00:00','02:30:00'


-----Update Exam Scheduale

EXECUTE PS_UpdateExamSchedule 2,'2025-5-31','11:00:00','12:30:00'

----- Correct True False Answer

SELECT dbo.fn_truefalsequestions(1,0)


--------- Correct Text Question

SELECT dbo.Correct_Text_Question(1,'20250000000102',23,'djdjfndjjdPPPPPHJGHGGFieieii') 'Text Question Result'

-------Correct MCQ Question

---ERROR
SELECT dbo.Correct_Mcq_Question(30,'DHU') 'Check answer'

---Correct 

SELECT dbo.Correct_Mcq_Question(30,'DHU') 'Check answer'

------Calculate Exam Result

SELECT dbo.FN_CalculateExamResult('20250000000102',1)


-----Get Student Ranke 

SELECT dbo.fn_get_student_rank_in_course('20250000000105',1,1)
