codeunit 50103 "Res. Jnl. Line – Post Batch"
{
    trigger OnRun()
    var
        SecondCodeunit: Codeunit "Res. Jnl. Line – Post Batch";
    begin
        SecondCodeunit.RUN();
    end;
}
