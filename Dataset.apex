delete[select id from lead];
delete[Select id from zigpr__VisualWorkflowProcessedObject__c];
delete[select id from zigpr__workflowQueuedObject__c];
delete[select id from zigpr__routerActivity__c];
delete[select id from zigpr__routerLog__c];


Group g= [Select id ,Name from group Where name='GenStone Leads'];
Group  cs=[Select id ,name from group where name='Capital Steel'];
User adam =[Select id,name from user where name='Adam Perret'];
User brett =[Select id,name from user where name='Brett Quizo'];

List<Lead> leads = new List<Lead>();


Integer a =1;
for (integer l=1; l<=bound; l++){

Integer a =1;


//Belongs to Queue/User
leads.add(new Lead(FirstName = 'Queue Genstone',LastName= 'Testing'+a,Company='True Chriss',LeadSource='IT Referral',Status='Open',	skip_round_robin__c=False,OwnerId=g.Id));a++;

//Lead
leads.add(new Lead(FirstName = 'Lead',LastName= 'Testing'+a,Company='True Dave',LeadSource='IT Referral',Status='Open',	skip_round_robin__c=False,OwnerId=brett.id));a++;

insert leads;