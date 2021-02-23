use MYDB
go
--------------- Trigger school_teacher
create trigger tr_C_school_teacher
on school_teachers
after insert
as
  update dbo.school_teachers
  SET school_teachers.CreatedAt = GETDATE()
  FROM Inserted i
  WHERE school_teachers.id = i.id
go 
--------------- Trigger student_course
create trigger tr_C_student_course
on student_courses
after insert
as
  update dbo.student_courses
  SET student_courses.CreatedAt = GETDATE()
  FROM Inserted i
  WHERE student_courses.id = i.id
go 
--------------- Trigger course_exam
create trigger tr_C_course_exam
on course_exams
after insert
as
  update dbo.course_exams
  SET course_exams.CreatedAt = GETDATE()
  FROM Inserted i
  WHERE course_exams.id = i.id
go 
--------------- Trigger teacher_courses
create trigger tr_C_student_score
on student_scores
after insert
as
  update dbo.student_scores
  SET student_scores.CreatedAt = GETDATE()
  FROM Inserted i
  WHERE student_scores.id = i.id
go 
--------------- Trigger teacher_courses
create trigger tr_C_teacher_courses
on teacher_courses
after insert
as
  update dbo.teacher_courses
  SET teacher_courses.CreatedAt = GETDATE()
  FROM Inserted i
  WHERE teacher_courses.id = i.id
go 