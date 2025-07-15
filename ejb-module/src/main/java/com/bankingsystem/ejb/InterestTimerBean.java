package com.bankingsystem.ejb;

import jakarta.ejb.EJB;
import jakarta.ejb.Schedule;
import jakarta.ejb.Singleton;
import jakarta.ejb.Startup;

@Singleton
@Startup
public class InterestTimerBean {

    @EJB
    private BankService bankService;


    @Schedule(hour = "2", minute = "0", second = "0", persistent = false)
    public void runDailyInterestTask() {
        double interestRate = 0.01; // 1%
        System.out.println("Applying daily interest at 2 AM...");
        bankService.applyInterest(interestRate);
    }
}
