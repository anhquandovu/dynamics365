Sample codes for:

I. Create General Ledger Journal
 
  1. DimensionAttributeValueCombination_QD_Extension.xpp
      // Extend DimensionAttributeValueCombination table, create a static method to get LedgerDimensionAccount
      //  Input: Main Account, Container of Dimension Values
      //  Return: DimensionAttributeValueCombination Record

  2. QD_LedgerJournalTransData.xpp
      //Extend system JournalTransData class,eliminate some code to focus code on Ledger Journal Creation

  3. LedgerJournalStatic_QD_Extension.xpp
      // Extend system LedgerJournalStatic class, construct newly created QD_LedgerJournalTransData class

  4. QD_LedgerJournalCreateJob.xpp
      //Runable class to create a Ledger Journal having Ledger Dimension
  
II. Post General Ledger Journal
    QD_LedgerJournalPostJob.xpp
