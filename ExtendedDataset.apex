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
Integer l=1;

//Belongs to Queue/User
leads.add(new Lead(FirstName = 'Queue Genstone',LastName= 'Testing'+a,Company='True Chriss',LeadSource='IT Referral',Status='Open',	skip_round_robin__c=False,OwnerId=g.Id));a++;l++;

leads.add(new Lead(FirstName = 'Queue Capital',LastName= 'Testing'+a,Company='False',LeadSource='IT Referral',Status='Open',	skip_round_robin__c=False,OwnerId=cs.Id));a++;l++;
leads.add(new Lead(FirstName = 'Queue Genstone',LastName= 'Testing'+a,Company='False',LeadSource='IT Referral',Status='Open',	skip_round_robin__c=True,OwnerId=g.Id));a++;l++;
leads.add(new Lead(FirstName = 'Queue Genstone',LastName= 'Testing'+a,Company='False',LeadSource='IT Referral',Status='Contacted',skip_round_robin__c=False,OwnerId=g.Id));a++;l++;
leads.add(new Lead(FirstName = 'Queue Genstone',LastName= 'Testing'+a,Company='False',LeadSource='Phone Enquiry',Status='Open',	skip_round_robin__c=False,OwnerId=g.Id));a++;l++;




//Condition2
leads.add(new Lead(FirstName = 'Lead',LastName= 'Testing'+a,Company='True Dave',LeadSource='IT Referral',Status='Open',	skip_round_robin__c=False,OwnerId=brett.id));a++;l++;

leads.add(new Lead(FirstName = 'Lead',LastName= 'Testing'+a,Company='False',LeadSource='IT Referral',Status='Open',	skip_round_robin__c=False,OwnerId=adam.Id));a++;l++;
leads.add(new Lead(FirstName = 'Lead',LastName= 'Testing'+a,Company='False',LeadSource='IT Referral',Status='Open',	skip_round_robin__c=True,OwnerId=brett.id));a++;l++;
leads.add(new Lead(FirstName = 'Lead',LastName= 'Testing'+a,Company='False',LeadSource='IT Referral',Status='Contacted',	skip_round_robin__c=False,OwnerId=brett.id));a++;l++;
leads.add(new Lead(FirstName = 'Lead',LastName= 'Testing'+a,Company='False',LeadSource='Phone Enquiry',Status='Open',	skip_round_robin__c=False,OwnerId=brett.id));a++;l++;

insert leads;