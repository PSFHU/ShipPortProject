PROMPT Creating tables...

@./Tables/Container_Type.sql
@./Tables/Container.sql
@./Tables/Person.sql
@./Tables/Ship.sql
@./Tables/Site.sql

PROMPT Creating history tables...

@./Tables/History/Container_Type_History.sql
@./Tables/History/Container_History.sql
@./Tables/History/Person_History.sql
@./Tables/History/Ship_History.sql
@./Tables/History/Site_History.sql

PROMPT Creating constraints...

@./Constraints/Container_Constraint.sql
@./Constraints/Person_Constraint.sql
@./Constraints/Ship_Constraint.sql
@./Constraints/Site_Constraint.sql

PROMPT Creating sequences...

@./Sequences/Container_Type_seq.sql
@./Sequences/Container_seq.sql
@./Sequences/Person_seq.sql
@./Sequences/Ship_seq.sql
@./Sequences/Site_seq.sql

PROMPT Creating triggers...

@./Triggers/Container_type_trg.trg
@./Triggers/Container_trg.trg
@./Triggers/Person_trg.trg
@./Triggers/Ship_trg.trg
@./Triggers/Site_trg.trg
@./Triggers/History/Container_type_History_trg.trg
@./Triggers/History/Container_History_trg.trg
@./Triggers/History/Person_History_trg.trg
@./Triggers/History/Ship_History_trg.trg
@./Triggers/History/Site_History_trg.trg

PROMPT Creating procedures...

@./Procedures/Container/Reg_Cont_Type.sql
@./Procedures/Container/Reg_Cont.sql
@./Procedures/Container/Mov_Cont.sql
@./Procedures/Container/Upd_stat_Cont.sql
@./Procedures/Person/Reg_Person.sql
@./Procedures/Person/Chk_Person.sql
@./Procedures/Ship/In_Ship.sql
@./Procedures/Ship/Out_Ship.sql
@./Procedures/Ship/Reg_Ship.sql
@./Procedures/Site/Reg_Site.sql