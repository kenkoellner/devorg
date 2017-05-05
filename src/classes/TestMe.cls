global  class TestMe {

  global void myMethod() {
  	 
		list<Process_Job__c>jobList = [ select id,
											Job_Input_JSON__c,
											Try_Count__c,
											Status__c,
											Retry_After_Datetime__c,
											Process_Job_Master__r.Max_Tries__c,
											Process_Job_Master__r.Processor_Class_Name__c,
											Process_Job_Master__r.Retryable_Via_Batchable__c,
											Process_Job_Master__r.Retryable_Via_Queueable__c,
											Process_Job_Master__r.Retryable__c
										from Process_Job__c limit 1];
  }
}