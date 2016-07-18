;;----------------Define agent types (26 agent types are listed, including 23 agent types in liver inflammation---------------------------
;;----------------and 3 addition agent types added in therapy-directed experiments)-------------------------------------------------------
breed[Hepatocytes Hepatocyte]
breed[HepatocyteDebrises HepatocyteDebris]
breed[SECs SEC]
breed[KupfferCells KupfferCell]
breed[Salmonellas Salmonella]
breed[MastCells MastCell]
breed[RestingNeutrophils RestingNeutrophil]
breed[ActivatedNeutrophils ActivatedNeutrophil]
breed[RestingMonocytes RestingMonocyte]
breed[MDMIs MDMI]
breed[MDMIIs MDMII]
breed[TNF-as TNF-a]
breed[HMGB-1s HMGB-1]
breed[IL-10s IL-10]
breed[CD4TCells CD4TCell]
breed[CD8TCells CD8TCell]
breed[BCells BCell]
breed[Antibodys Antibody]
breed[CRPs CRP]
breed[NETs NET]
breed[Histamines Histamine]
breed[Signals Signal]
breed[AntiSignals AntiSignal]
breed[Antimicrobials Antimicrobial]
breed[AntiTNF-as AntiTNF-a]
breed[AntiHMGB-1s AntiHMGB-1]

;;--------------------------Define link types----------------------------------------------------------------------------------------------
undirected-link-breed[AntibodySalmonella-links AntibodySalmonella-link]
undirected-link-breed[CRPSalmonella-links CRPSalmonella-link]
undirected-link-breed[CRPApoptoticKupfferCell-links CRPApoptoticKupfferCell-link]
undirected-link-breed[CRPSHepatocyteDebris-links CRPSHepatocyteDebris-link]
undirected-link-breed[CRPApoptoticNeutrophil-links CRPApoptoticNeutrophil-link]
undirected-link-breed[CRPApoptoticMDMI-links CRPApoptoticMDMI-link]
undirected-link-breed[CRPApoptoticMDMII-links CRPApoptoticMDMII-link]
undirected-link-breed[KupfferCellIL10-links KupfferCellIL10-link]
undirected-link-breed[apoptoticHepatocyteIL10-links apoptoticHepatocyteIL10-link]
undirected-link-breed[NeutrophilIL10-links NeutrophilIL10-link]
undirected-link-breed[MDMIIL10-links MDMIIL10-link]
undirected-link-breed[MDMIIIL10-links MDMIIIL10-link]
undirected-link-breed[MastCellIL10-links MastCellIL10-link]
undirected-link-breed[CD4TCellIL10-links CD4TCellIL10-link]
undirected-link-breed[CD4TCellBCell-links CD4TCellBCell-link]
undirected-link-breed[ActivatedNeutrophilSalmonella-links ActivatedNeutrophilSalmonella-link]
undirected-link-breed[MDMISalmonella-links MDMISalmonella-link]

;;-----------------------------Define state variables associated with each agent type--------------------------------------------------------
Salmonellas-own[salmonellaPhagocytizeByKupfferCell salmonellaKillByKupfferCellAt? salmonellaReplicateWithinKupfferCell salmonellaNewlyReleasedFromKupfferCell salmonellaReplicateWithinSECs salmonellaNewlyReleasedFromSECs salmonellaReplicateWithinHepatocyte salmonellaNewlyReleasedFromHepatocyte salmonellaInteractWithNET salmonellaDieInduceByNETAt? salmonellaPhagocytizeByNeutrophil salmonellaDieByNeutrophilAt? salmonellaBindToMastCell salmonellaDieInduceByMastCellAt? salmonellaPhagocytizeByMDMI salmonellaDieInduceByMDMIAt? salmonellaReplicateWithinMDMI salmonellaNewlyReleasedFromMDMI salmonellaInteractWithCRP salmonellaBindToCRP CRPOpsonizedSalmonellaPhagocytizeByKupfferCell CRPOpsonizedSalmonellaPhagocytizeByMastCell CRPOpsonizedSalmonellaPhagocytizeByNeutrophil CRPOpsonizedSalmonellaPhagocytizeByMDMI CRPOpsonizedSalmonellaPhagocytizeByMDMII CRPOpsonizedSalmonellaDieAt? salmonellaInteractWithAntibody salmonellaBindToAntibody antibodyOpsonizedSalmonellaPhagocytizeByKupfferCell antibodyOpsonizedSalmonellaPhagocytizeByMastCell antibodyOpsonizedSalmonellaPhagocytizeByNeutrophil antibodyOpsonizedSalmonellaPhagocytizeByMDMI antibodyOpsonizedSalmonellaPhagocytizeByMDMII antibodyOpsonizedSalmonellaDieAt? targetSalmonella]
KupfferCells-own[kupfferCellInteractWithSalmonella kupfferCellKillBySalmonella kupfferCellDieInduceBySalmonellaAt? kupfferCellPhagocytizeHepatocyteDebris kupfferCellInteractWithActivatedNeutrophilInLiverSinusoid kupfferCellProduceTNFAlpha kupfferCellProduceIL10 kupfferCellInteractWithIL10 KupfferCellBindToIL10 kupfferCellUndergoApoptosisByNature apoptoticKupfferCellDieByNatureAt? apoptoticKupfferCellInteractWithCRP apoptoticKupfferCellBindToCRP CRPOpsonizedApoptoticKupfferCellPhagocytizeByKupfferCell CRPOpsonizedApoptoticKupfferCellPhagocytizeByMastCell CRPOpsonizedApoptoticKupfferCellPhagocytizeByNeutrophil CRPOpsonizedApoptoticKupfferCellPhagocytizeByMDMI CRPOpsonizedApoptoticKupfferCellPhagocytizeByMDMII kupfferCellInteractWithCRPTypeComplex kupfferCellInteractWithAntibodySalmonellaComplex kupfferCellWhoPhagocytizeSalmonellaInteractWithCD4TCell kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell kupfferCellWhoPhagocytizeSalmonellaUndergoApoptosisInduceByCD8TCellAt? targetKupfferCell]
SECs-own[SECsInteractWithSalmonella SECsDieInducedBySalmonellaAt?]
Hepatocytes-own[hepatocyteInteractWithSalmonella hepatocyteBecomeHepatocyteDebrisInducedBySalmonellaAt? hepatocyteBecomeApoptoticByInteractWithTNFAlpha hepatocyteBecomeHepatocyteDebrisInducedByTNFAlphaAt? apoptoticHepatocyteProduceHMGB1 apoptoticHepatocyteProduceTNFAlpha apoptoticHepatocyteInteractWithNeutrophil apoptoticHepatocyteInteractWithIL10 apoptoticHepatocyteBindToIL10  targetHepatocyte]
HepatocyteDebrises-own[hepatocyteDebrisInteractWithKupfferCell hepatocyteDebrisInteractWithMastCell hepatocyteDebrisInteractWithNeutrophil hepatocyteDebrisInteractWithMDMI hepatocyteDebrisInteractWithMDMII hepatocyteDebrisDieAt? hepatocyteDebrisInteractWithCRP hepatocyteDebrisBindToCRP CRPOpsonizedHepatocyteDebrisPhagocytizeByKupfferCell CRPOpsonizedHepatocyteDebrisPhagocytizeByMastCell CRPOpsonizedHepatocyteDebrisPhagocytizeByNeutrophil CRPOpsonizedHepatocyteDebrisPhagocytizeByMDMI CRPOpsonizedHepatocyteDebrisPhagocytizeByMDMII hepatocyteDebrisDieByNatureAt?]
RestingNeutrophils-own[restingNeutrophilProduceNewRestingNeutrophil]
ActivatedNeutrophils-own[activatedNeutrophilInteractWithKupfferCell activatedNeutrophilKillByKupfferCellAt? activatedNeutrophilInteractWithApoptoticHepatocyte activatedNeutrophilPhagocytizeHepatocyteDebris activatedNeutrophilInteractWithSalmonella activatedNeutrophilProduceTNFAlpha activatedNeutrophilProduceIL10 activatedNeutrophilProduceNET activatedNeutrophilInteractWithIL10 activatedNeutrophilBindToIL10 activatedNeutrophilUndergoApoptosisByNature activatedNeutrophilDieByNaturalApoptosisAt? apoptoticActivatedNeutrophilInteractWithCRP apoptoticActivatedNeutrophilBindToCRP CRPOpsonizedApoptoticNeutrophilPhagocytizeByKupfferCell CRPOpsonizedApoptoticNeutrophilPhagocytizeByMastCell CRPOpsonizedApoptoticNeutrophilPhagocytizeByNeutrophil CRPOpsonizedApoptoticNeutrophilPhagocytizeByMDMI CRPOpsonizedApoptoticNeutrophilPhagocytizeByMDMII activatedNeutrophilInteractWithCRPTypeComplex apoptoticActivatedNeutrophilInteractWithMDMII apoptoticActivatedNeutrophilDieInduceByMDMIIAt? activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD4TCell activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell activatedNeutrophilWhoPhagocytizeSalmonellaUndergoApoptosisInduceByCD8TCellAt? targetNeutrophil movedActivatedNeutrophil]
RestingMonocytes-own[restingMonocyteProduceNewRestingMonocyte restingMonocyteInteractWithSECs]
MDMIs-own[MDMIPhagocytizeSalmonella MDMIInteractWithApoptoticCD4TCell MDMIInteractWithApoptoticCD8TCell MDMIProduceIL10 MDMIPhagocytizeHepatocyteDebris MDMIKillBySalmonella MDMIDieInduceBySalmonellaAt? MDMIBecomeApoptotic MDMIDieInduceByNaturalApoptosisAt? apoptoticMDMIInteractWithCRP apoptoticMDMIBindToCRP CRPOpsonizedApoptoticMDMIPhagocytizeByKupfferCell CRPOpsonizedApoptoticMDMIPhagocytizeByMastCell CRPOpsonizedApoptoticMDMIPhagocytizeByNeutrophil CRPOpsonizedApoptoticMDMIPhagocytizeByMDMI CRPOpsonizedApoptoticMDMIPhagocytizeByMDMII MDMIInteractWithCRPTypeComplex MDMIProduceTNFAlpha MDMIInteractWithAntibodySalmonellaComplex MDMIInteractWithIL10 MDMIBindToIL10 MDMIWhoPhagocytizeSalmonellaInteractWithCD4TCell MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell MDMIWhoPhagocytizeSalmonellaUndergoApoptosisInduceByCD8TCellAt? targetMDMI movedMDMI]
MDMIIs-own[MDMIIInteractWithApoptoticNeutrophil MDMIIProduceHMGB1 MDMIIInteractWithApoptoticCD4TCell MDMIIInteractWithApoptoticCD8TCell MDMIIProduceIL10 MDMIIPhagocytizeHepatocyteDebris MDMIIBecomeApoptotic MDMIIDieInduceByNaturalApoptosisAt? apoptoticMDMIIInteractWithCRP apoptoticMDMIIBindToCRP CRPOpsonizedApoptoticMDMIIPhagocytizeByKupfferCell CRPOpsonizedApoptoticMDMIIPhagocytizeByMastCell CRPOpsonizedApoptoticMDMIIPhagocytizeByNeutrophil CRPOpsonizedApoptoticMDMIIPhagocytizeByMDMI CRPOpsonizedApoptoticMDMIIPhagocytizeByMDMII MDMIIInteractWithIL10 MDMIIBindToIL10 targetMDMII]
TNF-as-own[TNFAlphaInteractWithHepatocyte TNFAlphaInteractWithAntiTNFAlpha]
IL-10s-own[IL10InteractWithKupfferCell IL10BindToKupfferCell IL10InteractWithApoptoticHepatocyte IL10BindToapoptoticHepatocyte IL10InteractWithActivatedNeutrophil IL10BindToActivatedNeutrophil IL10InteractWithMDMI IL10BindToMDMI IL10InteractWithMDMII IL10BindToMDMII IL10InteractWithMastCell IL10BindToMastCell IL10InteractWithCD4TCell IL10BindToCD4TCell]
MastCells-own[mastCellInteractWithAntibodySalmonellaComplex mastCellProduceTNFAlphaByAntibodySalmonellaComplex mastCellProduceHistamine mastCellInteractWithSalmonella mastCellProduceTNFAlphaBySalmonella mastCellInteractWithIL10 MastCellBindToIL10 mastCellPhagocytizeHepatocyteDebris mastCellUndergoApoptosisByNature targetMastCell]
CD4TCells-own[CD4TCellInPortalTriad CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella CD4TCellProduceTNFAlpha CD4TCellProduceIL10 CD4TCellInteractWithBCell CD4TCellBindToBCell apoptoticCD4TCellPhagocytizeByMDMI apoptoticCD4TCellPhagocytizeByMDMII apoptoticCD4TCellDieInduceByMDMIOrMDMIIAt? CD4TCellInteractWithIL10 CD4TCellBindToIL10 CD4TCellUndergoApoptosisByNature movedCD4TCell]
CD8TCells-own[CD8TCellInPortalTriad CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella CD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonella CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella apoptoticCD8TCellPhagocytizeByMDMI apoptoticCD8TCellPhagocytizeByMDMII apoptoticCD8TCellDieInduceByMDMIOrMDMIIAt? CD8TCellUndergoApoptosisByNature]
BCells-own[BCellInPortalTriad BCellInteractWithCD4TCell BCellProduceAntibody BCellBindToCD4TCell BCellUndergoApoptosisByNature]
Antibodys-own[antibodyInteractWithSalmonella antibodyBindToSalmonella antibodySalmonellaComplexPhagocytizeByMastCell antibodySalmonellaComplexPhagocytizeByKupfferCell antibodySalmonellaComplexPhagocytizeByNeutrophil antibodySalmonellaComplexPhagocytizeByMDMI antibodySalmonellaComplexPhagocytizeByMDMII movedAntibody]
CRPs-own[CRPInteractWithSalmonella CRPBindToSalmonella CRPInteractWithApoptoticKupfferCell CRPBindToApoptoticKupfferCell CRPInteractWithHepatocyteDebris CRPBindToHepatocyteDebris CRPInteractWithApoptoticNeutrophil CRPBindToApoptoticNeutrophil CRPInteractWithApoptoticMDMI CRPBindToApoptoticMDMI CRPInteractWithApoptoticMDMII CRPBindToApoptoticMDMII CRPSalmonellaComplexPhagocytizeByKupfferCell CRPSalmonellaComplexPhagocytizeByKupfferCellDieAt? CRPSalmonellaComplexPhagocytizeByMastCell CRPSalmonellaComplexPhagocytizeByMastCellDieAt? CRPSalmonellaComplexPhagocytizeByNeutrophil CRPSalmonellaComplexPhagocytizeByNeutrophilDieAt? CRPSalmonellaComplexPhagocytizeByMDMI CRPSalmonellaComplexPhagocytizeByMDMIDieAt? CRPSalmonellaComplexPhagocytizeByMDMII CRPSalmonellaComplexPhagocytizeByMDMIIDieAt? CRPApoptoticKupfferCellPhagocytizeByKupfferCell CRPApoptoticKupfferCellPhagocytizeByKupfferCellDieAt? CRPApoptoticKupfferCellPhagocytizeByMastCell CRPApoptoticKupfferCellPhagocytizeByMastCellDieAt? CRPApoptoticKupfferCellPhagocytizeByNeutrophil CRPApoptoticKupfferCellPhagocytizeByNeutrophilDieAt? CRPApoptoticKupfferCellPhagocytizeByMDMI CRPApoptoticKupfferCellPhagocytizeByMDMIDieAt? CRPApoptoticKupfferCellPhagocytizeByMDMII CRPApoptoticKupfferCellPhagocytizeByMDMIIDieAt? CRPHepatocyteDebrisPhagocytizeByKupfferCell CRPHepatocyteDebrisPhagocytizeByKupfferCellDieAt? CRPHepatocyteDebrisPhagocytizeByMastCell CRPHepatocyteDebrisPhagocytizeByMastCellDieAt? CRPHepatocyteDebrisPhagocytizeByNeutrophil CRPHepatocyteDebrisPhagocytizeByNeutrophilDieAt? CRPHepatocyteDebrisPhagocytizeByMDMI CRPHepatocyteDebrisPhagocytizeByMDMIDieAt? CRPHepatocyteDebrisPhagocytizeByMDMII CRPHepatocyteDebrisPhagocytizeByMDMIIDieAt? CRPApoptoticNeutrophilPhagocytizeByKupfferCell CRPApoptoticNeutrophilPhagocytizeByKupfferCellDieAt? CRPApoptoticNeutrophilPhagocytizeByMastCell CRPApoptoticNeutrophilPhagocytizeByMastCellDieAt? CRPApoptoticNeutrophilPhagocytizeByNeutrophil CRPApoptoticNeutrophilPhagocytizeByNeutrophilDieAt? CRPApoptoticNeutrophilPhagocytizeByMDMI CRPApoptoticNeutrophilPhagocytizeByMDMIDieAt? CRPApoptoticNeutrophilPhagocytizeByMDMII  CRPApoptoticNeutrophilPhagocytizeByMDMIIDieAt? CRPApoptoticMDMIPhagocytizeByKupfferCell CRPApoptoticMDMIPhagocytizeByKupfferCellDieAt? CRPApoptoticMDMIPhagocytizeByMastCell CRPApoptoticMDMIPhagocytizeByMastCellDieAt? CRPApoptoticMDMIPhagocytizeByNeutrophil CRPApoptoticMDMIPhagocytizeByNeutrophilDieAt? CRPApoptoticMDMIPhagocytizeByMDMI CRPApoptoticMDMIPhagocytizeByMDMIDieAt? CRPApoptoticMDMIPhagocytizeByMDMII CRPApoptoticMDMIPhagocytizeByMDMIIDieAt? CRPApoptoticMDMIIPhagocytizeByKupfferCell CRPApoptoticMDMIIPhagocytizeByKupfferCellDieAt? CRPApoptoticMDMIIPhagocytizeByMastCell CRPApoptoticMDMIIPhagocytizeByMastCellDieAt? CRPApoptoticMDMIIPhagocytizeByNeutrophil CRPApoptoticMDMIIPhagocytizeByNeutrophilDieAt? CRPApoptoticMDMIIPhagocytizeByMDMI CRPApoptoticMDMIIPhagocytizeByMDMIDieAt? CRPApoptoticMDMIIPhagocytizeByMDMII CRPApoptoticMDMIIPhagocytizeByMDMIIDieAt? CRPUndergoApoptosisByNature movedCRP]
NETs-own[NETInteractWithSalmonella]
Antimicrobials-own[antimicrobialBindToSalmonella]
AntiTNF-as-own[antiTNF-aBindToTNF-a]
patches-own[sinusoidArea portalTriadArea SECInteractWithSalmonella]

;;-------------------------------Define global variables -------------------------------------------------------------------------------------
globals[counter HMGB1CurrentCount CD4TCellConcentration CD8TCellConcentration activatedAmountOfRestingMonocytePerLoop activatedAmountOfRestingNeutrophilPerLoop test1 test2 test3 test4 test5 test6 test7 test8 test9 test10 test11 test12 test13 test14 test15 test16 test17 totalPopulation TNFAlphaReleaseAmountByApoptoticHepatocyte amountOfIL10MoveToCD4TCellPerLoopLowerLiver amountOfIL10MoveToCD4TCellPerLoopUpperLiver amountOfIL10MoveToMastCellPerLoopLowerLiver amountOfIL10MoveToMastCellPerLoopUpperLiver amountOfIL10MoveToMDMIIPerLoopLowerLiver amountOfIL10MoveToMDMIIPerLoopUpperLiver amountOfIL10MoveToMDMIPerLoopLowerLiver amountOfIL10MoveToMDMIPerLoopUpperLiver amountOfIL10MoveToActivatedNeutrophilPerLoopLowerLiver amountOfIL10MoveToActivatedNeutrophilPerLoopUpperLiver amountOfIL10MoveToApoptoticHepatocytePerLoopLowerLiver amountOfIL10MoveToApoptoticHepatocytePerLoopUpperLiver amountOfIL10MoveToKupfferCellPerLoopLowerLiver amountOfIL10MoveToKupfferCellPerLoopUpperLiver counter1 counter2 counter3 counter4 counter5 counter6 counter7 counter8 counter9 counter10 counter11 counter12 counter13 counter14 counter15 counter16 counter17 counter18 counter19 counter20 counter21 counter22 counter23 counter24 counter25 counter26 counter27 counter28 counter29 counter30 counter31 counter32 counter33 counter34 counter35 counter36 counter37 counter38 counter39 counter40 counter41 counter42 counter43 counter44 counter45 counter46 counter47 counter48 counter49 counter50 counter51 counter52 counter53 counter54 counter55 counter56 counter57 counter58 counter59 counter60 counter61 counter62 counter63 counter64 counter65 counter66 counter67 counter68 counter69 counter70 counter71 counter72 counter73 counter74 counter75 counter76 counter77 counter78 counter79 counter80 counter81 counter82 counter83 counter84 counter85 counter86 counter87 counter88 counter89 counter90 counter91 counter92 counter93 counter94 counter95 counter96 counter97 counter98 counter99 counter100 counter101 counter102 counter103 counter104 counter105 counter106 counter107 counter108 counter109 counter110 counter111 counter112 counter113 counter114 counter115 counter116 counter117 counter118 counter119 counter120 counter121 counter122 counter123 counter124 counter125 counter126 counter127 counter128 counter129 counter130 counter131 counter132 counter133 counter134 counter135 counter136 counter137 counter138 counter139 counter140 counter141 counter142 counter143 counter144 counter145 counter146 counter147 counter148 counter149 counter150 counter151 counter152 counter153 counter154 counter155 amountOfAntibodySalmonellaComplexMoveToMDMIIPerLoopLowerLiver amountOfAntibodySalmonellaComplexMoveToMDMIIPerLoopUpperLiver amountOfAntibodySalmonellaComplexMoveToMDMIPerLoopLowerLiver amountOfAntibodySalmonellaComplexMoveToMDMIPerLoopUpperLiver amountOfAntibodySalmonellaComplexMoveToNeutrophilPerLoopLowerLiver amountOfAntibodySalmonellaComplexMoveToNeutrophilPerLoopUpperLiver amountOfAntibodySalmonellaComplexMoveToMastCellPerLoopLowerLiver amountOfAntibodySalmonellaComplexMoveToMastCellPerLoopUpperLiver amountOfAntibodySalmonellaComplexMoveToKupfferCellPerLoopLowerLiver amountOfAntibodySalmonellaComplexMoveToKupfferCellPerLoopUpperLiver amountOfBCellUndergoAgingByNaturePerLoop AntibodyReleaseAmountByBCellPerLoop proliferatedBCellPerLoop amountOfCD4TCellUndergoAgingByNaturePerLoop amountOfApoptoticCD4TCellPhagocytizeByMDMIIPerLoopLowerLiver amountOfApoptoticCD4TCellPhagocytizeByMDMIIPerLoopUpperLiver amountOfApoptoticCD4TCellPhagocytizeByMDMIPerLoopLowerLiver amountOfApoptoticCD4TCellPhagocytizeByMDMIPerLoopUpperLiver IL10ReleaseAmountByCD4TCellPerLoop TNFAlphaReleaseAmountByCD4TCellPerLoop amountOfCD4TCellInteractWithMDMIWhoPhagocytizeSalmonellaPerLoop amountOfCD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonellaPerLoop amountOfCD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonellaPerLoop proliferatedCD4TCellPerLoop amountOfCD8TCellUndergoAgingByNaturePerLoop amountOfApoptoticCD8TCellPhagocytizeByMDMIIPerLoopLowerLiver amountOfApoptoticCD8TCellPhagocytizeByMDMIIPerLoopUpperLiver amountOfApoptoticCD8TCellPhagocytizeByMDMIPerLoopLowerLiver amountOfApoptoticCD8TCellPhagocytizeByMDMIPerLoopUpperLiver amountOfCD8TCellInteractWithMDMIWhoPhagocytizeSalmonellaPerLoop amountOfCD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonellaPerLoop amountOfCD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonellaPerLoop proliferatedCD8TCellPerLoop amountOfCRPApoptoticMDMIIMoveToMDMIIPerLoopLowerLiver amountOfCRPApoptoticMDMIIMoveToMDMIIPerLoopUpperLiver amountOfCRPApoptoticMDMIIMoveToMDMIPerLoopLowerLiver amountOfCRPApoptoticMDMIIMoveToMDMIPerLoopUpperLiver amountOfCRPApoptoticMDMIIMoveToNeutrophilPerLoopLowerLiver amountOfCRPApoptoticMDMIIMoveToNeutrophilPerLoopUpperLiver amountOfCRPApoptoticMDMIIComplexMoveToMastCellPerLoopLowerLiver amountOfCRPApoptoticMDMIIComplexMoveToMastCellPerLoopUpperLiver amountOfCRPApoptoticMDMIIComplexMoveToKupfferCellPerLoopLowerLiver amountOfCRPApoptoticMDMIIComplexMoveToKupfferCellPerLoopUpperLiver amountOfCRPBindToApoptoticMDMIIPerLoopLowerLiver amountOfCRPBindToApoptoticMDMIIPerLoopUpperLiver amountOfCRPApoptoticMDMIMoveToMDMIIPerLoopLowerLiver amountOfCRPApoptoticMDMIMoveToMDMIIPerLoopUpperLiver amountOfCRPApoptoticMDMIMoveToMDMIPerLoopLowerLiver amountOfCRPApoptoticMDMIMoveToMDMIPerLoopUpperLiver amountOfCRPApoptoticMDMIMoveToNeutrophilPerLoopLowerLiver amountOfCRPApoptoticMDMIMoveToNeutrophilPerLoopUpperLiver amountOfCRPApoptoticMDMIComplexMoveToMastCellPerLoopLowerLiver amountOfCRPApoptoticMDMIComplexMoveToMastCellPerLoopUpperLiver amountOfCRPApoptoticMDMIComplexMoveToKupfferCellPerLoopLowerLiver amountOfCRPApoptoticMDMIComplexMoveToKupfferCellPerLoopUpperLiver amountOfCRPBindToApoptoticMDMIPerLoopLowerLiver amountOfCRPBindToApoptoticMDMIPerLoopUpperLiver amountOfCRPApoptoticNeutrophilMoveToMDMIIPerLoopLowerLiver amountOfCRPApoptoticNeutrophilMoveToMDMIIPerLoopUpperLiver amountOfCRPApoptoticNeutrophilMoveToMDMIPerLoopLowerLiver amountOfCRPApoptoticNeutrophilMoveToMDMIPerLoopUpperLiver amountOfCRPApoptoticNeutrophilMoveToNeutrophilPerLoopLowerLiver amountOfCRPApoptoticNeutrophilMoveToNeutrophilPerLoopUpperLiver amountOfCRPApoptoticNeutrophilComplexMoveToMastCellPerLoopLowerLiver amountOfCRPApoptoticNeutrophilComplexMoveToMastCellPerLoopUpperLiver amountOfCRPApoptoticNeutrophilComplexMoveToKupfferCellPerLoopLowerLiver amountOfCRPApoptoticNeutrophilComplexMoveToKupfferCellPerLoopUpperLiver amountOfCRPBindToApoptoticNeutrophilPerLoopLowerLiver amountOfCRPBindToApoptoticNeutrophilPerLoopUpperLiver amountOfCRPHepatocyteDebrisMoveToMDMIIPerLoopLowerLiver amountOfCRPHepatocyteDebrisMoveToMDMIIPerLoopUpperLiver amountOfCRPHepatocyteDebrisMoveToMDMIPerLoopLowerLiver amountOfCRPHepatocyteDebrisMoveToMDMIPerLoopUpperLiver amountOfCRPHepatocyteDebrisMoveToNeutrophilPerLoopLowerLiver amountOfCRPHepatocyteDebrisMoveToNeutrophilPerLoopUpperLiver amountOfCRPHepatocyteDebrisComplexMoveToMastCellPerLoopLowerLiver amountOfCRPHepatocyteDebrisComplexMoveToMastCellPerLoopUpperLiver amountOfCRPHepatocyteDebrisComplexMoveToKupfferCellPerLoopLowerLiver amountOfCRPHepatocyteDebrisComplexMoveToKupfferCellPerLoopUpperLiver amountOfCRPBindToHepatocyteDebrisPerLoopLowerLiver amountOfCRPBindToHepatocyteDebrisPerLoopUpperLiver amountOfCRPApoptoticKupfferCellMoveToMDMIIPerLoopLowerLiver amountOfCRPApoptoticKupfferCellMoveToMDMIIPerLoopUpperLiver amountOfCRPApoptoticKupfferCellMoveToMDMIPerLoopLowerLiver amountOfCRPApoptoticKupfferCellMoveToMDMIPerLoopUpperLiver amountOfCRPApoptoticKupfferCellMoveToNeutrophilPerLoopLowerLiver amountOfCRPApoptoticKupfferCellMoveToNeutrophilPerLoopUpperLiver amountOfCRPApoptoticKupfferCellComplexMoveToMastCellPerLoopLowerLiver amountOfCRPApoptoticKupfferCellComplexMoveToMastCellPerLoopUpperLiver amountOfCRPApoptoticKupfferCellComplexMoveToKupfferCellPerLoopLowerLiver amountOfCRPApoptoticKupfferCellComplexMoveToKupfferCellPerLoopUpperLiver amountOfCRPBindToApoptoticKupfferCellPerLoopLowerLiver amountOfCRPBindToApoptoticKupfferCellPerLoopUpperLiver amountOfCRPSalmonellaComplexMoveToMDMIIPerLoopLowerLiver amountOfCRPSalmonellaComplexMoveToMDMIIPerLoopUpperLiver amountOfCRPSalmonellaComplexMoveToMDMIPerLoopLowerLiver amountOfCRPSalmonellaComplexMoveToMDMIPerLoopUpperLiver amountOfCRPSalmonellaComplexMoveToNeutrophilPerLoopLowerLiver amountOfCRPSalmonellaComplexMoveToNeutrophilPerLoopUpperLiver amountOfCRPSalmonellaComplexMoveToMastCellPerLoopLowerLiver amountOfCRPSalmonellaComplexMoveToMastCellPerLoopUpperLiver amountOfCRPSalmonellaComplexMoveToKupfferCellPerLoopLowerLiver amountOfCRPSalmonellaComplexMoveToKupfferCellPerLoopUpperLiver amountOfCRPMoveToSalmonellaPerLoopLowerLiver amountOfCRPMoveToSalmonellaPerLoopUpperLiver salmonellaReplicationAmountInMDMIPerLoop salmonellaReplicationAmountInHepatocytePerLoop salmonellaReplicationAmountInSECsPerLoop salmonellaAmountMoveToMastCellPerLoopLowerLiver salmonellaAmountMoveToMastCellPerLoopUpperLiver salmonellaReplicationAmountInKupfferCellPerHour salmonellaAmountMoveToKupfferCellPerLoop IL10ReleaseAmountByKupfferCellPerLoop TNFAlphaReleaseAmountByKupfferCellPerLoop hepatocyteRegeneratedAmountPerLoop HMGB1ReleaseAmountByApoptoticHepatocytePerLoop CRPReleaseAmountByHepatocytePerLoop amountOfMastCellBeingKilledByNaturePerLoop TNFAlphaReleaseAmountByMastCellInteractWithSalmonellaPerLoop TNFAlphaReleaseAmountByMastCellInteractWithAntibodySalmonellaComplexPerLoop histamineIncreaseAmountPerLoop histamineReleaseAmountByMastCellPerLoop mastCellProliferationAmountPerLoop amountOfKupfferCellFromMDMIIPerLoopLowerLiver amountOfKupfferCellFromMDMIIPerLoopUpperLiver amountOfMDMIIBeingKilledByNaturePerLoop MDMIIIncreaseAmountPerLoop IL10ReleaseAmountByMDMIIPerLoop HMGB1IncreaseAmountPerLoop HMGB1ReleaseAmountByMDMIIPerLoop amountOfKupfferCellFromMDMIPerLoopLowerLiver amountOfKupfferCellFromMDMIPerLoopUpperLiver amountOfMDMIBeingKilledByNaturePerLoop MDMIIncreaseAmountPerLoop IL10ReleaseAmountPerLoop IL10ReleaseAmountByMDMIPerLoop TNFAlphaIncreaseAmountPerLoop TNFAlphaReleaseAmountByMDMIPerLoop amountOfMDMIBeingKilledBySalmonellaPerLoop amountOfMDMIPhagocytizeSalmonellaPerLoop amountOfMDMIIFromRestingMonocytePerLoopLowerLiver amountOfMDMIIFromRestingMonocytePerLoopUpperLiver amountOfMDMIFromRestingMonocytePerLoopLowerLiver amountOfMDMIFromRestingMonocytePerLoopUpperLiver MDMActivationAmountPerLoop amountOfNETBeingKilledByNaturePerLoop amountOfSalmonellaGetTrapByNETPerLoopLowerLiver amountOfSalmonellaGetTrapByNETPerLoopUpperLiver IL10ReleaseAmountByActivatedNeutrophilPerLoop TNFAlphaReleaseAmountByActivatedNeutrophilPerLoop movedActivatedNeutrophilAmountToApoptoticHepatocytePerLoopLowerLiver movedActivatedNeutrophilAmountToApoptoticHepatocytePerLoopUpperLiver amountOfActivatedNeutrophilBeingKilledByNaturePerLoop activatedNeutrophilActivationAmountPerLoop amountOfActivatedNeutrophilBingKilledByKupfferCellPerLoopLowerLiver amountOfActivatedNeutrophilBingKilledByKupfferCellPerLoopUpperLiver AntibodyReleaseAmount SECsInitialNumber kupfferCellInitialNumber mastCellInitialNumber activationRateOfRestingNeutrophil hepatocyteInitialNumber salmonellaCount salmonellaConcentration HMGB1DieCount AdjustedBCellCarryCapacityInLiverSinusoid AdjustedCD8TCellCarryCapacityInLiverSinusoid AdjustedCD4TCellCarryCapacityInLiverSinusoid adjustedRestingMonocyteCarryCapacityInLiverSinusoid adjustedRestingNeutrophilCarryCapacityInLiverSinusoid adjustedSalmonellaCarryCapacityInMDMI adjustedSalmonellaCarryCapacityInHepatocyte adjustedSalmonellaCarryCapacityInSECs adjustedSalmonellaCarryCapacityInKupfferCell salmonellareplicationRateInMDMI maximumReleaseRateOfTNFAlphaByKupfferCellPerHour hepatocyteRegenerationRate influxRateOfRestingNeutrophil maximumRateOfTNFAlphaBeingReleasedFromNeutrophilPerHour maximumRateOfHMGB1BeingReleasedFromMDMIIPerHour
   salmonellaLevel1 salmonellaLevel2 salmonellaLevel3 HMGB1Level1 HMGB1Level2 HMGB1Level3 TNF-aLevel1 TNF-aLevel2 TNF-aLevel3]

;;-------------------------------Define initial setting module--------------------------------------------------------------------------------
to InitialSetting
   __clear-all-and-reset-ticks
   setup-sinusoidArea
   setup-hepatocyte
   setup-sinusoidalEndothelialCell
   setup-kupfferCell
   setup-salmonella
   setup-mastCell
   setup-restingNeutrophil
   setup-restingMonocyte
   setup-portalTriad
   setup-CD4TCell
   setup-CD8TCell
   setup-BCell
end

to setup-sinusoidArea
  ask patches with [pycor < int (max-pycor - max-pycor / 1.1) + 26 and pycor > int (-(max-pycor - max-pycor / 1.1)) - 26]
  [
    set pcolor 19
    set sinusoidArea 1
  ]
end

to setup-portalTriad
  ask patches with [(pycor < int (max-pycor - max-pycor / 1.1) + 24 and pycor > int (-(max-pycor - max-pycor / 1.1)) - 24 and pxcor > max-pxcor - (int (max-pycor - max-pycor / 1.1) + 24) and (max-pxcor - pxcor) ^ 2 + abs(pycor) ^ 2 <= ((int (max-pycor - max-pycor / 1.1) + 24)) ^ 2) or (pycor < (int (max-pycor - max-pycor / 1.1) + 24) and pycor > int (-(max-pycor - max-pycor / 1.1)) - 24 and pxcor < (-(max-pxcor - (int (max-pycor - max-pycor / 1.1) + 24))) and (max-pxcor + pxcor) ^ 2 + abs(pycor) ^ 2 <= ((int (max-pycor - max-pycor / 1.1) + 24)) ^ 2)]
  [
    set pcolor blue - 1
    set portalTriadArea 1
  ]
end

to setup-hepatocyte
  set-default-shape Hepatocytes "hepatocyte"
  ask patches with [pycor > int (max-pycor - max-pycor / 2) or pycor < int (- (max-pycor - max-pycor / 2))]
  [
    sprout-Hepatocytes 1
    [
      set size 0.7 * patch-size
      set color 29

      if pxcor mod 2 = 0
      [
        set ycor ycor - 0.5
      ]
    ]
  ]
  set hepatocyteInitialNumber count Hepatocytes
end

to setup-sinusoidalEndothelialCell
  set-default-shape SECs "sec"
  repeat count patches with [pycor <= int (max-pycor - max-pycor / 1.1) + 58 and pycor >= (int (max-pycor - max-pycor / 1.1) + 26) and not any? SECs-here]
  [
    ask one-of patches with [pycor <= int (max-pycor - max-pycor / 1.1) + 58 and pycor >= (int (max-pycor - max-pycor / 1.1) + 26) and not any? SECs-here]
    [
      sprout-SECs 1
      [
        set heading 0
        set size patch-size
        set color red
      ]
      set SECsInitialNumber SECsInitialNumber + 1
    ]
  ]

  repeat count patches with [pycor >= int (-(max-pycor - max-pycor / 1.1)) - 58 and pycor <= (int (-(max-pycor - max-pycor / 1.1)) - 26) and not any? SECs-here]
  [
    ask one-of patches with [pycor >= int (-(max-pycor - max-pycor / 1.1)) - 58 and pycor <= (int (-(max-pycor - max-pycor / 1.1)) - 26) and not any? SECs-here]
    [
      sprout-SECs 1
      [
        set heading 0
        set size patch-size
        set color red
      ]
      set SECsInitialNumber SECsInitialNumber + 1
    ]
  ]
end

to setup-kupfferCell
  set-default-shape KupfferCells "kupffer cell"
  repeat count patches with [((pycor <= int (max-pycor - max-pycor / 1.1) + 25) and (pycor >= int (max-pycor - max-pycor / 1.1) - 6)) and not any? KupfferCells-here and (pxcor < max-pxcor - (int (max-pycor - max-pycor / 1.1) + 24)) and (pxcor > (-(max-pxcor - (int (max-pycor - max-pycor / 1.1) + 24))))]
  [
    ask one-of patches with [((pycor <= int (max-pycor - max-pycor / 1.1) + 25) and (pycor >= int (max-pycor - max-pycor / 1.1) - 6)) and not any? KupfferCells-here and (pxcor < max-pxcor - (int (max-pycor - max-pycor / 1.1) + 24)) and (pxcor > (-(max-pxcor - (int (max-pycor - max-pycor / 1.1) + 24))))]
    [
      sprout-KupfferCells 1
      [
        set size 0.6 * patch-size
        set heading 0
        set color gray
      ]
      set kupfferCellInitialNumber kupfferCellInitialNumber + 1
    ]
  ]

  repeat count patches with [((pycor <= int (-(max-pycor - max-pycor / 1.1)) + 6) and (pycor >= int (-(max-pycor - max-pycor / 1.1)) - 25)) and not any? KupfferCells-here and (pxcor < max-pxcor - (int (max-pycor - max-pycor / 1.1) + 24)) and (pxcor > (-(max-pxcor - (int (max-pycor - max-pycor / 1.1) + 24))))]
  [
    ask one-of patches with [((pycor <= int (-(max-pycor - max-pycor / 1.1)) + 6) and (pycor >= int (-(max-pycor - max-pycor / 1.1)) - 25)) and not any? KupfferCells-here and (pxcor < max-pxcor - (int (max-pycor - max-pycor / 1.1) + 24)) and (pxcor > (-(max-pxcor - (int (max-pycor - max-pycor / 1.1) + 24))))]
    [
      sprout-KupfferCells 1
      [
        set size 0.6 * patch-size
        set heading 0
        set color gray
      ]
     set kupfferCellInitialNumber kupfferCellInitialNumber + 1
    ]
  ]
end

to setup-salmonella
 set-default-shape Salmonellas "salmonella"
 repeat salmonellaInitialNumber
 [
   ask one-of patches
   [
     sprout-Salmonellas 1
     [
       set size 0.8 * patch-size
       set color green
       move-to one-of patches with[pycor = 2 and (pxcor < max-pxcor - (int (max-pycor - max-pycor / 1.1) + 24)) and (pxcor > (-(max-pxcor - (int (max-pycor - max-pycor / 1.1) + 24))))]

     ]
   ]
 ]
end

to setup-mastCell
  set-default-shape MastCells "mast cell"
  repeat count patches with[pycor >= int (max-pycor - max-pycor / 1.1) + 64 and pycor <= int (max-pycor - max-pycor / 1.1) + 76 and not any? MastCells-here]
  [
    ask one-of patches with[pycor >= int (max-pycor - max-pycor / 1.1) + 64 and pycor <= int (max-pycor - max-pycor / 1.1) + 76 and not any? MastCells-here]
    [
      sprout-MastCells 1
      [
        set size 0.8 * patch-size
        set heading 0
        set color 117
      ]
      set mastCellInitialNumber mastCellInitialNumber + 1
    ]
  ]

  repeat count patches with[pycor <= int (-(max-pycor - max-pycor / 1.1)) - 64 and pycor >= int (-(max-pycor - max-pycor / 1.1)) - 76 and not any? MastCells-here]
  [
    ask one-of patches with[pycor <= int (-(max-pycor - max-pycor / 1.1)) - 64 and pycor >= int (-(max-pycor - max-pycor / 1.1)) - 76 and not any? MastCells-here]
    [
      sprout-MastCells 1
      [
        set size 0.8 * patch-size
        set heading 0
        set color 117
      ]
      set mastCellInitialNumber mastCellInitialNumber + 1
    ]
  ]

end

to setup-restingNeutrophil
  set-default-shape RestingNeutrophils "resting neutrophil"
  repeat restingNeutrophilInitialNumber
  [
    ask one-of patches
    [
      sprout-RestingNeutrophils 1
      [
        set size 0.3 * patch-size
        set color 117
        move-to one-of patches with[pycor = 0 and (pxcor < max-pxcor - (int (max-pycor - max-pycor / 1.1) + 24)) and (pxcor > (-(max-pxcor - (int (max-pycor - max-pycor / 1.1) + 24))))]
      ]
    ]
  ]
end

to setup-restingMonocyte
  set-default-shape RestingMonocytes "resting monocyte"
  repeat restingMonocyteInitialNumber
  [
    ask one-of patches with[portalTriadArea = 0]
    [
      sprout-RestingMonocytes 1
      [
        set size 0.8 * patch-size
        set color 118
        move-to one-of patches with[pycor = 0 and (pxcor < max-pxcor - (int (max-pycor - max-pycor / 1.1) + 24)) and (pxcor > (-(max-pxcor - (int (max-pycor - max-pycor / 1.1) + 24))))]
      ]
    ]
  ]
end

to setup-CD4TCell
  set-default-shape CD4TCells "cd4tcell"
  repeat CD4TCellInitialNumber
  [
    ask one-of patches with [portalTriadArea = 1]
    [
      sprout-CD4TCells 1
      [
        set size 0.5 * patch-size
        set CD4TCellInPortalTriad 1
        set color yellow - 2
      ]
    ]
  ]
end

to setup-CD8TCell
  set-default-shape CD8TCells "cd8tcell"
  repeat CD8TCellInitialNumber
  [
    ask one-of patches with [portalTriadArea = 1]
    [
      sprout-CD8TCells 1
      [
        set size 0.5 * patch-size
        set CD8TCellInPortalTriad 1
      ]
    ]
  ]
end

to setup-BCell
  set-default-shape BCells "bcell"
  repeat BCellInitialNumber
  [
    ask one-of patches with [portalTriadArea = 1]
    [
      sprout-BCells 1
      [
        set size 0.5 * patch-size
        set BCellInPortalTriad 1
      ]
    ]
  ]
end

;;-----------------------------------Define simulation module------------------------------------------------------------------------------
to AIRSimulation

;; ---------------Conduct therapy-directed experiments when simulation step equal to 0 (when it is necessary)------------------------------
  if (count Salmonellas >= 0 and count Salmonellas < salmonellaMediumLevelLow)
  [
    set salmonellaLevel1 salmonellaLevel1 + 1
  ]

  if (count Salmonellas >= salmonellaMediumLevelLow and count Salmonellas < salmonellaMediumLevelHigh)
  [
    set salmonellaLevel2 salmonellaLevel2 + 1
  ]

  if (count Salmonellas >= salmonellaHighLevelLow)
  [
    set salmonellaLevel3 salmonellaLevel3 + 1
  ]

  if (HMGB1CurrentCount >= 0 and HMGB1CurrentCount < HMGB-1MediumLevelLow)
  [
    set HMGB1Level1 HMGB1Level1 + 1
  ]

  if (HMGB1CurrentCount >= HMGB-1MediumLevelLow and HMGB1CurrentCount < HMGB-1MediumLevelHigh)
  [
    set HMGB1Level2 HMGB1Level2 + 1
  ]

  if (HMGB1CurrentCount >= HMGB-1HighLevelLow)
  [
    set HMGB1Level3 HMGB1Level3 + 1
  ]

  if (count TNF-as >= 0 and count TNF-as < TNF-aMediumLevelLow)
  [
    set TNF-aLevel1 TNF-aLevel1 + 1
  ]

  if (count TNF-as >= TNF-aMediumLevelLow and count TNF-as < TNF-aMediumLevelHigh)
  [
    set TNF-aLevel2 TNF-aLevel2 + 1
  ]

  if (count TNF-as >= TNF-aHighLevelLow)
  [
    set TNF-aLevel3 TNF-aLevel3 + 1
  ]

  antimicrobialAgentTreatment
  antiHMGB1AgentTreatment
  antiTNFAlphaAgentTreatment
;;-----------------------------------------------------------------------------------------------------------------------------------------
  if any?Salmonella
  [
    SalmonellaBehavior
  ]

  if any?KupfferCell
  [
    KupfferCellBehavior
  ]

  if any?Hepatocyte
  [
    HepatocyteBehavior
  ]

  if any?CRP
  [
    CRPBehavior
  ]

  if any?HepatocyteDebris
  [
    HepatocyteDebrisBehavior
  ]

  if any?MastCell
  [
    MastCellBehavior
  ]

  if any?SECs
  [
    SECsBehavior
  ]

  if any?RestingNeutrophil
  [
    RestingNeutrophilBehavior
  ]

  if any?ActivatedNeutrophil
  [
    ActivatedNeutrophilBehavior
  ]

  if any?NET
  [
    NETBehavior
  ]

  if any?RestingMonocyte
  [
    RestingMonocyteBehavior
  ]

  if any?MDMI
  [
    MDMIBehavior
  ]

  if any?MDMII
  [
    MDMIIBehavior
  ]

  if any?CD4TCell
  [
    CD4TCellBehavior
  ]

  if any?CD8TCell
  [
    CD8TCellBehavior
  ]

  if any?BCell
  [
    BCellBehavior
  ]

  if any?Antibody
  [
    AntibodyBehavior
  ]

  if any?TNFAlpha
  [
    TNFAlphaBehavior
  ]

  if any?HMGB1
  [
    HMGB1Behavior
  ]

  if any?IL10
  [
    IL10Behavior
  ]

  histamineBehavior

  ;;A terminal condition: simulation stops if the entire liver gets damaged
  if not any? Hepatocytes
  [
    stop
  ]

  ;; Define Salmonella concentration in simulation
  set totalPopulation hepatocyteInitialNumber + mastCellInitialNumber + KupfferCellInitialNumber + SECsInitialNumber
  set salmonellaCount count Salmonellas with[salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and CRPOpsonizedSalmonellaPhagocytizeByKupfferCell = 0 and CRPOpsonizedSalmonellaPhagocytizeByMastCell = 0 and CRPOpsonizedSalmonellaPhagocytizeByNeutrophil = 0 and CRPOpsonizedSalmonellaPhagocytizeByMDMI = 0 and CRPOpsonizedSalmonellaPhagocytizeByMDMII = 0 and antibodyOpsonizedSalmonellaPhagocytizeByKupfferCell = 0 and antibodyOpsonizedSalmonellaPhagocytizeByMastCell = 0 and antibodyOpsonizedSalmonellaPhagocytizeByNeutrophil = 0 and antibodyOpsonizedSalmonellaPhagocytizeByMDMI = 0 and antibodyOpsonizedSalmonellaPhagocytizeByMDMII = 0]
  set salmonellaConcentration salmonellaCount / totalPopulation

  ;;Record how many steps the simulation runs
  set counter counter + 1

  tick

  ;;Plot change in numbers of selected indicators with regard to time
  Plot_1s

;;When conduct therapy-directed experiments, implementer can choose to add anti-agents based on the following conditions:
;;1. whenever the state of selected indicators changes; 2. the specific time point(s) the implementer decides to add anti-agent
;;------------------------------------------------------------------------------------------------------------------------------------------
  if (conductTherapeuticTest?)
  [
    ;; Define the low level of Salmonella
    if (count Salmonellas >= 0 and count Salmonellas < salmonellaMediumLevelLow)
    [
      set salmonellaLevel1 salmonellaLevel1 + 1
    ]


    ;; Define the medium level of Salmonella
    if (count Salmonellas >= salmonellaMediumLevelLow and count Salmonellas < salmonellaMediumLevelHigh)
    [

      set salmonellaLevel2 salmonellaLevel2 + 1
    ]


    ;; Define the high level of Salmonella
    if (count Salmonellas >= salmonellaHighLevelLow)
    [

      set salmonellaLevel3 salmonellaLevel3 + 1
    ]


    ;; Define the low level of HMGB-1
    if (HMGB1CurrentCount >= 0 and HMGB1CurrentCount < HMGB-1MediumLevelLow)
    [
      set HMGB1Level1 HMGB1Level1 + 1
    ]


    ;; Define the medium level of HMGB-1
    if (HMGB1CurrentCount >= HMGB-1MediumLevelLow and HMGB1CurrentCount < HMGB-1MediumLevelHigh)
    [
      set HMGB1Level2 HMGB1Level2 + 1
    ]


    ;; Define the high level of HMGB-1
    if (HMGB1CurrentCount > HMGB-1MediumLevelHigh)
    [
      set HMGB1Level3 HMGB1Level3 + 1
    ]

    ;; Define the low level of TNF-a
    if (count TNF-as >= 0 and count TNF-as < TNF-aMediumLevelLow)
    [
      set TNF-aLevel1 TNF-aLevel1 + 1
    ]

    ;; Define the medium level of TNF-a
    if (count TNF-as >= TNF-aMediumLevelLow and count TNF-as < TNF-aMediumLevelHigh)
    [
      set TNF-aLevel2 TNF-aLevel2 + 1
    ]

    ;; Define the high level of TNF-a
    if (count TNF-as >= TNF-aHighLevelLow)
    [
      set TNF-aLevel3 TNF-aLevel3 + 1
    ]

;;Simulation stops whenever the state of Salmonella, HMGB-1, TNF-alpha changes.
;;Implementer chooses to add antimicrobial agents, and/or anti-TNF-alpha agents, and/or anti-HMGB-1 agents
;;--------------------------------------------------------------------------------------------------------------------------------------------
    if (IncorporateTherapyWheneverSystemStatesChange)
    [
      if ((salmonellaLevel1 > 0 and salmonellaLevel2 > 0) or (salmonellaLevel1 > 0 and salmonellaLevel3 > 0) or (salmonellaLevel2 > 0 and salmonellaLevel3 > 0))
      [
        set salmonellaLevel1 0
        set salmonellaLevel2 0
        set salmonellaLevel3 0
        stop
      ]

      if ((HMGB1Level1 > 0 and HMGB1Level2 > 0) or (HMGB1Level1 > 0 and HMGB1Level3 > 0) or (HMGB1Level2 > 0 and HMGB1Level3 > 0))
      [
        set HMGB1Level1 0
        set HMGB1Level2 0
        set HMGB1Level3 0
        stop
      ]

      if ((TNF-aLevel1 > 0 and TNF-aLevel2 > 0) or (TNF-aLevel1 > 0 and TNF-aLevel3 > 0) or (TNF-aLevel2 > 0 and TNF-aLevel3 > 0))
      [
        set TNF-aLevel1 0
        set TNF-aLevel2 0
        set TNF-aLevel3 0
        stop
      ]
    ]
  ]

;;Simulation stops at specific time point (s) (defined by "TimeOfTherapyIncorporation").
;;Implementer chooses to add antimicrobial agents, and/or anti-TNF-alpha agents, and/or anti-HMGB-1 agents
;;-----------------------------------------------------------------------------------------------------------------------------------------------
  if (counter = TimeOfTherapyIncorporation)
  [
    stop
  ]
end

;;-------------Define behaviors of each agent type in liver inflammation-------------------------------------------------------------------------
to SalmonellaBehavior
  salmonellaPhagocytizeByKupfferCellSubRoutine
  salmonellaKillByKupfferCellSubRoutine
  salmonellaReplicateWithinKupfferCellSubRoutine
  newlyReleasedSalmonellaFromApoptoticCellsInteractWithSECsOrHepatocyteOrMastCellSubRoutine
  salmonellaReplicateWithinSECsSubRoutine
  salmonellaReplicateWithinHepatocyteSubRoutine
  salmonellaPhagocytizeByActivatedNeutrophilSubRoutine
  salmonellaPhagocytizeByMDMISubRoutine
  salmonellaReplicateWithinMDMISubRoutine
  salmonellaGetTrappedByNETsSubRoutine
  salmonellaDieBecauseOtherChemicalsReleaseByMastCellSubRoutine
end

to KupfferCellBehavior
  kupfferCellKillBySalmonellaSubRoutine
  kupfferCellProduceTNFAlphaInteractWithSalmonellaOrHepatocyteDebrisOrActivatedNeutrophilSubRoutine
  kupfferCellProduceIL10ByIngestApoptoticHepatocyteSubRoutine
  kupfferCellWhoPhagocytizeSalmonellaUndergoApoptosisByInteractWithCD8TCellSubRoutine
end

to HepatocyteBehavior
  hepatocyteBecomeHepatocyteDebrisInducedBySalmonellaSubRoutine
  hepatocyteBecomeHepatocyteDebrisInducedByTNFAlphaSubRoutine
  hepatocyteReleaseCRPIfAnyMDMIWasDetectedSubRoutine
  apoptoticHepatocyteKillByNeutrophilSubRoutine
  apoptoticHepatocyteProduceTNFAlphaSubRoutine
  apoptoticHepatocyteProduceHMGB1SubRoutine
  hepatocyteRegenerateSubRoutine
end

to CRPBehavior
  CRPBindToSalmonellaSubRoutine
  CRPSalmonellaComplexPhagocytizeBykupfferCellSubRoutine
  CRPSalmonellaComplexPhagocytizeByMastCellSubRoutine
  CRPSalmonellaComplexPhagocytizeByNeutrophilSubRoutine
  CRPSalmonellaComplexPhagocytizeByMDMISubRoutine
  CRPSalmonellaComplexPhagocytizeByMDMIISubRoutine
  CRPBindToApoptoticKupfferCellSubRoutine
  CRPOpsonizedApoptoticKupfferCellPhagocytizeByKupfferCellSubRoutine
  CRPOpsonizedApoptoticKupfferCellPhagocytizeByMastCellSubRoutine
  CRPOpsonizedApoptoticKupfferCellPhagocytizeByNeutrophilSubRoutine
  CRPOpsonizedApoptoticKupfferCellPhagocytizeByMDMISubRoutine
  CRPOpsonizedApoptoticKupfferCellPhagocytizeByMDMIISubRoutine
  CRPBindToHepatocyteDebrisSubRoutine
  CRPOpsonizedHepatocyteDebrisPhagocytizeByKupfferCellSubRoutine
  CRPOpsonizedHepatocyteDebrisPhagocytizeByMastCellSubRoutine
  CRPOpsonizedHepatocyteDebrisPhagocytizeByNeutrophilSubRoutine
  CRPOpsonizedHepatocyteDebrisPhagocytizeByMDMISubRoutine
  CRPOpsonizedHepatocyteDebrisPhagocytizeByMDMIISubRoutine
  CRPBindToApoptoticNeutrophilSubRoutine
  CRPOpsonizedApoptoticNeutrophilPhagocytizeByKupfferCellSubRoutine
  CRPOpsonizedApoptoticNeutrophilPhagocytizeByMastCellSubRoutine
  CRPOpsonizedApoptoticNeutrophilPhagocytizeByNeutrophilSubRoutine
  CRPOpsonizedApoptoticNeutrophilPhagocytizeByMDMISubRoutine
  CRPOpsonizedApoptoticNeutrophilPhagocytizeByMDMIISubRoutine
  CRPBindToApoptoticMDMISubRoutine
  CRPOpsonizedApoptoticMDMIPhagocytizeByKupfferCellSubRoutine
  CRPOpsonizedApoptoticMDMIPhagocytizeByMastCellSubRoutine
  CRPOpsonizedApoptoticMDMIPhagocytizeByNeutrophilSubRoutine
  CRPOpsonizedApoptoticMDMIPhagocytizeByMDMISubRoutine
  CRPOpsonizedApoptoticMDMIPhagocytizeByMDMIISubRoutine
  CRPBindToApoptoticMDMIISubRoutine
  CRPOpsonizedApoptoticMDMIIPhagocytizeByKupfferCellSubRoutine
  CRPOpsonizedApoptoticMDMIIPhagocytizeByMastCellSubRoutine
  CRPOpsonizedApoptoticMDMIIPhagocytizeByNeutrophilSubRoutine
  CRPOpsonizedApoptoticMDMIIPhagocytizeByMDMISubRoutine
  CRPOpsonizedApoptoticMDMIIPhagocytizeByMDMIISubRoutine
  CRPUndergoCatabolismByNatureSubRoutine
end

to HepatocyteDebrisBehavior
  hepatocyteDebrisRandomlyMoveInLiverTissueSubRoutine
  hepatocyteDebrisPhagocytizeByInflammatoryCellSubRoutine
  hepatocyteDebrisDieByNatureSubRoutine
end

to MastCellBehavior
  mastCellProliferateSubRoutine
  mastCellProduceHistamineByInteractWithAntibodySalmonellaComplexSubRoutine
  mastCellProduceTNFAlphaByInteractWithAntibodySalmonellaComplexSubRoutine
  mastCellProduceTNFAlphaByBindingToSalmonellaSubRoutine
  mastCellUndergoApoptosisByNatureSubRoutine
end

to SECsBehavior
  SECsUndergoApoptosisInducedBySalmonellaSubRoutine
end

to RestingNeutrophilBehavior
  restingNeutrophilInfluxToLiverSinusoidFromBoneMarrowSubRoutine
  restingNeutrophilMoveToSECsFollowingSignalSentFromCytokineAndGetActivatedSubRoutine
  restingNeutrophilUndergoAgingByNatureSubRoutine
end

to ActivatedNeutrophilBehavior
  activatedNeutrophilInteractWithKupfferCellSubRoutine
  activatedNeutrophilPhagocytizeByKupfferCellSubRoutine
  activatedNeutrophilMoveToSiteOfSalmonellaSubRoutine
  activatedNeutrophilMoveToSiteOfApoptoticHepatocyteSubRoutine
  activatedNeutrophilUndergoAgingByNatureSubRoutine
  activatedNeutrophilProduceTNFAlphaSubRoutine
  activatedNeutrophilProduceIL10SubRoutine
  activatedNeutrophilProduceNETsSubRoutine
  apoptoticActivatedNeutrophilPhagocytizeByMDMII
  activatedNeutrophilWhoPhagocytizeSalmonellaUndergoApoptosisByInteractWithCD8TCellSubRoutine
end

to NETBehavior
  NETTrappSalmonellaSubRoutine
  NETUndergoApoptosisByNatureSubRoutine
end

to RestingMonocyteBehavior
  restingMonocyteInfluxToLiverSinusoidFromBoneMarrowSubRoutine
  restingMonocyteMoveToSECsFollowingSignalSentFromCytokineAndGetActivatedSubRoutine
  restingMonocyteUndergoAgingByNatureSubRoutine
  restingMonocyteBecomeMDMIOrMDMIIByInteractWithCorrespondingCellOrCytokineSubRoutine
end


to MDMIBehavior
  MDMIPhagocytizeSalmonellaSubRoutine
  MDMIKillBySalmonellaSubRoutine
  MDMIProduceTNFAlphaByPhagocytizeSalmonellaOrCRPTypeComplexSubRoutine
  MDMIProduceIL10ByPhagocytizeApoptoticCD4TCellOrCD8TCellSubRoutine
  MDMIUndergoAgingByNatureSubRoutine
  MDMITransformToKupfferCellSubRoutine
  MDMIWhoPhagocytizeSalmonellaUndergoApoptosisByInteractWithCD8TCellSubRoutine
end

to MDMIIBehavior
  MDMIIPhagocytizeApoptoticNeutrophilSubRoutine
  MDMIIProduceHMGB1ByPhagocytizeApoptoticNeutrophilSubRoutine
  MDMIIProduceIL10ByPhagocytizeApoptoticNeutrophilOrApoptoticTCellSubRoutine
  MDMIIUndergoAgingByNatureSubRoutine
  MDMIITransformToKupfferCellSubRoutine
end

to CD4TCellBehavior
  CD4TCellMigrateFromPortalTriadToLiverSinusoidSubRoutine
  CD4TCellInteractWithAPCsAndImprovePhagocytosisRateSubRoutine
  CD4TCellProduceTNFAlphaByInteractWithAPCsSubRoutine
  CD4TCellProduceIL10ByInteractWithAPCsSubRoutine
  apoptoticCD4TCellPhagocytizeByMDMI0rMDMIISubRoutine
  CD4TCellUndergoAgingByNatureSubRoutine
end


to CD8TCellBehavior
  CD8TCellMigrateFromPortalTriadToLiverSinusoidSubRoutine
  CD8TCellInduceApoptosisOfKupfferCellOrNeutrophilOrMDMIWhoPhagocytizeSalmonellaSubRoutine
  apoptoticCD8TCellPhagocytizeByMDMIOrMDMIISubRoutine
  CD8TCellUndergoAgingByNatureSubRoutine
end

to BCellBehavior
  BCellMigrateFromPortalTriadToLiverSinusoidSubRoutine
  BCellProduceAntibodySubRoutine
  BCellUndergoAgingByNatureSubRoutine
end

to AntibodyBehavior
  antibodyInteractWithSalmonellaSubRoutine
  antibodyBindToSalmonellaFormComplexSubRoutine
  antibodySalmonellaComplexPhagocytizeByKupfferCellSubRoutine
  antibodySalmonellaComplexPhagocytizeByMastCellSubRoutine
  antibodySalmonellaComplexPhagocytizeByNeutrophilSubRoutine
  antibodySalmonellaComplexPhagocytizeByMDMISubRoutine
  antibodySalmonellaComplexPhagocytizeByMDMIISubRoutine
  antibodyUndergoCatabolismByNatureSubRoutine
end

to TNFAlphaBehavior
  TNFAlphaUndergoCatabolismByNatureSubRoutine
end

to HMGB1Behavior
  HMGB1UndergoCatabolismByNatureSubRoutine
end

to IL10Behavior
  IL10InteractWithInflammatoryCellsSubRoutine
  IL10BindToInflammatoryCellsSubRoutine
  IL10UndergoCatabolismByNatureSubRoutine
end

to histamineBehavior
  histamineUndergoApoptosisByNatureSubRoutine
end

;;----------------------Behaviors of Salmonella in liver inflammation----------------------------------------------------------------------------------
to salmonellaPhagocytizeByKupfferCellSubRoutine
  if (counter != 0)
  [
    let phagocytizePercentage percentageOfSalmonellaPhagocytizeByKupfferCellLowerLevel + random-float (percentageOfSalmonellaPhagocytizeByKupfferCellUpperLevel - percentageOfSalmonellaPhagocytizeByKupfferCellLowerLevel)
    set salmonellaAmountMoveToKupfferCellPerLoop salmonellaAmountMoveToKupfferCellPerLoop + phagocytizePercentage * count Salmonellas with [salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaNewlyReleasedFromKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaBindToMastCell = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaNewlyReleasedFromSECs = 0 and salmonellaNewlyReleasedFromHepatocyte = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaNewlyReleasedFromMDMI = 0 and salmonellaInteractWithNET = 0 and salmonellaInteractWithAntibody = 0 and salmonellaInteractWithCRP = 0]
    if (salmonellaAmountMoveToKupfferCellPerLoop >= 1)
    [
      ask n-of (salmonellaAmountMoveToKupfferCellPerLoop) Salmonellas with [salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaNewlyReleasedFromKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaBindToMastCell = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaNewlyReleasedFromSECs = 0 and salmonellaNewlyReleasedFromHepatocyte = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaNewlyReleasedFromMDMI = 0 and salmonellaInteractWithNET = 0 and salmonellaInteractWithAntibody = 0 and salmonellaInteractWithCRP = 0]
      [
        if any? KupfferCells with [kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and count Salmonellas-here with[salmonellaPhagocytizeByKupfferCell = 1] <= (maximumNumberOfSalmonellaBeingKilledByKupfferCell - 1)]
        [
          move-to one-of KupfferCells with [kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and count Salmonellas-here with[salmonellaPhagocytizeByKupfferCell = 1] <= (maximumNumberOfSalmonellaBeingKilledByKupfferCell - 1)]
          set salmonellaPhagocytizeByKupfferCell 1
          set counter32 counter32 + 1
        ]
      ]

      set salmonellaAmountMoveToKupfferCellPerLoop salmonellaAmountMoveToKupfferCellPerLoop - counter32
      set counter32 0
    ]
  ]

  ;;Assign a state variable to identify kupffer cells that interact with Salmonella
  ask KupfferCells with [any? Salmonellas-here with [salmonellaPhagocytizeByKupfferCell = 1] and not any? other KupfferCells-here with[kupfferCellInteractWithSalmonella = 1]]
  [
    set kupfferCellInteractWithSalmonella 1
    set kupfferCellKillBySalmonella 0
  ]
end

to salmonellaKillByKupfferCellSubRoutine
  if (counter != 0)
  [
    ask Salmonellas with [salmonellaPhagocytizeByKupfferCell = 1]
    [
      set salmonellaKillByKupfferCellAt? salmonellaKillByKupfferCellAt? + 1
    ]

    ask Salmonellas with [salmonellaPhagocytizeByKupfferCell = 1 and salmonellaKillByKupfferCellAt? >= random timeOfSalmonellaKillByKupfferCell]
    [
      die
    ]

    ;;Assign a state variable to identify kupffer cells that NOT interact with Salmonella
    ask KupfferCells with [(kupfferCellInteractWithSalmonella = 1 and kupfferCellKillBySalmonella = 0 and not any? Salmonellas-here with [salmonellaPhagocytizeByKupfferCell = 1]) or (any? Salmonellas-here with[salmonellaPhagocytizeByKupfferCell = 1] and any? other KupfferCells-here with[kupfferCellInteractWithSalmonella = 1 and kupfferCellKillBySalmonella = 0])]
    [
      set kupfferCellInteractWithSalmonella 0
      set kupfferCellProduceTNFAlpha 0
      set kupfferCellWhoPhagocytizeSalmonellaInteractWithCD4TCell 0
    ]

    ;;Assign a state variable to identify CD4 T cells that NOT interact with kupffer cells who phagocytize Salmonella
    ask CD4TCells with[CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 1 and not any? KupfferCells-here with[KupfferCellWhoPhagocytizeSalmonellaInteractWithCD4TCell = 1]]
    [
      set CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella 0
      set CD4TCellProduceTNFAlpha 0
      set CD4TCellProduceIL10 0
    ]
  ]
end

to salmonellaReplicateWithinKupfferCellSubRoutine
  if (counter != 0)
  [
    ask Salmonellas with [salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaNewlyReleasedFromKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaBindToMastCell = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaNewlyReleasedFromSECs = 0 and salmonellaNewlyReleasedFromHepatocyte = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaNewlyReleasedFromMDMI = 0 and salmonellaInteractWithNET = 0 and salmonellaInteractWithAntibody = 0 and salmonellaInteractWithCRP = 0]
    [
      if any? KupfferCells with [kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and kupfferCellInteractWithCRPTypeComplex = 0 and kupfferCellInteractWithAntibodySalmonellaComplex = 0 and count Salmonellas-here with[salmonellaReplicateWithinKupfferCell = 1] <= (maximumNumberOfSalmonellaBeingKilledByKupfferCell - 1)]
      [
        move-to one-of KupfferCells with [kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and kupfferCellInteractWithCRPTypeComplex = 0 and kupfferCellInteractWithAntibodySalmonellaComplex = 0 and count Salmonellas-here with[salmonellaReplicateWithinKupfferCell = 1] <= (maximumNumberOfSalmonellaBeingKilledByKupfferCell - 1)]
        set salmonellaReplicateWithinKupfferCell 1
      ]
    ]
  ]

  if (counter != 0)
  [
    ;;Salmonella replicate within kupffer cells
    set adjustedSalmonellaCarryCapacityInKupfferCell salmonellaCarryCapacityInKupfferCell
    let replicationRate (salmonellaReplicationRateInKupfferCellLowerLevelPerHour + random-float (salmonellaReplicationRateInKupfferCellUpperLevelPerHour - salmonellaReplicationRateInKupfferCellLowerLevelPerHour))
    set salmonellaReplicationAmountInKupfferCellPerHour salmonellaReplicationAmountInKupfferCellPerHour + (replicationRate * count Salmonellas with [salmonellaReplicateWithinKupfferCell = 1 and count other Salmonellas-here with[salmonellaReplicateWithinKupfferCell = 1] <= (maximumNumberOfSalmonellaBeingKilledByKupfferCell - 1)] * (1 - count Salmonellas with [salmonellaReplicateWithinKupfferCell = 1 and count other Salmonellas-here with[salmonellaReplicateWithinKupfferCell = 1] <= (maximumNumberOfSalmonellaBeingKilledByKupfferCell - 1)] / adjustedSalmonellaCarryCapacityInKupfferCell))
    if (salmonellaReplicationAmountInKupfferCellPerHour >= 1)
    [
      repeat salmonellaReplicationAmountInKupfferCellPerHour
      [
        if any? Salmonellas with [salmonellaReplicateWithinKupfferCell = 1 and count other Salmonellas-here with[salmonellaReplicateWithinKupfferCell = 1] <= (maximumNumberOfSalmonellaBeingKilledByKupfferCell - 1)]
        [
          ask one-of Salmonellas with [salmonellaReplicateWithinKupfferCell = 1 and count other Salmonellas-here with[salmonellaReplicateWithinKupfferCell = 1] <= (maximumNumberOfSalmonellaBeingKilledByKupfferCell - 1)]
          [
            hatch 1
          ]
          set counter33 counter33 + 1
        ]
      ]

      set salmonellaReplicationAmountInKupfferCellPerHour salmonellaReplicationAmountInKupfferCellPerHour - counter33
      set counter33 0
    ]
  ]

  ;;Assign a state variable to identify kupffer cells that are killed by Salmonella
  ask KupfferCells with [any? Salmonellas-here with [salmonellaReplicateWithinKupfferCell = 1] and not any? other KupfferCells-here with[kupfferCellInteractWithSalmonella = 1]]
  [
    set kupfferCellInteractWithSalmonella 1
    set kupfferCellKillBySalmonella 1
  ]
end

to newlyReleasedSalmonellaFromApoptoticCellsInteractWithSECsOrHepatocyteOrMastCellSubRoutine
  if (counter != 0)
  [
    ;;Describe Salmonella behaviors in the upper liver sinusoid
    let salmonellaCurrentCountUpperSinusoid count Salmonellas with [ycor > 0 and (salmonellaNewlyReleasedFromKupfferCell = 1 or salmonellaNewlyReleasedFromSECs = 1 or salmonellaNewlyReleasedFromHepatocyte = 1 or salmonellaNewlyReleasedFromMDMI = 1 or (salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaNewlyReleasedFromKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaNewlyReleasedFromSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaNewlyReleasedFromHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaNewlyReleasedFromMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0))]
    ask Salmonellas with[ycor > 0 and salmonellaNewlyReleasedFromKupfferCell = 1]
    [
      if any? SECs with[ycor > 0 and count other Salmonellas-here with[SalmonellaReplicateWithinSECs = 1] <= 1]
      [
        move-to min-one-of SECs with[ycor > 0 and count other Salmonellas-here with[SalmonellaReplicateWithinSECs = 1] <= 1][distance myself]
        set salmonellaReplicateWithinSECs 1
        set salmonellaNewlyReleasedFromKupfferCell 0
      ]
    ]

    set salmonellaAmountMoveToMastCellPerLoopUpperLiver salmonellaAmountMoveToMastCellPerLoopUpperLiver + 0.11 * count Salmonellas with[ycor > 0 and salmonellaNewlyReleasedFromSECs = 1]
    if (salmonellaAmountMoveToMastCellPerLoopUpperLiver >= 1)
    [
      ask n-of (salmonellaAmountMoveToMastCellPerLoopUpperLiver) Salmonellas with[ycor > 0 and salmonellaNewlyReleasedFromSECs = 1]
      [
        if any? MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
        [
          move-to min-one-of MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0][distance myself]
          set salmonellaBindToMastCell 1
          set salmonellaNewlyReleasedFromSECs 0
          set counter34 counter34 + 1
        ]
      ]

      set salmonellaAmountMoveToMastCellPerLoopUpperLiver salmonellaAmountMoveToMastCellPerLoopUpperLiver - counter34
      set counter34 0
    ]

    ask Salmonellas with[ycor > 0 and (salmonellaNewlyReleasedFromSECs = 1 or salmonellaNewlyReleasedFromHepatocyte = 1 or salmonellaNewlyReleasedFromMDMI = 1)]
    [
      if (any? Hepatocytes with[ycor > 0 and hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 0 and apoptoticHepatocyteInteractWithNeutrophil = 0 and count other Salmonellas-here with [salmonellaReplicateWithinHepatocyte = 1] <= (maximumNumberOfSalmonellaResideWithinHepatocyte - 1)])
      [
        move-to min-one-of Hepatocytes with[ycor > 0 and hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 0 and apoptoticHepatocyteInteractWithNeutrophil = 0 and count other Salmonellas-here with [salmonellaReplicateWithinHepatocyte = 1] <= (maximumNumberOfSalmonellaResideWithinHepatocyte - 1)][distance myself]
        set salmonellaReplicateWithinHepatocyte 1
        set salmonellaNewlyReleasedFromSECs 0
        set salmonellaNewlyReleasedFromHepatocyte 0
        set salmonellaNewlyReleasedFromMDMI 0
      ]
    ]

    ;;Describe Salmonella behaviors in the lower liver sinusoid
    let salmonellaCurrentCountLowerSinusoid count Salmonellas with [ycor < 0 and (salmonellaNewlyReleasedFromKupfferCell = 1 or salmonellaNewlyReleasedFromSECs = 1 or salmonellaNewlyReleasedFromHepatocyte = 1 or salmonellaNewlyReleasedFromMDMI = 1 or (salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaNewlyReleasedFromKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaNewlyReleasedFromSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaNewlyReleasedFromHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaNewlyReleasedFromMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0))]
    ask Salmonellas with[ycor < 0 and salmonellaNewlyReleasedFromKupfferCell = 1]
    [
      if any? SECs with[ycor < 0 and count other Salmonellas-here with[SalmonellaReplicateWithinSECs = 1] <= 1]
      [
        move-to min-one-of SECs with[ycor < 0 and count other Salmonellas-here with[SalmonellaReplicateWithinSECs = 1] <= 1][distance myself]
        set salmonellaReplicateWithinSECs 1
        set salmonellaNewlyReleasedFromKupfferCell 0
      ]
    ]

    set salmonellaAmountMoveToMastCellPerLoopLowerLiver salmonellaAmountMoveToMastCellPerLoopLowerLiver + 0.11 * count Salmonellas with[ycor < 0 and salmonellaNewlyReleasedFromSECs = 1]
    if (salmonellaAmountMoveToMastCellPerLoopLowerLiver >= 1)
    [
      ask n-of (salmonellaAmountMoveToMastCellPerLoopLowerLiver) Salmonellas with[ycor < 0 and salmonellaNewlyReleasedFromSECs = 1]
      [
        if any? MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
        [
          move-to min-one-of MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0][distance myself]
          set salmonellaBindToMastCell 1
          set salmonellaNewlyReleasedFromSECs 0
          set counter35 counter35 + 1
        ]
      ]

      set salmonellaAmountMoveToMastCellPerLoopLowerLiver salmonellaAmountMoveToMastCellPerLoopLowerLiver - counter35
      set counter35 0
    ]

    ask Salmonellas with[ycor < 0 and (salmonellaNewlyReleasedFromSECs = 1 or salmonellaNewlyReleasedFromHepatocyte = 1 or salmonellaNewlyReleasedFromMDMI = 1)]
    [
      if (any? Hepatocytes with[ycor < 0 and hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 0 and apoptoticHepatocyteInteractWithNeutrophil = 0 and count other Salmonellas-here with [salmonellaReplicateWithinHepatocyte = 1] <= (maximumNumberOfSalmonellaResideWithinHepatocyte - 1)])
      [
        move-to min-one-of Hepatocytes with[ycor < 0 and hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 0 and apoptoticHepatocyteInteractWithNeutrophil = 0 and count other Salmonellas-here with [salmonellaReplicateWithinHepatocyte = 1] <= (maximumNumberOfSalmonellaResideWithinHepatocyte - 1)][distance myself]
        set salmonellaReplicateWithinHepatocyte 1
        set salmonellaNewlyReleasedFromSECs 0
        set salmonellaNewlyReleasedFromHepatocyte 0
        set salmonellaNewlyReleasedFromMDMI 0
      ]
    ]

    ;;Assign a state variable to identify SECs that interact with Salmonella
    ask SECs with [any? Salmonellas-here with [salmonellaReplicateWithinSECs = 1] and not any? other SECs-here with[SECsInteractWithSalmonella = 1]]
    [
      set SECsInteractWithSalmonella 1
    ]

    ;;Assign a state variable to identify hepatocytes that interact with Salmonella
    ask Hepatocytes with [any? Salmonellas-here with [salmonellaReplicateWithinHepatocyte = 1]]
    [
      set hepatocyteInteractWithSalmonella 1
    ]
  ]

  ;;Assign a state variable to identify mast cells that interact with Salmonella
  if any? MastCells with [any? Salmonellas-here with [salmonellaBindToMastCell = 1] and not any? other MastCells-here with[mastCellInteractWithSalmonella = 1] and mastCellUndergoApoptosisByNature = 0]
  [
    ask one-of MastCells with [any? Salmonellas-here with [salmonellaBindToMastCell = 1] and not any? other MastCells-here with[mastCellInteractWithSalmonella = 1] and mastCellUndergoApoptosisByNature = 0]
    [
      set mastCellInteractWithSalmonella 1
    ]
  ]
end

to salmonellaReplicateWithinSECsSubRoutine
  if (counter != 0)
  [
    set adjustedSalmonellaCarryCapacityInSECs salmonellaCarryCapacityInSECs
    set salmonellaReplicationAmountInSECsPerLoop salmonellaReplicationAmountInSECsPerLoop + (salmonellaReplicationRateInSECsPerHour * count Salmonellas with [salmonellaReplicateWithinSECs = 1 and count other Salmonellas-here with[salmonellaReplicateWithinSECs = 1] <= (maximumNumberOfSalmonellaResideWithinSECs - 1)] * (1 - count Salmonellas with [salmonellaReplicateWithinSECs = 1 and count other Salmonellas-here with[salmonellaReplicateWithinSECs = 1] <= (maximumNumberOfSalmonellaResideWithinSECs - 1)] / adjustedSalmonellaCarryCapacityInSECs))
    if (salmonellaReplicationAmountInSECsPerLoop >= 1)
    [
      repeat salmonellaReplicationAmountInSECsPerLoop
      [
        if any? Salmonellas with [salmonellaReplicateWithinSECs = 1 and count other Salmonellas-here with[salmonellaReplicateWithinSECs = 1] <= (maximumNumberOfSalmonellaResideWithinSECs - 1)]
        [
          ask one-of Salmonellas with [salmonellaReplicateWithinSECs = 1 and count other Salmonellas-here with[salmonellaReplicateWithinSECs = 1] <= (maximumNumberOfSalmonellaResideWithinSECs - 1)]
          [
            hatch 1
          ]
          set counter36 counter36 + 1
        ]
      ]

      set salmonellaReplicationAmountInSECsPerLoop salmonellaReplicationAmountInSECsPerLoop - counter36
      set counter36 0
    ]
  ]
end

to salmonellaReplicateWithinHepatocyteSubRoutine
  if (counter != 0)
  [
    set adjustedSalmonellaCarryCapacityInHepatocyte salmonellaCarryCapacityInHepatocyte
    set salmonellaReplicationAmountInHepatocytePerLoop salmonellaReplicationAmountInHepatocytePerLoop + ((salmonellaReplicationRateInHepatocyteLowerLevelPerHour + random-float (salmonellaReplicationRateInHepatocyteUpperLevelPerHour - salmonellaReplicationRateInHepatocyteLowerLevelPerHour)) * count Salmonellas with [salmonellaReplicateWithinHepatocyte = 1 and count other Salmonellas-here with[salmonellaReplicateWithinHepatocyte = 1] <= (maximumNumberOfSalmonellaResideWithinHepatocyte - 1)] * (1 - count Salmonellas with [salmonellaReplicateWithinHepatocyte = 1 and count other Salmonellas-here with[salmonellaReplicateWithinHepatocyte = 1] <= (maximumNumberOfSalmonellaResideWithinHepatocyte - 1)] / adjustedSalmonellaCarryCapacityInHepatocyte))
    if (salmonellaReplicationAmountInHepatocytePerLoop >= 1)
    [
      repeat salmonellaReplicationAmountInHepatocytePerLoop
      [
        if any? Salmonellas with [salmonellaReplicateWithinHepatocyte = 1 and count other Salmonellas-here with[salmonellaReplicateWithinHepatocyte = 1] <= (maximumNumberOfSalmonellaResideWithinHepatocyte - 1)]
        [
          ask one-of Salmonellas with [salmonellaReplicateWithinHepatocyte = 1 and count other Salmonellas-here with[salmonellaReplicateWithinHepatocyte = 1] <= (maximumNumberOfSalmonellaResideWithinHepatocyte - 1)]
          [
            hatch 1
          ]
          set counter37 counter37 + 1
        ]
      ]

      set salmonellaReplicationAmountInHepatocytePerLoop salmonellaReplicationAmountInHepatocytePerLoop - counter37
      set counter37 0
    ]
  ]
end

to salmonellaPhagocytizeByActivatedNeutrophilSubRoutine
  if (counter != 0)
  [
    ask Salmonellas with [salmonellaPhagocytizeByNeutrophil = 1]
    [
      set salmonellaDieByNeutrophilAt? salmonellaDieByNeutrophilAt? + 1
    ]

    ask Salmonellas with [salmonellaPhagocytizeByNeutrophil = 1 and salmonellaDieByNeutrophilAt? >= timeOfSalmonellaDieInduceByNeutrophil]
    [
      die
    ]

    ;;CD4T Cell improve phagocytosis rates of activated neutrophils
    ask Salmonellas with[any? ActivatedNeutrophils-here with[activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD4TCell = 1] and salmonellaPhagocytizeByNeutrophil = 1]
    [
      die
    ]

    ;;Assign a state variable to identify activated neutrophils that NOT interact with Salmonella
    ask ActivatedNeutrophils with[(activatedNeutrophilInteractWithSalmonella = 1 and not any? Salmonellas-here with[SalmonellaPhagocytizeByNeutrophil = 1]) or (any? Salmonellas-here with[SalmonellaPhagocytizeByNeutrophil = 1] and any? other ActivatedNeutrophils-here with[activatedNeutrophilInteractWithSalmonella = 1])]
    [
      set activatedNeutrophilInteractWithSalmonella 0
      set activatedNeutrophilProduceTNFAlpha 0
      set activatedNeutrophilProduceIL10 0
      set activatedNeutrophilProduceNET 0
      set activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD4TCell 0
    ]

    ;;Assign a state variable to identify CD4 T cells that NOT interact with neutrophils who phagocytize Salmonella
    ask CD4TCells with[CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 1 and not any? ActivatedNeutrophils-here with [activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD4TCell = 1]]
    [
      set CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella 0
      set CD4TCellProduceTNFAlpha 0
      set CD4TCellProduceIL10 0
    ]
  ]
end

to salmonellaPhagocytizeByMDMISubRoutine
  if (counter != 0)
  [
    ask Salmonellas with[salmonellaPhagocytizeByMDMI = 1]
    [
      set salmonellaDieInduceByMDMIAt? salmonellaDieInduceByMDMIAt? + 1
    ]

    ask Salmonellas with[salmonellaPhagocytizeByMDMI = 1 and salmonellaDieInduceByMDMIAt? >= timeOfSalmonellaDieInduceByMDMI]
    [
      die
    ]

    ;;Assign a state variable to identify MDMIs that NOT phagocytize Salmonella
    ask MDMIs with[(MDMIPhagocytizeSalmonella = 1 and not any? Salmonellas-here with[salmonellaPhagocytizeByMDMI = 1]) or (any? salmonellas-here with[salmonellaPhagocytizeByMDMI = 1] and any? other MDMIs-here with[MDMIPhagocytizeSalmonella = 1])]
    [
      set MDMIPhagocytizeSalmonella 0
      set MDMIProduceTNFAlpha 0
      set MDMIWhoPhagocytizeSalmonellaInteractWithCD4TCell 0
    ]

    ;;Assign a state variable to identify CD4 T Cells that NOT interact with MDMIs who phagocytize Salmonella
    ask CD4TCells with[CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 1 and not any? MDMIs-here with[MDMIWhoPhagocytizeSalmonellaInteractWithCD4TCell = 1]]
    [
      set CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella 0
      set CD4TCellProduceTNFAlpha 0
      set CD4TCellProduceIL10 0
    ]
  ]

  repeat 3600
  [
    ask MDMISalmonella-links with[end1 = one-of MDMIs with[MDMIPhagocytizeSalmonella = 0] or end2 = one-of MDMIs with[MDMIPhagocytizeSalmonella = 0]]
    [
      die
    ]
  ]
end

to salmonellaReplicateWithinMDMISubRoutine
  if (counter != 0)
  [
    set adjustedSalmonellaCarryCapacityInMDMI salmonellaCarryCapacityInMDMI
    if (counter <= 10)
    [
      set salmonellareplicationRateInMDMI salmonellaReplicationRateInMDMIFrom0To10
    ]

    if (counter > 10 and counter <= 16)
    [
      set salmonellareplicationRateInMDMI salmonellaReplicationRateInMDMIFrom10To16
    ]

    if (counter > 16)
    [
      set salmonellareplicationRateInMDMI salmonellaReplicationRateInMDMIFrom16To25
    ]

    set salmonellaReplicationAmountInMDMIPerLoop salmonellaReplicationAmountInMDMIPerLoop + (salmonellareplicationRateInMDMI * count Salmonellas with [salmonellaReplicateWithinMDMI = 1 and count other Salmonellas-here with[salmonellaReplicateWithinMDMI = 1] <= (maximumNumberOfSalmonellaBeingKilledByMDMI - 1)] * (1 - count Salmonellas with [salmonellaReplicateWithinMDMI = 1 and count other Salmonellas-here with [salmonellaReplicateWithinMDMI = 1] <= (maximumNumberOfSalmonellaBeingKilledByMDMI - 1)] / adjustedSalmonellaCarryCapacityInMDMI))
    if (salmonellaReplicationAmountInMDMIPerLoop >= 1)
    [
      repeat salmonellaReplicationAmountInMDMIPerLoop
      [
        if any? Salmonellas with [salmonellaReplicateWithinMDMI = 1 and count other Salmonellas-here with[salmonellaReplicateWithinMDMI = 1] <= (maximumNumberOfSalmonellaBeingKilledByMDMI - 1)]
        [
          ask one-of Salmonellas with [salmonellaReplicateWithinMDMI = 1 and count other Salmonellas-here with[salmonellaReplicateWithinMDMI = 1] <= (maximumNumberOfSalmonellaBeingKilledByMDMI - 1)]
          [
            hatch 1
          ]
          set counter38 counter38 + 1
        ]
      ]

      set salmonellaReplicationAmountInMDMIPerLoop salmonellaReplicationAmountInMDMIPerLoop - counter38
      set counter38 0
    ]
  ]
end

to salmonellaGetTrappedByNETsSubRoutine
  if (counter != 0)
  [
    ask salmonellas with[salmonellaInteractWithNET = 1]
    [
      set salmonellaDieInduceByNETAt? salmonellaDieInduceByNETAt? + 1
    ]

    ask salmonellas with[salmonellaInteractWithNET = 1 and salmonellaDieInduceByNETAt? >= 3]
    [
      die
    ]

    ;;Assign a state variable to identify NETs that NOT interact with Salmonella
    ask NETs with[NETInteractWithSalmonella = 1 and not any? Salmonellas-here with[salmonellaInteractWithNET = 1]]
    [
      set NETInteractWithSalmonella 0
    ]
  ]
end

to salmonellaDieBecauseOtherChemicalsReleaseByMastCellSubRoutine
  if (counter != 0)
  [
    ask Salmonellas with [salmonellaBindToMastCell = 1]
    [
      set salmonellaDieInduceByMastCellAt? salmonellaDieInduceByMastCellAt? + 1
    ]

    ask Salmonellas with[salmonellaBindToMastCell = 1 and salmonellaDieInduceByMastCellAt? >= 3]
    [
      die
    ]

    ;;Assign a state variable to identify mast cells that NOT interact with salmonella
    ask MastCells with[mastCellInteractWithSalmonella = 1 and not any? Salmonellas-here with[salmonellaBindToMastCell = 1]]
    [
      set mastCellInteractWithSalmonella 0
      set mastCellProduceTNFAlphaBySalmonella 0
    ]
  ]
end
;;--------------------------------------------------------------------------------------------------------------------------------------------

;;-------------------Behaviors of Kupffer Cell in liver inflammation--------------------------------------------------------------------------
to kupfferCellKillBySalmonellaSubRoutine
  if (counter != 0)
  [
    ask KupfferCells with [kupfferCellKillBySalmonella = 1]
    [
      set kupfferCellDieInduceBySalmonellaAt? kupfferCellDieInduceBySalmonellaAt? + 1
    ]

    ask KupfferCells with [kupfferCellKillBySalmonella = 1 and kupfferCellDieInduceBySalmonellaAt? >= (lowerTimeOfKupfferCellKillBySalmonella - 2) + random ((upperTimeOfKupfferCellKillBySalmonella - 8) - (lowerTimeOfKupfferCellKillBySalmonella - 2))]
    [
      die
    ]

    ;;release Salmonella from dead kupffer cells
    ask Salmonellas with [salmonellaReplicateWithinKupfferCell = 1 and not any? KupfferCells-here with [kupfferCellKillBySalmonella = 1]]
    [
      set salmonellaNewlyReleasedFromKupfferCell 1
      set salmonellaReplicateWithinKupfferCell 0
    ]

    ;;Release IL-10 from dead kupffer cells
    ask IL-10s with[IL10InteractWithKupfferCell = 1 and not any? KupfferCells-here with[kupfferCellInteractWithIL10 = 1]]
    [
      set IL10InteractWithKupfferCell 0
      set IL10BindToKupfferCell 0
    ]

    ;;Assign a state variable to identify CD8 T cells NOT interact with MDMIs that phagocytize Salmonella
    ask CD8TCells with[CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 1 and not any? KupfferCells-here with[KupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 1]]
    [
      set CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella 0
    ]
  ]
end

to kupfferCellProduceTNFAlphaInteractWithSalmonellaOrHepatocyteDebrisOrActivatedNeutrophilSubRoutine
  if (counter != 0)
  [
    if (counter <= 3)
    [
      set maximumReleaseRateOfTNFAlphaByKupfferCellPerHour maximumReleaseRateOfTNFAlphaFromKupfferCellPerHourFrom0To3
    ]

    if (counter > 3 and counter <= 6)
    [
      set maximumReleaseRateOfTNFAlphaByKupfferCellPerHour maximumReleaseRateOfTNFAlphaFromKupfferCellPerHourFrom3To6
    ]

    if (counter > 6 and counter <= 10)
    [
      set maximumReleaseRateOfTNFAlphaByKupfferCellPerHour maximumReleaseRateOfTNFAlphaFromKupfferCellPerHourFrom6To10
    ]

    if any? KupfferCells with[((kupfferCellInteractWithSalmonella = 1 and kupfferCellKillBySalmonella = 0) or kupfferCellPhagocytizeHepatocyteDebris = 1 or kupfferCellInteractWithActivatedNeutrophilInLiverSinusoid = 1) and kupfferCellProduceTNFAlpha = 0 and kupfferCellInteractWithIL10 = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and kupfferCellInteractWithCRPTypeComplex = 0]
    [
      let TNFAlphaMaxReleaseRate maximumReleaseRateOfTNFAlphaByKupfferCellPerHour
      let TNFAlphaReleaseRate (TNFAlphaMaxReleaseRate * count KupfferCells with[((kupfferCellInteractWithSalmonella = 1 and kupfferCellKillBySalmonella = 0) or kupfferCellPhagocytizeHepatocyteDebris = 1 or kupfferCellInteractWithActivatedNeutrophilInLiverSinusoid = 1) and kupfferCellProduceTNFAlpha = 0 and kupfferCellInteractWithIL10 = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and kupfferCellInteractWithCRPTypeComplex = 0])/(10000 + count KupfferCells with[((kupfferCellInteractWithSalmonella = 1 and kupfferCellKillBySalmonella = 0) or kupfferCellPhagocytizeHepatocyteDebris = 1 or kupfferCellInteractWithActivatedNeutrophilInLiverSinusoid = 1) and kupfferCellProduceTNFAlpha = 0 and kupfferCellInteractWithIL10 = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and kupfferCellInteractWithCRPTypeComplex = 0])
      set TNFAlphaReleaseAmountByKupfferCellPerLoop TNFAlphaReleaseAmountByKupfferCellPerLoop + TNFAlphaReleaseRate * count KupfferCells with[((kupfferCellInteractWithSalmonella = 1 and kupfferCellKillBySalmonella = 0) or kupfferCellPhagocytizeHepatocyteDebris = 1 or kupfferCellInteractWithActivatedNeutrophilInLiverSinusoid = 1) and kupfferCellProduceTNFAlpha = 0 and kupfferCellInteractWithIL10 = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and kupfferCellInteractWithCRPTypeComplex = 0] / amountOfTNFAlphaBeingRepresentedByOneAgent
      set test1 TNFAlphaReleaseAmountByKupfferCellPerLoop
      if (TNFAlphaReleaseAmountByKupfferCellPerLoop >= 1)
      [
        ask one-of KupfferCells with[((kupfferCellInteractWithSalmonella = 1 and kupfferCellKillBySalmonella = 0) or kupfferCellPhagocytizeHepatocyteDebris = 1 or kupfferCellInteractWithActivatedNeutrophilInLiverSinusoid = 1) and kupfferCellProduceTNFAlpha = 0 and kupfferCellInteractWithIL10 = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and kupfferCellInteractWithCRPTypeComplex = 0]
        [
          hatch TNFAlphaReleaseAmountByKupfferCellPerLoop
          [
            set breed TNF-as
            set size 0.7 * patch-size
            set color 45
            set shape "TNF-a"
          ]
          set kupfferCellProduceTNFAlpha 1
        ]

        set TNFAlphaReleaseAmountByKupfferCellPerLoop 0

        ask KupfferCells with[((kupfferCellInteractWithSalmonella = 1 and kupfferCellKillBySalmonella = 0) or kupfferCellPhagocytizeHepatocyteDebris = 1 or kupfferCellInteractWithActivatedNeutrophilInLiverSinusoid = 1) and kupfferCellProduceTNFAlpha = 0 and kupfferCellInteractWithIL10 = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and kupfferCellInteractWithCRPTypeComplex = 0]
        [
          set kupfferCellProduceTNFAlpha 1
        ]
      ]
    ]
  ]
end

to kupfferCellProduceIL10ByIngestApoptoticHepatocyteSubRoutine
  if (counter != 0)
  [
    if any? KupfferCells with[kupfferCellProduceIL10 = 0 and kupfferCellPhagocytizeHepatocyteDebris = 1 and kupfferCellKillBySalmonella = 0 and kupfferCellInteractWithIL10 = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      let IL10MaxReleaseRate maximumReleaseRateOfIL10ByKupfferCellPerHour
      let IL10ReleaseRate (IL10MaxReleaseRate * count KupfferCells with[kupfferCellProduceIL10 = 0 and kupfferCellPhagocytizeHepatocyteDebris = 1 and kupfferCellKillBySalmonella = 0 and kupfferCellInteractWithIL10 = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0])/(10000 + count KupfferCells with[kupfferCellProduceIL10 = 0 and kupfferCellPhagocytizeHepatocyteDebris = 1 and kupfferCellKillBySalmonella = 0 and kupfferCellInteractWithIL10 = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0])
      set IL10ReleaseAmountByKupfferCellPerLoop IL10ReleaseAmountByKupfferCellPerLoop + IL10ReleaseRate * count KupfferCells with[kupfferCellProduceIL10 = 0 and kupfferCellPhagocytizeHepatocyteDebris = 1 and kupfferCellKillBySalmonella = 0 and kupfferCellInteractWithIL10 = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0] / amountOfIL10BeingRepresentedByOneAgent
      set test10 IL10ReleaseAmountByKupfferCellPerLoop
      if (IL10ReleaseAmountByKupfferCellPerLoop >= 1)
      [
        ask one-of KupfferCells with[kupfferCellProduceIL10 = 0 and kupfferCellPhagocytizeHepatocyteDebris = 1 and kupfferCellKillBySalmonella = 0 and kupfferCellInteractWithIL10 = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
        [
          hatch IL10ReleaseAmountByKupfferCellPerLoop
          [
            set breed IL-10s
            set size 0.7 * patch-size
            set color red
            set shape "IL-10"
          ]
          set kupfferCellProduceIL10 1
        ]

        set IL10ReleaseAmountByKupfferCellPerLoop 0

        ask KupfferCells with[kupfferCellProduceIL10 = 0 and kupfferCellPhagocytizeHepatocyteDebris = 1 and kupfferCellKillBySalmonella = 0 and kupfferCellInteractWithIL10 = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
        [
          set kupfferCellProduceIL10 1
        ]
      ]
    ]
  ]
end

to kupfferCellWhoPhagocytizeSalmonellaUndergoApoptosisByInteractWithCD8TCellSubRoutine
  if (counter != 0)
  [
    ask KupfferCells with[kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 1]
    [
      set kupfferCellWhoPhagocytizeSalmonellaUndergoApoptosisInduceByCD8TCellAt? kupfferCellWhoPhagocytizeSalmonellaUndergoApoptosisInduceByCD8TCellAt? + 1
    ]

    ask KupfferCells with[kupfferCellWhoPhagocytizeSalmonellaUndergoApoptosisInduceByCD8TCellAt? >= timeOfKupfferCellWhoPhagocytizeSalmonellaDieByInteractWithCD8TCell]
    [
      die
    ]

    ;;Release Salmonella from dead kupffer cells
    ask Salmonellas with[salmonellaReplicateWithinKupfferCell = 1 and not any? KupfferCells-here with[KupfferCellInteractWithSalmonella = 1 and kupfferCellKillBySalmonella = 1]]
    [
      set salmonellaReplicateWithinKupfferCell 0
      set salmonellaNewlyReleasedFromKupfferCell 1
    ]

    ;;Release IL-10s from dead kupffer cells
    ask IL-10s with[IL10InteractWithKupfferCell = 1 and not any? KupfferCells-here with[kupfferCellInteractWithIL10 = 1]]
    [
      set IL10InteractWithKupfferCell 0
      set IL10BindToKupfferCell 0
    ]

    ;;Assign a state variable to identify CD4 T cells that NOT interact with kupffer cells who phagocytize Salmonella
    ask CD4TCells with[CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 1 and not any? KupfferCells-here with[kupfferCellWhoPhagocytizeSalmonellaInteractWithCD4TCell = 1]]
    [
      set CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella 0
      set CD4TCellProduceTNFAlpha 0
      set CD4TCellProduceIL10 0
    ]

    ;;Assign a state variable to identify CD8 T cells that NOT interact with kupffer cells that phagocytize Salmonella
    ask CD8TCells with[CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 1 and not any? KupfferCells-here with[kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 1]]
    [
      set CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella 0
    ]
  ]
end
;;------------------------------------------------------------------------------------------------------------------------------------------

;;------------------------------------Behaviors of hepatocyte in liver inflammation---------------------------------------------------------
to hepatocyteBecomeHepatocyteDebrisInducedBySalmonellaSubRoutine
  if (counter != 0)
  [
    ask Hepatocytes with [hepatocyteInteractWithSalmonella = 1]
    [
      set hepatocyteBecomeHepatocyteDebrisInducedBySalmonellaAt? hepatocyteBecomeHepatocyteDebrisInducedBySalmonellaAt? + 1
    ]

    ask Hepatocytes with [hepatocyteBecomeHepatocyteDebrisInducedBySalmonellaAt? >= (timeOfHepatocyteBecomeDebrisLowerLevel + random (timeOfHepatocyteBecomeDebrisUpperLevel - timeOfHepatocyteBecomeDebrisLowerLevel))]
    [
      set breed HepatocyteDebrises
      set shape "hepatocytedebris"
      set size 0.7 * patch-size
      set color 4
    ]

    ;;Release Salmonella from hepatocyte debris
    ask Salmonellas with [salmonellaReplicateWithinHepatocyte = 1 and not any? Hepatocytes-here with [hepatocyteInteractWithSalmonella = 1]]
    [
      set salmonellaReplicateWithinHepatocyte 0
      set salmonellaNewlyReleasedFromHepatocyte 1
    ]

    ;;Release IL-10 from hepatocyte debris
    ask IL-10s with[IL10InteractWithApoptoticHepatocyte = 1 and not any? Hepatocytes-here with[apoptoticHepatocyteInteractWithIL10 = 1]]
    [
      set IL10InteractWithApoptoticHepatocyte 0
      set IL10BindToApoptoticHepatocyte 0
    ]
  ]

  repeat 3600
  [
    ask ApoptoticHepatocyteIL10-links with [end2 = one-of IL-10s with[IL10InteractWithApoptoticHepatocyte = 0]]
    [
      die
    ]
  ]
end

to hepatocyteBecomeHepatocyteDebrisInducedByTNFAlphaSubRoutine
  if (counter != 0)
  [
    repeat (count TNF-as with[ycor > 0 and TNFAlphaInteractWithHepatocyte = 0])
    [
      ask one-of TNF-as with[ycor > 0 and TNFAlphaInteractWithHepatocyte = 0]
      [
        if any? Hepatocytes with[not any? TNF-as-here and ycor > 0 and hepatocyteInteractWithSalmonella = 0 and hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 0]
        [
          move-to min-one-of Hepatocytes with[not any? TNF-as-here and ycor > 0 and hepatocyteInteractWithSalmonella = 0 and hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 0][distance myself]
          set TNFAlphaInteractWithHepatocyte 1
        ]
      ]
    ]

    repeat (count TNF-as with[ycor < 0 and TNFAlphaInteractWithHepatocyte = 0])
    [
      ask one-of TNF-as with[ycor < 0 and TNFAlphaInteractWithHepatocyte = 0]
      [
        if any? Hepatocytes with[not any? TNF-as-here and ycor < 0 and hepatocyteInteractWithSalmonella = 0 and hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 0]
        [
          move-to min-one-of Hepatocytes with[not any? TNF-as-here and ycor < 0 and hepatocyteInteractWithSalmonella = 0 and hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 0][distance myself]
          set TNFAlphaInteractWithHepatocyte 1
        ]
      ]
    ]

    ;;Assign a state variable to identify hepatocytes that interact with TNF-a
    ask Hepatocytes with[any? TNF-as-here with[TNFAlphaInteractWithHepatocyte = 1] and hepatocyteInteractWithSalmonella = 0 and hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 0]
    [
      set hepatocyteBecomeApoptoticByInteractWithTNFAlpha 1
    ]

    ask Hepatocytes with[hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1]
    [
      set hepatocyteBecomeHepatocyteDebrisInducedByTNFAlphaAt? hepatocyteBecomeHepatocyteDebrisInducedByTNFAlphaAt? + 1
    ]

    ask Hepatocytes with[hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1 and hepatocyteBecomeHepatocyteDebrisInducedByTNFAlphaAt? >= (timeOfHepatocyteBecomeDebrisLowerLevel + random (timeOfHepatocyteBecomeDebrisUpperLevel - timeOfHepatocyteBecomeDebrisLowerLevel))]
    [
      die
    ]

    ;;Release TNF-a from dead hepatocytes
    ask TNF-as with[TNFAlphaInteractWithHepatocyte = 1 and not any? Hepatocytes-here with[hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1]]
    [
      set TNFAlphaInteractWithHepatocyte 0
    ]
  ]
end

to hepatocyteReleaseCRPIfAnyMDMIWasDetectedSubRoutine
  if (counter != 0)
  [
    if (any? HMGB-1s or any? MDMIs with[MDMIPhagocytizeSalmonella = 1])
    [
      let CRPMaxReleaseRate maximumReleaseRateOfCRPByHepatocytePerHour
      let CRPReleaseRate (CRPMaxReleaseRate * count Hepatocytes)/(1600000 + count Hepatocytes)
      set CRPReleaseAmountByHepatocytePerLoop CRPReleaseAmountByHepatocytePerLoop + CRPReleaseRate * count Hepatocytes / amountOfCRPBeingRepresentedByOneAgent
      if (CRPReleaseAmountByHepatocytePerLoop >= 1)
      [
        repeat CRPReleaseAmountByHepatocytePerLoop
        [
          ask one-of Hepatocytes
          [
            hatch 1
            [
              set breed CRPs
              set size 0.4 * patch-size
              set color 85
              set shape "CRP"
            ]
          ]
        ]
        set CRPReleaseAmountByHepatocytePerLoop 0
      ]
    ]
  ]
end

to apoptoticHepatocyteKillByNeutrophilSubRoutine
  if (counter != 0)
  [
    ask Hepatocytes with[apoptoticHepatocyteInteractWithNeutrophil = 1]
    [
      set breed HepatocyteDebrises
      set shape "hepatocytedebris"
      set size 0.7 * patch-size
      set color 4
    ]

    ;;Release Salmonella from hepatocyte debris
    ask Salmonellas with [salmonellaReplicateWithinHepatocyte = 1 and not any? Hepatocytes-here with [hepatocyteInteractWithSalmonella = 1]]
    [
      set salmonellaReplicateWithinHepatocyte 0
      set salmonellaNewlyReleasedFromHepatocyte 1
    ]

    ;;Assign a state variable to identify activated neutrophils that NOT interact with apoptotic hepatocytes
    ask ActivatedNeutrophils with[activatedNeutrophilInteractWithApoptoticHepatocyte = 1 and not any? Hepatocytes-here with[apoptoticHepatocyteInteractWithNeutrophil = 1]]
    [
      set activatedNeutrophilInteractWithApoptoticHepatocyte 0
    ]
  ]
end

to apoptoticHepatocyteProduceTNFAlphaSubRoutine
  if (counter != 0)
  [
    if any? Hepatocytes with[(hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteProduceTNFAlpha = 0 and apoptoticHepatocyteInteractWithIL10 = 0]
    [
      let TNFAlphaMaxReleaseRate maximumRateOfTNFAlphaBeingReleasedFromApoptoticHepatocytePerHour
      let TNFAlphaReleaseRate (TNFAlphaMaxReleaseRate * count Hepatocytes with[(hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteProduceTNFAlpha = 0 and apoptoticHepatocyteInteractWithIL10 = 0])/(1600000 + count Hepatocytes with[(hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteProduceTNFAlpha = 0 and apoptoticHepatocyteInteractWithIL10 = 0])
      set TNFAlphaReleaseAmountByApoptoticHepatocyte TNFAlphaReleaseAmountByApoptoticHepatocyte + TNFAlphaReleaseRate * count Hepatocytes with[(hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteProduceTNFAlpha = 0 and apoptoticHepatocyteInteractWithIL10 = 0] / amountOfTNFAlphaBeingRepresentedByOneAgent
      set test2 TNFAlphaReleaseAmountByApoptoticHepatocyte
      if (TNFAlphaReleaseAmountByApoptoticHepatocyte >= 1)
      [
        ask one-of Hepatocytes with[(hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteProduceTNFAlpha = 0 and apoptoticHepatocyteInteractWithIL10 = 0]
        [
          hatch TNFAlphaReleaseAmountByApoptoticHepatocyte
          [
            set breed TNF-as
            set size 0.7 * patch-size
            set color 45
            set shape "TNF-a"
          ]
          set apoptoticHepatocyteProduceTNFAlpha 1
        ]

        set TNFAlphaReleaseAmountByApoptoticHepatocyte 0

        ask Hepatocytes with[(hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteProduceTNFAlpha = 0 and apoptoticHepatocyteInteractWithIL10 = 0]
        [
          set apoptoticHepatocyteProduceTNFAlpha 1
        ]
      ]
    ]
  ]
end

to apoptoticHepatocyteProduceHMGB1SubRoutine
  if (counter != 0)
  [
    if any? Hepatocytes with[(hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteProduceHMGB1 = 0 and apoptoticHepatocyteInteractWithIL10 = 0]
    [
      let HMGB1MaxReleaseRate maximumReleaseRateOfHMGB1ByApoptoticHepatocytePerHour
      let HMGB1ReleaseRate (HMGB1MaxReleaseRate * count Hepatocytes with[(hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteProduceHMGB1 = 0 and apoptoticHepatocyteInteractWithIL10 = 0])/(1600000 + count Hepatocytes with[(hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteProduceHMGB1 = 0 and apoptoticHepatocyteInteractWithIL10 = 0])
      set HMGB1ReleaseAmountByApoptoticHepatocytePerLoop  HMGB1ReleaseAmountByApoptoticHepatocytePerLoop + HMGB1ReleaseRate * count Hepatocytes with[(hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteProduceHMGB1 = 0 and apoptoticHepatocyteInteractWithIL10 = 0] / 2.82E-5
      set test8 HMGB1ReleaseAmountByApoptoticHepatocytePerLoop
      if (HMGB1ReleaseAmountByApoptoticHepatocytePerLoop >= 1)
      [
        ask one-of Hepatocytes with[(hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteProduceHMGB1 = 0 and apoptoticHepatocyteInteractWithIL10 = 0]
        [
          hatch HMGB1ReleaseAmountByApoptoticHepatocytePerLoop
          [
           set breed HMGB-1s
           set size 0.7 * patch-size
           set color 65
           set shape "HMGB-1"
          ]
          set apoptoticHepatocyteProduceHMGB1 1
        ]

        set HMGB1ReleaseAmountByApoptoticHepatocytePerLoop 0

        ask Hepatocytes with[(hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteProduceHMGB1 = 0 and apoptoticHepatocyteInteractWithIL10 = 0]
        [
          set apoptoticHepatocyteProduceHMGB1 1
        ]
      ]
    ]
 ]
end

to hepatocyteRegenerateSubRoutine
  if (counter != 0)
  [
    if (counter <= 98)
    [
      set hepatocyteRegenerationRate hepatocyteReplicationRatePerHourFrom0To98LowerLevel + random-float (hepatocyteReplicationRatePerHourFrom0To98UpperLevel - hepatocyteReplicationRatePerHourFrom0To98LowerLevel)
    ]

    if (counter > 98 and counter <= 135)
    [
      set hepatocyteRegenerationRate hepatocyteReplicationRatePerHourFrom98To135LowerLevel + random-float (hepatocyteReplicationRatePerHourFrom98To135UpperLevel - hepatocyteReplicationRatePerHourFrom0To98LowerLevel)
    ]

    if (counter > 135 and counter <= 173)
    [
      set hepatocyteRegenerationRate hepatocyteReplicationRatePerHourFrom135To173LowerLevel + random-float (hepatocyteReplicationRatePerHourFrom135To173UpperLevel - hepatocyteReplicationRatePerHourFrom0To98LowerLevel)
    ]

    if (counter > 173 and counter <= 247)
    [
      set hepatocyteRegenerationRate hepatocyteReplicationRatePerHourFrom173To247LowerLevel + random-float (hepatocyteReplicationRatePerHourFrom173To247UpperLevel - hepatocyteReplicationRatePerHourFrom0To98LowerLevel)
    ]

    if (counter > 247)
    [
      set hepatocyteRegenerationRate hepatocyteReplicationRatePerHourFrom247ToEndLowerLevel + random-float (hepatocyteReplicationRatePerHourFrom247ToEndUpperLevel - hepatocyteReplicationRatePerHourFrom0To98LowerLevel)
    ]

    set hepatocyteRegeneratedAmountPerLoop hepatocyteRegeneratedAmountPerLoop + hepatocyteRegenerationRate * count Hepatocytes with [hepatocyteInteractWithSalmonella = 0 and hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 0] * (1 - count Hepatocytes with [hepatocyteInteractWithSalmonella = 0 and hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 0] / hepatocyteInitialNumber)
    if (hepatocyteRegeneratedAmountPerLoop >= 1)
    [
      repeat hepatocyteRegeneratedAmountPerLoop
      [
        if any? patches with [pycor > int (max-pycor - max-pycor / 2) or pycor < int (- (max-pycor - max-pycor / 2)) and not any? Hepatocytes-here]
        [
          ask one-of patches with [pycor > int (max-pycor - max-pycor / 2) or pycor < int (- (max-pycor - max-pycor / 2)) and not any? Hepatocytes-here]
          [
            sprout-Hepatocytes 1
            [
              set size 0.77 * patch-size
              set color 29
              if pxcor mod 2 = 0
              [
                set ycor ycor - 0.5
              ]
            ]
          ]
          set counter29 counter29 + 1
        ]
      ]

      set hepatocyteRegeneratedAmountPerLoop hepatocyteRegeneratedAmountPerLoop - counter29
      set counter29 0
    ]
  ]
end
;;-------------------------------------------------------------------------------------------------------------------------------------------

;;----------------------------------Behaviors of CRP in liver inflammation-------------------------------------------------------------------
to CRPBindToSalmonellaSubRoutine
  if (counter != 0)
  [
    ;;CRP move to the site of Salmonella (upper liver sinusoid)
    if any? Salmonellas with[ycor > 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0]
    [
      set amountOfCRPMoveToSalmonellaPerLoopUpperLiver amountOfCRPMoveToSalmonellaPerLoopUpperLiver + percentageOfCRPBindToSalmonellaPerHour * count CRPs with[ycor > 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPMoveToSalmonellaPerLoopUpperLiver >= 1)
      [
        ifelse (amountOfCRPMoveToSalmonellaPerLoopUpperLiver >= count Salmonellas with[ycor > 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0])
        [
          ask n-of (count Salmonellas with[ycor > 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0])CRPs with[ycor > 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of Salmonellas with[ycor > 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0]
            set CRPInteractWithSalmonella 1
          ]

          set amountOfCRPMoveToSalmonellaPerLoopUpperLiver 0
        ]

        [
          ask n-of (amountOfCRPMoveToSalmonellaPerLoopUpperLiver)CRPs with[ycor > 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of Salmonellas with[ycor > 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0]
            set CRPInteractWithSalmonella 1
            set counter39 counter39 + 1
          ]
          set amountOfCRPMoveToSalmonellaPerLoopUpperLiver amountOfCRPMoveToSalmonellaPerLoopUpperLiver - counter39
          set counter39 0
        ]
      ]
    ]

    ;;Assign a state variable to identify Salmonella that interact with CRP (upper liver sinusoid)
    ask Salmonellas with[not any? other Salmonellas-here with[salmonellaInteractWithCRP = 1] and any? CRPs-here with[ycor > 0 and CRPInteractWithSalmonella = 1] and ycor > 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0]
    [
      set salmonellaInteractWithCRP 1
      set salmonellaNewlyReleasedFromKupfferCell 0
      set salmonellaNewlyReleasedFromSECs 0
      set salmonellaNewlyReleasedFromHepatocyte 0
      set salmonellaNewlyReleasedFromMDMI 0
    ]

    ;;CRP move to the site of Salmonella (lower liver sinusoid)
    if any? Salmonellas with[ycor < 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0]
    [
      set amountOfCRPMoveToSalmonellaPerLoopLowerLiver amountOfCRPMoveToSalmonellaPerLoopLowerLiver + percentageOfCRPBindToSalmonellaPerHour * count CRPs with[ycor < 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPMoveToSalmonellaPerLoopLowerLiver >= 1)
      [
        ifelse (amountOfCRPMoveToSalmonellaPerLoopLowerLiver >= count Salmonellas with[ycor < 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0])
        [
          ask n-of (count Salmonellas with[ycor < 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0])CRPs with[ycor < 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of Salmonellas with[ycor < 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0]
            set CRPInteractWithSalmonella 1
          ]

          set amountOfCRPMoveToSalmonellaPerLoopLowerLiver 0
        ]

        [
          ask n-of (amountOfCRPMoveToSalmonellaPerLoopLowerLiver)CRPs with[ycor < 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of Salmonellas with[ycor < 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0]
            set CRPInteractWithSalmonella 1
            set counter40 counter40 + 1
          ]
          set amountOfCRPMoveToSalmonellaPerLoopLowerLiver amountOfCRPMoveToSalmonellaPerLoopLowerLiver - counter40
          set counter40 0
        ]
      ]
    ]

    ;;Assign a state variable to identify Salmonella that interact with CRP (upper liver sinusoid)
    ask Salmonellas with[not any? other Salmonellas-here with[salmonellaInteractWithCRP = 1] and any? CRPs-here with[ycor < 0 and CRPInteractWithSalmonella = 1] and ycor < 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0]
    [
      set salmonellaInteractWithCRP 1
      set salmonellaNewlyReleasedFromKupfferCell 0
      set salmonellaNewlyReleasedFromSECs 0
      set salmonellaNewlyReleasedFromHepatocyte 0
      set salmonellaNewlyReleasedFromMDMI 0
    ]

    ;;CRP bind to Salmonella to form a complex
    repeat count CRPs with[CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 0 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
    [
       if any? CRPs with[CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 0 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
       [
         ask one-of CRPs with[CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 0 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
         [
           create-CRPSalmonella-links-with Salmonellas-here with[salmonellaInteractWithCRP = 1 and salmonellaBindToCRP = 0]
           set CRPBindToSalmonella 1
         ]
       ]

       ask Salmonellas with[salmonellaInteractWithCRP = 1 and salmonellaBindToCRP = 0 and any? CRPs-here with[CRPBindToSalmonella = 1]]
       [
         set salmonellaBindToCRP 1
       ]
    ]

    ask Salmonellas with[salmonellaInteractWithCRP = 1 and salmonellaBindToCRP = 1 and not any? CRPs-here with[CRPInteractWithSalmonella = 1]]
    [
      set salmonellaInteractWithCRP 0
      set salmonellaBindToCRP 0
    ]
  ]
end

to CRPSalmonellaComplexPhagocytizeBykupfferCellSubRoutine
  if (counter != 0)
  [
    if any? KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      ;;CRP-Salmonella complex move to kupffer cells (upper liver sinusoid)
      set amountOfCRPSalmonellaComplexMoveToKupfferCellPerLoopUpperLiver amountOfCRPSalmonellaComplexMoveToKupfferCellPerLoopUpperLiver + percentageOfCRPSalmonellaComplexMoveToKupfferCellPerHour * count CRPs with[ycor > 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPSalmonellaComplexMoveToKupfferCellPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPSalmonellaComplexMoveToKupfferCellPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPSalmonellaComplexPhagocytizeByKupfferCell 1
              set counter41 counter41 + 1
            ]
          ]

          ask KupfferCells with[ycor > 0 and any? CRPs-here with[movedCRP = 1] and not any? other KupfferCells-here with[targetKupfferCell = 1]]
          [
            set targetKupfferCell 1
            set kupfferCellInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of KupfferCells with[ycor > 0 and targetKupfferCell = 1]
              set CRPOpsonizedSalmonellaPhagocytizeByKupfferCell 1
            ]
            set movedCRP 0
          ]

          ask KupfferCells with[ycor > 0 and targetKupfferCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetKupfferCell 0
          ]
        ]

        set amountOfCRPSalmonellaComplexMoveToKupfferCellPerLoopUpperLiver amountOfCRPSalmonellaComplexMoveToKupfferCellPerLoopUpperLiver - counter41
        set counter41 0
      ]
    ]

    if any? KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      ;;CRP-Salmonella complex move to kupffer cells (lower liver sinusoid)
      set amountOfCRPSalmonellaComplexMoveToKupfferCellPerLoopLowerLiver amountOfCRPSalmonellaComplexMoveToKupfferCellPerLoopLowerLiver + percentageOfCRPSalmonellaComplexMoveToKupfferCellPerHour * count CRPs with[ycor < 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPSalmonellaComplexMoveToKupfferCellPerLoopLowerLiver >= 1)
      [
        repeat amountOfCRPSalmonellaComplexMoveToKupfferCellPerLoopLowerLiver
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPSalmonellaComplexPhagocytizeByKupfferCell 1
              set counter42 counter42 + 1
            ]
          ]

          ask KupfferCells with[ycor < 0 and any? CRPs-here with[movedCRP = 1] and not any? other KupfferCells-here with[targetKupfferCell = 1]]
          [
            set targetKupfferCell 1
            set kupfferCellInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of KupfferCells with[ycor < 0 and targetKupfferCell = 1]
              set CRPOpsonizedSalmonellaPhagocytizeByKupfferCell 1
            ]
            set movedCRP 0
          ]

          ask KupfferCells with[ycor < 0 and targetKupfferCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetKupfferCell 0
          ]
        ]

        set amountOfCRPSalmonellaComplexMoveToKupfferCellPerLoopLowerLiver amountOfCRPSalmonellaComplexMoveToKupfferCellPerLoopLowerLiver - counter42
        set counter42 0
      ]
    ]

    ;;CRP-Salmonella complex are phagocytized by kupffer cells
    ask CRPs with[CRPSalmonellaComplexPhagocytizeByKupfferCell = 1]
    [
      set CRPSalmonellaComplexPhagocytizeByKupfferCellDieAt? CRPSalmonellaComplexPhagocytizeByKupfferCellDieAt? + 1
    ]

    ask CRPs with[CRPSalmonellaComplexPhagocytizeByKupfferCellDieAt? >= timeOfSalmonellaCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ;;Assign a state variable to identify kupffer cells that NOT interact with CRPs
    ask KupfferCells with[kupfferCellInteractWithCRPTypeComplex = 1 and not any? CRPs-here with[CRPSalmonellaComplexPhagocytizeByKupfferCell = 1]]
    [
      set kupfferCellInteractWithCRPTypeComplex 0
    ]
  ]
end

to CRPSalmonellaComplexPhagocytizeByMastCellSubRoutine
  if (counter != 0)
  [
    ;;CRP-Salmonella complex move to mast cells (upper liver sinusoid)
    if any? MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
    [
      set amountOfCRPSalmonellaComplexMoveToMastCellPerLoopUpperLiver amountOfCRPSalmonellaComplexMoveToMastCellPerLoopUpperLiver + percentageOfCRPSalmonellaComplexMoveToMastCellPerHour * count CRPs with[ycor > 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPSalmonellaComplexMoveToMastCellPerLoopUpperLiver >= 1)
      [
        repeat (percentageOfCRPSalmonellaComplexMoveToMastCellPerHour * count CRPs with[ycor > 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0])
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
            [
              set movedCRP 1
              move-to one-of MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
              set CRPSalmonellaComplexPhagocytizeByMastCell 1
              set counter43 counter43 + 1
            ]
          ]

          ask MastCells with[ycor > 0 and any? CRPs-here with[movedCRP = 1] and not any? other MastCells-here with[targetMastCell = 1]]
          [
            set targetMastCell 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MastCells with[ycor > 0 and targetMastCell = 1]
              set CRPOpsonizedSalmonellaPhagocytizeByMastCell 1
            ]
            set movedCRP 0
          ]

          ask MastCells with[ycor > 0 and targetMastCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMastCell 0
          ]
        ]

        set amountOfCRPSalmonellaComplexMoveToMastCellPerLoopUpperLiver amountOfCRPSalmonellaComplexMoveToMastCellPerLoopUpperLiver - counter43
        set counter43 0
      ]
    ]

    ;;CRP-Salmonella complex move to mast cells (lower liver sinusoid)
    if any? MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
    [
      set amountOfCRPSalmonellaComplexMoveToMastCellPerLoopLowerLiver amountOfCRPSalmonellaComplexMoveToMastCellPerLoopLowerLiver + percentageOfCRPSalmonellaComplexMoveToMastCellPerHour * count CRPs with[ycor < 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPSalmonellaComplexMoveToMastCellPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPSalmonellaComplexMoveToMastCellPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
            [
              set movedCRP 1
              move-to one-of MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
              set CRPSalmonellaComplexPhagocytizeByMastCell 1
              set counter44 counter44 + 1
            ]
          ]

          ask MastCells with[ycor < 0 and any? CRPs-here with[movedCRP = 1] and not any? other MastCells-here with[targetMastCell = 1]]
          [
            set targetMastCell 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MastCells with[ycor < 0 and targetMastCell = 1]
              set CRPOpsonizedSalmonellaPhagocytizeByMastCell 1
            ]
            set movedCRP 0
          ]

          ask MastCells with[ycor < 0 and targetMastCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMastCell 0
          ]
        ]

        set amountOfCRPSalmonellaComplexMoveToMastCellPerLoopLowerLiver amountOfCRPSalmonellaComplexMoveToMastCellPerLoopLowerLiver -  counter44
        set counter44 0
      ]
    ]

    ;;CRP-Salmonella complex are phagocytized by mast cells
    ask CRPs with[CRPSalmonellaComplexPhagocytizeByMastCell = 1]
    [
      set CRPSalmonellaComplexPhagocytizeByMastCellDieAt? CRPSalmonellaComplexPhagocytizeByMastCellDieAt? + 1
    ]

    ask CRPs with[CRPSalmonellaComplexPhagocytizeByMastCellDieAt? >= timeOfSalmonellaCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]
  ]
end

to CRPSalmonellaComplexPhagocytizeByNeutrophilSubRoutine
  if (counter != 0)
  [
    ;;CRP-Salmonella complex move to neutrophils (upper liver sinusoid)
    if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPSalmonellaComplexMoveToNeutrophilPerLoopUpperLiver amountOfCRPSalmonellaComplexMoveToNeutrophilPerLoopUpperLiver + percentageOfCRPSalmonellaComplexMoveToNeutrophilPerHour * count CRPs with[ycor > 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPSalmonellaComplexMoveToNeutrophilPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPSalmonellaComplexMoveToNeutrophilPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPSalmonellaComplexPhagocytizeByNeutrophil 1
              set counter45 counter45 + 1
            ]
          ]

          ask ActivatedNeutrophils with[ycor > 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 1
            set activatedNeutrophilInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of ActivatedNeutrophils with[ycor > 0 and targetNeutrophil = 1]
              set CRPOpsonizedSalmonellaPhagocytizeByNeutrophil 1
            ]
            set movedCRP 0
          ]

          ask ActivatedNeutrophils with[ycor > 0 and targetNeutrophil = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 0
          ]
        ]

        set amountOfCRPSalmonellaComplexMoveToNeutrophilPerLoopUpperLiver amountOfCRPSalmonellaComplexMoveToNeutrophilPerLoopUpperLiver - counter45
        set counter45 0
      ]
    ]

    ;;CRP-Salmonella complex move to neutrophils (lower liver sinusoid)
    if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPSalmonellaComplexMoveToNeutrophilPerLoopLowerLiver amountOfCRPSalmonellaComplexMoveToNeutrophilPerLoopLowerLiver + percentageOfCRPSalmonellaComplexMoveToNeutrophilPerHour * count CRPs with[ycor < 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPSalmonellaComplexMoveToNeutrophilPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPSalmonellaComplexMoveToNeutrophilPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPSalmonellaComplexPhagocytizeByNeutrophil 1
              set counter46 counter46 + 1
            ]
          ]

          ask ActivatedNeutrophils with[ycor < 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 1
            set activatedNeutrophilInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of ActivatedNeutrophils with[ycor < 0 and targetNeutrophil = 1]
              set CRPOpsonizedSalmonellaPhagocytizeByNeutrophil 1
            ]
            set movedCRP 0
          ]

          ask ActivatedNeutrophils with[ycor < 0 and targetNeutrophil = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 0
          ]
        ]

        set amountOfCRPSalmonellaComplexMoveToNeutrophilPerLoopLowerLiver amountOfCRPSalmonellaComplexMoveToNeutrophilPerLoopLowerLiver - counter46
        set counter46 0
      ]
    ]

    ;;CRP-Salmonella complex are phagocytized by neutrophils
    ask CRPs with[CRPSalmonellaComplexPhagocytizeByNeutrophil = 1]
    [
      set CRPSalmonellaComplexPhagocytizeByNeutrophilDieAt? CRPSalmonellaComplexPhagocytizeByNeutrophilDieAt? + 1
    ]

    ask CRPs with[CRPSalmonellaComplexPhagocytizeByNeutrophilDieAt? >= timeOfSalmonellaCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ;;Assign a state variable to identify activated neutrophils that NOT interact with CRPs
    ask ActivatedNeutrophils with[activatedNeutrophilInteractWithCRPTypeComplex = 1 and not any? CRPs-here with[CRPSalmonellaComplexPhagocytizeByNeutrophil = 1]]
    [
      set activatedNeutrophilInteractWithCRPTypeComplex 0
    ]
  ]
end

to CRPSalmonellaComplexPhagocytizeByMDMISubRoutine
 if (counter != 0)
  [
    ;;CRP-Salmonella complex move to MDMIs (upper liver sinusoid)
    if any? MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPSalmonellaComplexMoveToMDMIPerLoopUpperLiver amountOfCRPSalmonellaComplexMoveToMDMIPerLoopUpperLiver + percentageOfCRPSalmonellaComplexMoveToMDMIPerHour * count CRPs with[ycor > 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPSalmonellaComplexMoveToMDMIPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPSalmonellaComplexMoveToMDMIPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPSalmonellaComplexPhagocytizeByMDMI 1
              set counter47 counter47 + 1
            ]
          ]

          ask MDMIs with[ycor > 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 1
            set MDMIInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIs with[ycor > 0 and targetMDMI = 1]
              set CRPOpsonizedSalmonellaPhagocytizeByMDMI 1
            ]
            set movedCRP 0
          ]

          ask MDMIs with[ycor > 0 and targetMDMI = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 0
          ]
        ]

        set amountOfCRPSalmonellaComplexMoveToMDMIPerLoopUpperLiver amountOfCRPSalmonellaComplexMoveToMDMIPerLoopUpperLiver - counter47
        set counter47 0
      ]
    ]

    ;;CRP-Salmonella complex move to MDMIs (lower liver sinusoid)
    if any? MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPSalmonellaComplexMoveToMDMIPerLoopLowerLiver amountOfCRPSalmonellaComplexMoveToMDMIPerLoopLowerLiver + percentageOfCRPSalmonellaComplexMoveToMDMIPerHour * count CRPs with[ycor < 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPSalmonellaComplexMoveToMDMIPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPSalmonellaComplexMoveToMDMIPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPSalmonellaComplexPhagocytizeByMDMI 1
              set counter48 counter48 + 1
            ]
          ]

          ask MDMIs with[ycor < 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 1
            set MDMIInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIs with[ycor < 0 and targetMDMI = 1]
              set CRPOpsonizedSalmonellaPhagocytizeByMDMI 1
            ]
            set movedCRP 0
          ]

          ask MDMIs with[ycor < 0 and targetMDMI = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 0
          ]
        ]

        set amountOfCRPSalmonellaComplexMoveToMDMIPerLoopLowerLiver amountOfCRPSalmonellaComplexMoveToMDMIPerLoopLowerLiver - counter48
        set counter48 0
      ]
    ]
    ;;CRP-Salmonella complex are phagocytized by MDMIs
    ask CRPs with[CRPSalmonellaComplexPhagocytizeByMDMI = 1]
    [
      set CRPSalmonellaComplexPhagocytizeByMDMIDieAt? CRPSalmonellaComplexPhagocytizeByMDMIDieAt? + 1
    ]

    ask CRPs with[CRPSalmonellaComplexPhagocytizeByMDMIDieAt? >= timeOfSalmonellaCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ;;Assign a state variable to identify MDMIs that NOT interact with CRPs
    ask MDMIs with[MDMIInteractWithCRPTypeComplex = 1 and not any? CRPs-here with[CRPSalmonellaComplexPhagocytizeByMDMI = 1]]
    [
      set MDMIInteractWithCRPTypeComplex 0
      set MDMIProduceTNFAlpha 0
    ]
  ]
end

to CRPSalmonellaComplexPhagocytizeByMDMIISubRoutine
  if (counter != 0)
  [
    ;;CRP-Salmonella complex move to MDMIIs (upper liver sinusoid)
    if any? MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
    [
      set amountOfCRPSalmonellaComplexMoveToMDMIIPerLoopUpperLiver amountOfCRPSalmonellaComplexMoveToMDMIIPerLoopUpperLiver + percentageOfCRPSalmonellaComplexMoveToMDMIIPerHour * count CRPs with[ycor > 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPSalmonellaComplexMoveToMDMIIPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPSalmonellaComplexMoveToMDMIIPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
            [
              set movedCRP 1
              move-to one-of MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
              set CRPSalmonellaComplexPhagocytizeByMDMII 1
              set counter49 counter49 + 1
            ]
          ]

          ask MDMIIs with[ycor > 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIIs with[ycor > 0 and targetMDMII = 1]
              set CRPOpsonizedSalmonellaPhagocytizeByMDMII 1
            ]
            set movedCRP 0
          ]

          ask MDMIIs with[ycor > 0 and targetMDMII = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 0
          ]
        ]

        set amountOfCRPSalmonellaComplexMoveToMDMIIPerLoopUpperLiver amountOfCRPSalmonellaComplexMoveToMDMIIPerLoopUpperLiver - counter49
        set counter49 0
      ]
    ]

    ;;CRP-Salmonella complex move to MDMIIs (lower liver sinusoid)
    if any? MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
    [
      set amountOfCRPSalmonellaComplexMoveToMDMIIPerLoopLowerLiver amountOfCRPSalmonellaComplexMoveToMDMIIPerLoopLowerLiver + percentageOfCRPSalmonellaComplexMoveToMDMIIPerHour * count CRPs with[ycor < 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPSalmonellaComplexMoveToMDMIIPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPSalmonellaComplexMoveToMDMIIPerLoopLowerLiver)
        [
          if any? CRPs with[ycor < 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            ask one-of CRPs with[ycor < 0 and CRPInteractWithSalmonella = 1 and CRPBindToSalmonella = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
            [
              if any? MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
              [
                set movedCRP 1
                move-to one-of MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
                set CRPSalmonellaComplexPhagocytizeByMDMII 1
                set counter50 counter50 + 1
              ]
            ]
          ]

          ask MDMIIs with[ycor < 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIIs with[ycor < 0 and targetMDMII = 1]
              set CRPOpsonizedSalmonellaPhagocytizeByMDMII 1
            ]
            set movedCRP 0
          ]

          ask MDMIIs with[ycor < 0 and targetMDMII = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 0
          ]
        ]

        set amountOfCRPSalmonellaComplexMoveToMDMIIPerLoopLowerLiver amountOfCRPSalmonellaComplexMoveToMDMIIPerLoopLowerLiver - counter50
        set counter50 0
      ]
    ]

    ;;CRP-Salmonella complex are phagocytized by MDMIIs
    ask CRPs with[CRPSalmonellaComplexPhagocytizeByMDMII = 1]
    [
      set CRPSalmonellaComplexPhagocytizeByMDMIIDieAt? CRPSalmonellaComplexPhagocytizeByMDMIIDieAt? + 1
    ]

    ask CRPs with[CRPSalmonellaComplexPhagocytizeByMDMIIDieAt? >= timeOfSalmonellaCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]
  ]
end

to CRPBindToApoptoticKupfferCellSubRoutine
  if (counter != 0)
  [
    ;;CRP move to the site of apoptotic kupffer cells (upper liver sinusoid)
    if any? KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 1 and apoptoticKupfferCellInteractWithCRP = 0]
    [
      set amountOfCRPBindToApoptoticKupfferCellPerLoopUpperLiver amountOfCRPBindToApoptoticKupfferCellPerLoopUpperLiver + percentageOfCRPBindToApoptoticKupfferCellPerHour * count CRPs with[ycor > 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPBindToApoptoticKupfferCellPerLoopUpperLiver >= 1)
      [
        ifelse (amountOfCRPBindToApoptoticKupfferCellPerLoopUpperLiver >= count KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 1 and apoptoticKupfferCellInteractWithCRP = 0])
        [
          ask n-of (count KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 1 and apoptoticKupfferCellInteractWithCRP = 0])CRPs with[ycor > 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 1 and apoptoticKupfferCellInteractWithCRP = 0]
            set CRPInteractWithApoptoticKupfferCell 1
          ]

          set amountOfCRPBindToApoptoticKupfferCellPerLoopUpperLiver 0
        ]

        [
          ask n-of (amountOfCRPBindToApoptoticKupfferCellPerLoopUpperLiver)CRPs with[ycor > 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 1 and apoptoticKupfferCellInteractWithCRP = 0]
            set CRPInteractWithApoptoticKupfferCell 1
            set counter51 counter51 + 1
          ]
          set amountOfCRPBindToApoptoticKupfferCellPerLoopUpperLiver amountOfCRPBindToApoptoticKupfferCellPerLoopUpperLiver - counter51
          set counter51 0
        ]
      ]
    ]

    ;;Assign a state variable to identify apoptotic kupffer cells that interact with CRP
    ask KupfferCells with[not any? other KupfferCells-here with[apoptoticKupfferCellInteractWithCRP = 1] and any? CRPs-here with[ycor > 0 and CRPInteractWithApoptoticKupfferCell = 1] and ycor > 0 and kupfferCellUndergoApoptosisByNature = 1 and apoptoticKupfferCellInteractWithCRP = 0]
    [
      set apoptoticKupfferCellInteractWithCRP 1
    ]

    ;;CRP move to the site of apoptotic kupffer cells (lower liver sinusoid)
    if any? KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 1 and apoptoticKupfferCellInteractWithCRP = 0]
    [
      set amountOfCRPBindToApoptoticKupfferCellPerLoopLowerLiver amountOfCRPBindToApoptoticKupfferCellPerLoopLowerLiver + percentageOfCRPBindToApoptoticKupfferCellPerHour * count CRPs with[ycor < 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPBindToApoptoticKupfferCellPerLoopLowerLiver >= 1)
      [
        ifelse (amountOfCRPBindToApoptoticKupfferCellPerLoopLowerLiver >= count KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 1 and apoptoticKupfferCellInteractWithCRP = 0])
        [
          ask n-of (count KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 1 and apoptoticKupfferCellInteractWithCRP = 0])CRPs with[ycor < 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 1 and apoptoticKupfferCellInteractWithCRP = 0]
            set CRPInteractWithApoptoticKupfferCell 1
          ]

          set amountOfCRPBindToApoptoticKupfferCellPerLoopLowerLiver 0
        ]

        [
          ask n-of (amountOfCRPBindToApoptoticKupfferCellPerLoopLowerLiver)CRPs with[ycor < 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 1 and apoptoticKupfferCellInteractWithCRP = 0]
            set CRPInteractWithApoptoticKupfferCell 1
            set counter52 counter52 + 1
          ]
          set amountOfCRPBindToApoptoticKupfferCellPerLoopLowerLiver amountOfCRPBindToApoptoticKupfferCellPerLoopLowerLiver - counter52
          set counter52 0
        ]
      ]
    ]

    ;;Assign a state variable to identify apoptotic kupffer cells that interact with CRP
    ask KupfferCells with[not any? other KupfferCells-here with[apoptoticKupfferCellInteractWithCRP = 1] and any? CRPs-here with[ycor < 0 and CRPInteractWithApoptoticKupfferCell = 1] and ycor < 0 and kupfferCellUndergoApoptosisByNature = 1 and apoptoticKupfferCellInteractWithCRP = 0]
    [
      set apoptoticKupfferCellInteractWithCRP 1
    ]

    ;;CRP bind to apoptotic kupffer cells to form a complex
    repeat count CRPs with[CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
    [
       if any? CRPs with[CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
       [
         ask one-of CRPs with[CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
         [
           create-CRPApoptoticKupfferCell-links-with KupfferCells-here with[apoptoticKupfferCellInteractWithCRP = 1 and apoptoticKupfferCellBindToCRP = 0]
           set CRPBindToApoptoticKupfferCell 1
         ]
       ]

       ask KupfferCells with[apoptoticKupfferCellInteractWithCRP = 1 and apoptoticKupfferCellBindToCRP = 0 and any? CRPs-here with[CRPBindToApoptoticKupfferCell = 1]]
       [
         set apoptoticKupfferCellBindToCRP 1
       ]
    ]

    ;;Avoid to assign a state variable to apoptotic kupffer cells that NOT interact with CRP
    ask KupfferCells with[apoptoticKupfferCellInteractWithCRP = 1 and apoptoticKupfferCellBindToCRP = 1 and not any? CRPs-here with[CRPInteractWithApoptoticKupfferCell = 1]]
    [
      set apoptoticKupfferCellInteractWithCRP 0
      set apoptoticKupfferCellBindToCRP 0
    ]
  ]
end

to CRPOpsonizedApoptoticKupfferCellPhagocytizeByKupfferCellSubRoutine
  if (counter != 0)
  [
    ;;CRP-apoptotic-kupffer-cell complex move to kupffer cells (upper liver sinusoid)
    if any? KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticKupfferCellComplexMoveToKupfferCellPerLoopUpperLiver amountOfCRPApoptoticKupfferCellComplexMoveToKupfferCellPerLoopUpperLiver + percentageOfCRPApoptoticKupfferCellComplexMoveToKupfferCellPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticKupfferCellComplexMoveToKupfferCellPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticKupfferCellComplexMoveToKupfferCellPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticKupfferCellPhagocytizeByKupfferCell 1
              set counter53 counter53 + 1
            ]
          ]

          ask KupfferCells with[ycor > 0 and any? CRPs-here with[movedCRP = 1] and not any? other KupfferCells-here with[targetKupfferCell = 1]]
          [
            set targetKupfferCell 1
            set kupfferCellInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of KupfferCells with[ycor > 0 and targetKupfferCell = 1]
              set CRPOpsonizedApoptoticKupfferCellPhagocytizeByKupfferCell 1
            ]
            set movedCRP 0
          ]

          ask KupfferCells with[ycor > 0 and targetKupfferCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetKupfferCell 0
          ]
        ]

        set amountOfCRPApoptoticKupfferCellComplexMoveToKupfferCellPerLoopUpperLiver amountOfCRPApoptoticKupfferCellComplexMoveToKupfferCellPerLoopUpperLiver - counter53
        set counter53 0
      ]
    ]

    ;;CRP-apoptotic-kupffer-cell complex move to kupffer cells (lower liver sinusoid)
    if any? KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticKupfferCellComplexMoveToKupfferCellPerLoopLowerLiver amountOfCRPApoptoticKupfferCellComplexMoveToKupfferCellPerLoopLowerLiver + percentageOfCRPApoptoticKupfferCellComplexMoveToKupfferCellPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticKupfferCellComplexMoveToKupfferCellPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticKupfferCellComplexMoveToKupfferCellPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticKupfferCellPhagocytizeByKupfferCell 1
              set counter54 counter54 + 1
            ]
          ]

          ask KupfferCells with[ycor < 0 and any? CRPs-here with[movedCRP = 1] and not any? other KupfferCells-here with[targetKupfferCell = 1]]
          [
            set targetKupfferCell 1
            set kupfferCellInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of KupfferCells with[ycor < 0 and targetKupfferCell = 1]
              set CRPOpsonizedApoptoticKupfferCellPhagocytizeByKupfferCell 1
            ]
            set movedCRP 0
          ]

          ask KupfferCells with[ycor < 0 and targetKupfferCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetKupfferCell 0
          ]
        ]

        set amountOfCRPApoptoticKupfferCellComplexMoveToKupfferCellPerLoopLowerLiver amountOfCRPApoptoticKupfferCellComplexMoveToKupfferCellPerLoopLowerLiver - counter54
        set counter54 0
      ]
    ]

    ;;CRP-apoptotic-kupffer-cell complex are phagocytized by kupffer cells
    ask CRPs with[CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 1]
    [
      set CRPApoptoticKupfferCellPhagocytizeByKupfferCellDieAt? CRPApoptoticKupfferCellPhagocytizeByKupfferCellDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticKupfferCellPhagocytizeByKupfferCellDieAt? >= timeOfApoptoticKupfferCellCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ;;Assign a state variable to identify kupffer cells that NOT interact with CRPs
    ask KupfferCells with[kupfferCellInteractWithCRPTypeComplex = 1 and not any? CRPs-here with[CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 1]]
    [
      set kupfferCellInteractWithCRPTypeComplex 0
    ]
  ]
end

to CRPOpsonizedApoptoticKupfferCellPhagocytizeByMastCellSubRoutine
  if (counter != 0)
  [
    ;;CRP-apoptotic-kupffer-cell complex move to mast cells (upper liver sinusoid)
    if any? MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
    [
      set amountOfCRPApoptoticKupfferCellComplexMoveToMastCellPerLoopUpperLiver amountOfCRPApoptoticKupfferCellComplexMoveToMastCellPerLoopUpperLiver + percentageOfCRPApoptoticKupfferCellComplexMoveToMastCellPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticKupfferCellComplexMoveToMastCellPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticKupfferCellComplexMoveToMastCellPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
            [
              set movedCRP 1
              move-to one-of MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
              set CRPApoptoticKupfferCellPhagocytizeByMastCell 1
              set counter55 counter55 + 1
            ]
          ]

          ask MastCells with[ycor > 0 and any? CRPs-here with[movedCRP = 1] and not any? other MastCells-here with[targetMastCell = 1]]
          [
            set targetMastCell 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MastCells with[ycor > 0 and targetMastCell = 1]
              set CRPOpsonizedApoptoticKupfferCellPhagocytizeByMastCell 1
            ]
            set movedCRP 0
          ]

          ask MastCells with[ycor > 0 and targetMastCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMastCell 0
          ]
        ]

        set amountOfCRPApoptoticKupfferCellComplexMoveToMastCellPerLoopUpperLiver amountOfCRPApoptoticKupfferCellComplexMoveToMastCellPerLoopUpperLiver - counter55
        set counter55 0
      ]
    ]

    ;;CRP-apoptotic-kupffer-cell complex move to mast cells (lower liver sinusoid)
    if any? MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
    [
      set amountOfCRPApoptoticKupfferCellComplexMoveToMastCellPerLoopLowerLiver amountOfCRPApoptoticKupfferCellComplexMoveToMastCellPerLoopLowerLiver + percentageOfCRPApoptoticKupfferCellComplexMoveToMastCellPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticKupfferCellComplexMoveToMastCellPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticKupfferCellComplexMoveToMastCellPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
            [
              set movedCRP 1
              move-to one-of MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
              set CRPApoptoticKupfferCellPhagocytizeByMastCell 1
              set counter56 counter56 + 1
            ]
          ]

          ask MastCells with[ycor < 0 and any? CRPs-here with[movedCRP = 1] and not any? other MastCells-here with[targetMastCell = 1]]
          [
            set targetMastCell 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MastCells with[ycor < 0 and targetMastCell = 1]
              set CRPOpsonizedApoptoticKupfferCellPhagocytizeByMastCell 1
            ]
            set movedCRP 0
          ]

          ask MastCells with[ycor < 0 and targetMastCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMastCell 0
          ]
        ]

        set amountOfCRPApoptoticKupfferCellComplexMoveToMastCellPerLoopLowerLiver amountOfCRPApoptoticKupfferCellComplexMoveToMastCellPerLoopLowerLiver - counter56
        set counter56 0
      ]
    ]

    ;;CRP-apoptotic-kupffer-cell complex are phagocytized by mast cells
    ask CRPs with[CRPApoptoticKupfferCellPhagocytizeByMastCell = 1]
    [
      set CRPApoptoticKupfferCellPhagocytizeByMastCellDieAt? CRPApoptoticKupfferCellPhagocytizeByMastCellDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticKupfferCellPhagocytizeByMastCellDieAt? >= timeOfApoptoticKupfferCellCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]
  ]
end

to CRPOpsonizedApoptoticKupfferCellPhagocytizeByNeutrophilSubRoutine
  if (counter != 0)
  [
    ;;CRP-apoptotic-kupffer-cell complex move to neutrophils (upper liver sinusoid)
    if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticKupfferCellMoveToNeutrophilPerLoopUpperLiver amountOfCRPApoptoticKupfferCellMoveToNeutrophilPerLoopUpperLiver + percentageOfCRPApoptoticKupfferCellMoveToNeutrophilPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticKupfferCellMoveToNeutrophilPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticKupfferCellMoveToNeutrophilPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticKupfferCellPhagocytizeByNeutrophil 1
              set counter57 counter57 + 1
            ]
          ]

          ask ActivatedNeutrophils with[ycor > 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 1
            set activatedNeutrophilInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of ActivatedNeutrophils with[ycor > 0 and targetNeutrophil = 1]
              set CRPOpsonizedApoptoticKupfferCellPhagocytizeByNeutrophil 1
            ]
            set movedCRP 0
          ]

          ask ActivatedNeutrophils with[ycor > 0 and targetNeutrophil = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 0
          ]
        ]

        set amountOfCRPApoptoticKupfferCellMoveToNeutrophilPerLoopUpperLiver amountOfCRPApoptoticKupfferCellMoveToNeutrophilPerLoopUpperLiver - counter57
        set counter57 0
      ]
    ]

    ;;CRP-apoptotic-kupffer-cell complex move to neutrophils (lower liver sinusoid)
    if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticKupfferCellMoveToNeutrophilPerLoopLowerLiver amountOfCRPApoptoticKupfferCellMoveToNeutrophilPerLoopLowerLiver + percentageOfCRPApoptoticKupfferCellMoveToNeutrophilPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticKupfferCellMoveToNeutrophilPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticKupfferCellMoveToNeutrophilPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticKupfferCellPhagocytizeByNeutrophil 1
              set counter58 counter58 + 1
            ]
          ]

          ask ActivatedNeutrophils with[ycor < 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 1
            set activatedNeutrophilInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of ActivatedNeutrophils with[ycor < 0 and targetNeutrophil = 1]
              set CRPOpsonizedApoptoticKupfferCellPhagocytizeByNeutrophil 1
            ]
            set movedCRP 0
          ]

          ask ActivatedNeutrophils with[ycor < 0 and targetNeutrophil = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 0
          ]
        ]

        set amountOfCRPApoptoticKupfferCellMoveToNeutrophilPerLoopLowerLiver amountOfCRPApoptoticKupfferCellMoveToNeutrophilPerLoopLowerLiver - counter58
        set counter58 0
      ]
    ]

    ;;CRP-apoptotic-kupffer-cell complex are phagocytized by neutrophils
    ask CRPs with[CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 1]
    [
      set CRPApoptoticKupfferCellPhagocytizeByNeutrophilDieAt? CRPApoptoticKupfferCellPhagocytizeByNeutrophilDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticKupfferCellPhagocytizeByNeutrophilDieAt? >= timeOfApoptoticKupfferCellCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ;;Assign a state variable to identify activated neutrophils that NOT interact with CRPs
    ask ActivatedNeutrophils with[activatedNeutrophilInteractWithCRPTypeComplex = 1 and not any? CRPs-here with[CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 1]]
    [
      set activatedNeutrophilInteractWithCRPTypeComplex 0
    ]
  ]
end

to CRPOpsonizedApoptoticKupfferCellPhagocytizeByMDMISubRoutine
 if (counter != 0)
  [
    ;;CRP-apoptotic-kupffer-cell complex move to MDMIs (upper liver sinusoid)
    if any? MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticKupfferCellMoveToMDMIPerLoopUpperLiver amountOfCRPApoptoticKupfferCellMoveToMDMIPerLoopUpperLiver + percentageOfCRPApoptoticKupfferCellMoveToMDMIPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticKupfferCellMoveToMDMIPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticKupfferCellMoveToMDMIPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticKupfferCellPhagocytizeByMDMI 1
              set counter59 counter59 + 1
            ]
          ]

          ask MDMIs with[ycor > 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 1
            set MDMIInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIs with[ycor > 0 and targetMDMI = 1]
              set CRPOpsonizedApoptoticKupfferCellPhagocytizeByMDMI 1
            ]
            set movedCRP 0
          ]

          ask MDMIs with[ycor > 0 and targetMDMI = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 0
          ]
        ]

        set amountOfCRPApoptoticKupfferCellMoveToMDMIPerLoopUpperLiver amountOfCRPApoptoticKupfferCellMoveToMDMIPerLoopUpperLiver - counter59
        set counter59 0
      ]
    ]

    ;;CRP-apoptotic-kupffer-cell complex move to MDMIs (lower liver sinusoid)
    if any? MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticKupfferCellMoveToMDMIPerLoopLowerLiver amountOfCRPApoptoticKupfferCellMoveToMDMIPerLoopLowerLiver + percentageOfCRPApoptoticKupfferCellMoveToMDMIPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticKupfferCellMoveToMDMIPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticKupfferCellMoveToMDMIPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticKupfferCellPhagocytizeByMDMI 1
              set counter60 counter60 + 1
            ]
          ]

          ask MDMIs with[ycor < 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 1
            set MDMIInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIs with[ycor < 0 and targetMDMI = 1]
              set CRPOpsonizedApoptoticKupfferCellPhagocytizeByMDMI 1
            ]
            set movedCRP 0
          ]

          ask MDMIs with[ycor < 0 and targetMDMI = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 0
          ]
        ]

        set amountOfCRPApoptoticKupfferCellMoveToMDMIPerLoopLowerLiver amountOfCRPApoptoticKupfferCellMoveToMDMIPerLoopLowerLiver - counter60
        set counter60 0
      ]
    ]

    ;;CRP-apoptotic-kupffer-cell complex are phagocytized by MDMIs
    ask CRPs with[CRPApoptoticKupfferCellPhagocytizeByMDMI = 1]
    [
      set CRPApoptoticKupfferCellPhagocytizeByMDMIDieAt? CRPApoptoticKupfferCellPhagocytizeByMDMIDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticKupfferCellPhagocytizeByMDMIDieAt? >= timeOfApoptoticKupfferCellCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ;;Assign a state variable to identify MDMIs that NOT interact with CRPs
    ask MDMIs with[MDMIInteractWithCRPTypeComplex = 1 and not any? CRPs-here with[CRPApoptoticKupfferCellPhagocytizeByMDMI = 1]]
    [
      set MDMIInteractWithCRPTypeComplex 0
      set MDMIProduceTNFAlpha 0
    ]
  ]
end

to CRPOpsonizedApoptoticKupfferCellPhagocytizeByMDMIISubRoutine
  if (counter != 0)
  [
    ;;CRP-apoptotic-kupffer-cell complex move to MDMIIs (upper liver sinusoid)
    if any? MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
    [
      set amountOfCRPApoptoticKupfferCellMoveToMDMIIPerLoopUpperLiver amountOfCRPApoptoticKupfferCellMoveToMDMIIPerLoopUpperLiver + percentageOfCRPApoptoticKupfferCellMoveToMDMIIPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticKupfferCellMoveToMDMIIPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticKupfferCellMoveToMDMIIPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
            [
              set movedCRP 1
              move-to one-of MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
              set CRPApoptoticKupfferCellPhagocytizeByMDMII 1
              set counter61 counter61 + 1
            ]
          ]

          ask MDMIIs with[ycor > 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIIs with[ycor > 0 and targetMDMII = 1]
              set CRPOpsonizedApoptoticKupfferCellPhagocytizeByMDMII 1
            ]
            set movedCRP 0
          ]

          ask MDMIIs with[ycor > 0 and targetMDMII = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 0
          ]
        ]

        set amountOfCRPApoptoticKupfferCellMoveToMDMIIPerLoopUpperLiver amountOfCRPApoptoticKupfferCellMoveToMDMIIPerLoopUpperLiver - counter61
        set counter61 0
      ]
    ]

    ;;CRP-apoptotic-kupffer-cell complex move to MDMIIs (lower liver sinusoid)
    if any? MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
    [
      set amountOfCRPApoptoticKupfferCellMoveToMDMIIPerLoopLowerLiver amountOfCRPApoptoticKupfferCellMoveToMDMIIPerLoopLowerLiver + percentageOfCRPApoptoticKupfferCellMoveToMDMIIPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticKupfferCellMoveToMDMIIPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticKupfferCellMoveToMDMIIPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticKupfferCell = 1 and CRPBindToApoptoticKupfferCell = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
            [
              set movedCRP 1
              move-to one-of MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
              set CRPApoptoticKupfferCellPhagocytizeByMDMII 1
              set counter62 counter62 + 1
            ]
          ]

          ask MDMIIs with[ycor < 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIIs with[ycor < 0 and targetMDMII = 1]
              set CRPOpsonizedApoptoticKupfferCellPhagocytizeByMDMII 1
            ]
            set movedCRP 0
          ]

          ask MDMIIs with[ycor < 0 and targetMDMII = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 0
          ]
        ]

        set amountOfCRPApoptoticKupfferCellMoveToMDMIIPerLoopLowerLiver amountOfCRPApoptoticKupfferCellMoveToMDMIIPerLoopLowerLiver - counter62
        set counter62 0
      ]
    ]
    ;;CRP-apoptotic-kupffer-cell complex are phagocytized by MDMIIs
    ask CRPs with[CRPApoptoticKupfferCellPhagocytizeByMDMII = 1]
    [
      set CRPApoptoticKupfferCellPhagocytizeByMDMIIDieAt? CRPApoptoticKupfferCellPhagocytizeByMDMIIDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticKupfferCellPhagocytizeByMDMIIDieAt? >= timeOfApoptoticKupfferCellCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]
  ]
end

to CRPBindToHepatocyteDebrisSubRoutine
  if (counter != 0)
  [
    ;;CRP move to the site of hepatocyte debris (upper liver sinusoid)
    if any? HepatocyteDebrises with[ycor > 0 and hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0]
    [
      set amountOfCRPBindToHepatocyteDebrisPerLoopUpperLiver amountOfCRPBindToHepatocyteDebrisPerLoopUpperLiver + percentageOfCRPBindToHepatocyteDebrisPerHour * count CRPs with[ycor > 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPBindToHepatocyteDebrisPerLoopUpperLiver >= 1)
      [
        ifelse (amountOfCRPBindToHepatocyteDebrisPerLoopUpperLiver >= count HepatocyteDebrises with[ycor > 0 and hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0])
        [
          ask n-of (count HepatocyteDebrises with[ycor > 0 and hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0])CRPs with[ycor > 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of HepatocyteDebrises with[ycor > 0 and hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0]
            set CRPInteractWithHepatocyteDebris 1
          ]
          set amountOfCRPBindToHepatocyteDebrisPerLoopUpperLiver 0
        ]

        [
          ask n-of (amountOfCRPBindToHepatocyteDebrisPerLoopUpperLiver)CRPs with[ycor > 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of HepatocyteDebrises with[ycor > 0 and hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0]
            set CRPInteractWithHepatocyteDebris 1
            set counter63 counter63 + 1
          ]

          set amountOfCRPBindToHepatocyteDebrisPerLoopUpperLiver amountOfCRPBindToHepatocyteDebrisPerLoopUpperLiver - counter63
          set counter63 0
        ]
      ]
    ]

    ;;CRP move to the site of hepatocyte debris (lower liver sinusoid)
    if any? HepatocyteDebrises with[ycor < 0 and hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0]
    [
      set amountOfCRPBindToHepatocyteDebrisPerLoopLowerLiver amountOfCRPBindToHepatocyteDebrisPerLoopLowerLiver + percentageOfCRPBindToHepatocyteDebrisPerHour * count CRPs with[ycor < 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPBindToHepatocyteDebrisPerLoopLowerLiver >= 1)
      [
        ifelse (amountOfCRPBindToHepatocyteDebrisPerLoopLowerLiver >= count HepatocyteDebrises with[ycor < 0 and hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0])
        [
          ask n-of (count HepatocyteDebrises with[ycor < 0 and hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0])CRPs with[ycor < 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of HepatocyteDebrises with[ycor < 0 and hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0]
            set CRPInteractWithHepatocyteDebris 1
          ]
          set amountOfCRPBindToHepatocyteDebrisPerLoopLowerLiver 0
        ]

        [
          ask n-of (amountOfCRPBindToHepatocyteDebrisPerLoopLowerLiver)CRPs with[ycor < 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of HepatocyteDebrises with[ycor < 0 and hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0]
            set CRPInteractWithHepatocyteDebris 1
            set counter64 counter64 + 1
          ]

          set amountOfCRPBindToHepatocyteDebrisPerLoopLowerLiver amountOfCRPBindToHepatocyteDebrisPerLoopLowerLiver - counter64
          set counter64 0
        ]
      ]
    ]

    ;;Assign a state variable to identify hepatocyte debris that interact with CRP
    ask HepatocyteDebrises with[not any? other hepatocyteDebrises-here with[hepatocyteDebrisInteractWithCRP = 1] and any? CRPs-here with[CRPInteractWithHepatocyteDebris = 1] and hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0]
    [
      set hepatocyteDebrisInteractWithCRP 1
    ]

    ;;CRP bind to hepatocyte debris to form a complex
    repeat count CRPs with[CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 0 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
    [
       if any? CRPs with[CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 0 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
       [
         ask one-of CRPs with[CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 0 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
         [
           create-CRPSHepatocyteDebris-links-with HepatocyteDebrises-here with[hepatocyteDebrisInteractWithCRP = 1 and hepatocyteDebrisBindToCRP = 0]
           set CRPBindToHepatocyteDebris 1
         ]
       ]

       ask HepatocyteDebrises with[hepatocyteDebrisInteractWithCRP = 1 and hepatocyteDebrisBindToCRP = 0 and any? CRPs-here with[CRPBindToHepatocyteDebris = 1]]
       [
         set hepatocyteDebrisBindToCRP 1
       ]
    ]
  ]
end

to CRPOpsonizedHepatocyteDebrisPhagocytizeByKupfferCellSubRoutine
  if (counter != 0)
  [
    ;;CRP-hepatocyte-debris complex move to kupffer cells (upper liver sinusoid)
    if any? KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPHepatocyteDebrisComplexMoveToKupfferCellPerLoopUpperLiver amountOfCRPHepatocyteDebrisComplexMoveToKupfferCellPerLoopUpperLiver + percentageOfCRPHepatocyteDebrisComplexMoveToKupfferCellPerHour * count CRPs with[ycor > 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPHepatocyteDebrisComplexMoveToKupfferCellPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPHepatocyteDebrisComplexMoveToKupfferCellPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPHepatocyteDebrisPhagocytizeByKupfferCell 1
              set counter65 counter65 + 1
            ]
          ]

          ask KupfferCells with[ycor > 0 and any? CRPs-here with[movedCRP = 1] and not any? other KupfferCells-here with[targetKupfferCell = 1]]
          [
            set targetKupfferCell 1
            set kupfferCellInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of KupfferCells with[ycor > 0 and targetKupfferCell = 1]
              set CRPOpsonizedHepatocyteDebrisPhagocytizeByKupfferCell 1
            ]
            set movedCRP 0
          ]

          ask KupfferCells with[ycor > 0 and targetKupfferCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetKupfferCell 0
          ]
        ]

        set amountOfCRPHepatocyteDebrisComplexMoveToKupfferCellPerLoopUpperLiver amountOfCRPHepatocyteDebrisComplexMoveToKupfferCellPerLoopUpperLiver - counter65
        set counter65 0
      ]
    ]

    ;;CRP-hepatocyte-debris complex move to kupffer cells (lower liver sinusoid)
    if any? KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPHepatocyteDebrisComplexMoveToKupfferCellPerLoopLowerLiver amountOfCRPHepatocyteDebrisComplexMoveToKupfferCellPerLoopLowerLiver + percentageOfCRPHepatocyteDebrisComplexMoveToKupfferCellPerHour * count CRPs with[ycor < 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPHepatocyteDebrisComplexMoveToKupfferCellPerLoopLowerLiver) >= 1
      [
        repeat (amountOfCRPHepatocyteDebrisComplexMoveToKupfferCellPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPHepatocyteDebrisPhagocytizeByKupfferCell 1
              set counter66 counter66 + 1
            ]
          ]

          ask KupfferCells with[ycor < 0 and any? CRPs-here with[movedCRP = 1] and not any? other KupfferCells-here with[targetKupfferCell = 1]]
          [
            set targetKupfferCell 1
            set kupfferCellInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of KupfferCells with[ycor < 0 and targetKupfferCell = 1]
              set CRPOpsonizedHepatocyteDebrisPhagocytizeByKupfferCell 1
            ]
            set movedCRP 0
          ]

          ask KupfferCells with[ycor < 0 and targetKupfferCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetKupfferCell 0
          ]
        ]

        set amountOfCRPHepatocyteDebrisComplexMoveToKupfferCellPerLoopLowerLiver amountOfCRPHepatocyteDebrisComplexMoveToKupfferCellPerLoopLowerLiver - counter66
        set counter66 0
      ]
    ]

    ;;CRP-hepatocyte-debris complex are phagocytized by kupffer cells
    ask CRPs with[CRPHepatocyteDebrisPhagocytizeByKupfferCell = 1]
    [
      set CRPHepatocyteDebrisPhagocytizeByKupfferCellDieAt? CRPHepatocyteDebrisPhagocytizeByKupfferCellDieAt? + 1
    ]

    ask CRPs with[CRPHepatocyteDebrisPhagocytizeByKupfferCellDieAt? >= timeOfHepatocyteDebrisCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ;;Assign a state variable to identify kupffer cells that NOT interact with CRPs
    ask KupfferCells with[kupfferCellInteractWithCRPTypeComplex = 1 and not any? CRPs-here with[CRPHepatocyteDebrisPhagocytizeByKupfferCell = 1]]
    [
      set kupfferCellInteractWithCRPTypeComplex 0
    ]
  ]
end

to CRPOpsonizedHepatocyteDebrisPhagocytizeByMastCellSubRoutine
  if (counter != 0)
  [
    ;;CRP-hepatocyte-debris complex move to mast cells (upper liver sinusoid)
    if any? MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
    [
      set amountOfCRPHepatocyteDebrisComplexMoveToMastCellPerLoopUpperLiver amountOfCRPHepatocyteDebrisComplexMoveToMastCellPerLoopUpperLiver + percentageOfCRPHepatocyteDebrisComplexMoveToMastCellPerHour * count CRPs with[ycor > 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPHepatocyteDebrisComplexMoveToMastCellPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPHepatocyteDebrisComplexMoveToMastCellPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
            [
              set movedCRP 1
              move-to one-of MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
              set CRPHepatocyteDebrisPhagocytizeByMastCell 1
              set counter67 counter67 + 1
            ]
          ]

          ask MastCells with[ycor > 0 and any? CRPs-here with[movedCRP = 1] and not any? other MastCells-here with[targetMastCell = 1]]
          [
            set targetMastCell 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MastCells with[ycor > 0 and targetMastCell = 1]
            ]
            set movedCRP 0
          ]

          ask MastCells with[ycor > 0 and targetMastCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMastCell 0
          ]
        ]

        set amountOfCRPHepatocyteDebrisComplexMoveToMastCellPerLoopUpperLiver amountOfCRPHepatocyteDebrisComplexMoveToMastCellPerLoopUpperLiver - counter67
        set counter67 0
      ]
    ]

    ;;CRP-hepatocyte-debris complex move to mast cells (lower liver sinusoid)
    if any? MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
    [
      set amountOfCRPHepatocyteDebrisComplexMoveToMastCellPerLoopLowerLiver amountOfCRPHepatocyteDebrisComplexMoveToMastCellPerLoopLowerLiver + percentageOfCRPHepatocyteDebrisComplexMoveToMastCellPerHour * count CRPs with[ycor < 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPHepatocyteDebrisComplexMoveToMastCellPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPHepatocyteDebrisComplexMoveToMastCellPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
            [
              set movedCRP 1
              move-to one-of MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
              set CRPHepatocyteDebrisPhagocytizeByMastCell 1
              set counter68 counter68 + 1
            ]
          ]

          ask MastCells with[ycor < 0 and any? CRPs-here with[movedCRP = 1] and not any? other MastCells-here with[targetMastCell = 1]]
          [
            set targetMastCell 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MastCells with[ycor < 0 and targetMastCell = 1]
            ]
            set movedCRP 0
          ]

          ask MastCells with[ycor < 0 and targetMastCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMastCell 0
          ]
        ]

        set amountOfCRPHepatocyteDebrisComplexMoveToMastCellPerLoopLowerLiver amountOfCRPHepatocyteDebrisComplexMoveToMastCellPerLoopLowerLiver - counter68
        set counter68 0
      ]
    ]

    ;;CRP-hepatocyte-debris complex are phagocytized by mast cells
    ask CRPs with[CRPHepatocyteDebrisPhagocytizeByMastCell = 1]
    [
      set CRPHepatocyteDebrisPhagocytizeByMastCellDieAt? CRPHepatocyteDebrisPhagocytizeByMastCellDieAt? + 1
    ]

    ask CRPs with[CRPHepatocyteDebrisPhagocytizeByMastCellDieAt? >= timeOfHepatocyteDebrisCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]
  ]
end

to CRPOpsonizedHepatocyteDebrisPhagocytizeByNeutrophilSubRoutine
  if (counter != 0)
  [
    ;;CRP-hepatocyte-debris complex move to neutrophils (upper liver sinusoid)
    if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPHepatocyteDebrisMoveToNeutrophilPerLoopUpperLiver amountOfCRPHepatocyteDebrisMoveToNeutrophilPerLoopUpperLiver + percentageOfCRPHepatocyteDebrisMoveToNeutrophilPerHour * count CRPs with[ycor > 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPHepatocyteDebrisMoveToNeutrophilPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPHepatocyteDebrisMoveToNeutrophilPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPHepatocyteDebrisPhagocytizeByNeutrophil 1
              set counter69 counter69 + 1
            ]
          ]

          ask ActivatedNeutrophils with[ycor > 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 1
            set activatedNeutrophilInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of ActivatedNeutrophils with[ycor > 0 and targetNeutrophil = 1]
              set CRPOpsonizedHepatocyteDebrisPhagocytizeByNeutrophil 1
            ]
            set movedCRP 0
          ]

          ask ActivatedNeutrophils with[ycor > 0 and targetNeutrophil = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 0
          ]
        ]

        set amountOfCRPHepatocyteDebrisMoveToNeutrophilPerLoopUpperLiver amountOfCRPHepatocyteDebrisMoveToNeutrophilPerLoopUpperLiver - counter69
        set counter69 0
      ]
    ]

    ;;CRP-hepatocyte-debris complex move to neutrophils (lower liver sinusoid)
    if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPHepatocyteDebrisMoveToNeutrophilPerLoopLowerLiver amountOfCRPHepatocyteDebrisMoveToNeutrophilPerLoopLowerLiver + percentageOfCRPHepatocyteDebrisMoveToNeutrophilPerHour * count CRPs with[ycor < 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPHepatocyteDebrisMoveToNeutrophilPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPHepatocyteDebrisMoveToNeutrophilPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPHepatocyteDebrisPhagocytizeByNeutrophil 1
              set counter70 counter70 + 1
            ]
          ]

          ask ActivatedNeutrophils with[ycor < 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 1
            set activatedNeutrophilInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of ActivatedNeutrophils with[ycor < 0 and targetNeutrophil = 1]
              set CRPOpsonizedHepatocyteDebrisPhagocytizeByNeutrophil 1
            ]
            set movedCRP 0
          ]

          ask ActivatedNeutrophils with[ycor < 0 and targetNeutrophil = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 0
          ]
        ]

        set amountOfCRPHepatocyteDebrisMoveToNeutrophilPerLoopLowerLiver amountOfCRPHepatocyteDebrisMoveToNeutrophilPerLoopLowerLiver - counter70
        set counter70 0
      ]
    ]

    ;;CRP-hepatocyte-debris complex are phagocytized by neutrophils
    ask CRPs with[CRPHepatocyteDebrisPhagocytizeByNeutrophil = 1]
    [
      set CRPHepatocyteDebrisPhagocytizeByNeutrophilDieAt? CRPHepatocyteDebrisPhagocytizeByNeutrophilDieAt? + 1
    ]

    ask CRPs with[CRPHepatocyteDebrisPhagocytizeByNeutrophilDieAt? >= timeOfHepatocyteDebrisCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ;;Assign a state variable to identify activated neutrophils that NOT interact with CRPs
    ask ActivatedNeutrophils with[activatedNeutrophilInteractWithCRPTypeComplex = 1 and not any? CRPs-here with[CRPHepatocyteDebrisPhagocytizeByNeutrophil = 1]]
    [
      set activatedNeutrophilInteractWithCRPTypeComplex 0
    ]
  ]
end

to CRPOpsonizedHepatocyteDebrisPhagocytizeByMDMISubRoutine
 if (counter != 0)
  [
    ;;CRP-hepatocyte-debris complex move to MDMIs (upper liver sinusoid)
    if any? MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPHepatocyteDebrisMoveToMDMIPerLoopUpperLiver amountOfCRPHepatocyteDebrisMoveToMDMIPerLoopUpperLiver + percentageOfCRPHepatocyteDebrisMoveToMDMIPerHour * count CRPs with[ycor > 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPHepatocyteDebrisMoveToMDMIPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPHepatocyteDebrisMoveToMDMIPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPHepatocyteDebrisPhagocytizeByMDMI 1
              set counter71 counter71 + 1
            ]
          ]

          ask MDMIs with[ycor > 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 1
            set MDMIInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIs with[ycor > 0 and targetMDMI = 1]
              set CRPOpsonizedHepatocyteDebrisPhagocytizeByMDMI 1
            ]
            set movedCRP 0
          ]

          ask MDMIs with[ycor > 0 and targetMDMI = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 0
          ]
        ]

        set amountOfCRPHepatocyteDebrisMoveToMDMIPerLoopUpperLiver amountOfCRPHepatocyteDebrisMoveToMDMIPerLoopUpperLiver - counter71
        set counter71 0
      ]
    ]

    ;;CRP-hepatocyte-debris complex move to MDMIs (lower liver sinusoid)
    if any? MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPHepatocyteDebrisMoveToMDMIPerLoopLowerLiver amountOfCRPHepatocyteDebrisMoveToMDMIPerLoopLowerLiver + percentageOfCRPHepatocyteDebrisMoveToMDMIPerHour * count CRPs with[ycor < 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPHepatocyteDebrisMoveToMDMIPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPHepatocyteDebrisMoveToMDMIPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPHepatocyteDebrisPhagocytizeByMDMI 1
              set counter72 counter72 + 1
            ]
          ]

          ask MDMIs with[ycor < 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 1
            set MDMIInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIs with[ycor < 0 and targetMDMI = 1]
              set CRPOpsonizedHepatocyteDebrisPhagocytizeByMDMI 1
            ]
            set movedCRP 0
          ]

          ask MDMIs with[ycor < 0 and targetMDMI = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 0
          ]
        ]

        set amountOfCRPHepatocyteDebrisMoveToMDMIPerLoopLowerLiver amountOfCRPHepatocyteDebrisMoveToMDMIPerLoopLowerLiver - counter72
        set counter72 0
      ]
    ]

    ;;CRP-hepatocyte-debris complex are phagocytized by MDMIs
    ask CRPs with[CRPHepatocyteDebrisPhagocytizeByMDMI = 1]
    [
      set CRPHepatocyteDebrisPhagocytizeByMDMIDieAt? CRPHepatocyteDebrisPhagocytizeByMDMIDieAt? + 1
    ]

    ask CRPs with[CRPHepatocyteDebrisPhagocytizeByMDMIDieAt? >= timeOfHepatocyteDebrisCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ;;Assign a state variable to identify MDMIs that NOT interact with CRPs
    ask MDMIs with[MDMIInteractWithCRPTypeComplex = 1 and not any? CRPs-here with[CRPHepatocyteDebrisPhagocytizeByMDMI = 1]]
    [
      set MDMIInteractWithCRPTypeComplex 0
      set MDMIProduceTNFAlpha 0
    ]
  ]
end

to CRPOpsonizedHepatocyteDebrisPhagocytizeByMDMIISubRoutine
  if (counter != 0)
  [
    ;;CRP-hepatocyte-debris complex move to MDMIIs (upper liver sinusoid)
    if any? MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
    [
      set amountOfCRPHepatocyteDebrisMoveToMDMIIPerLoopUpperLiver amountOfCRPHepatocyteDebrisMoveToMDMIIPerLoopUpperLiver + percentageOfCRPHepatocyteDebrisMoveToMDMIIPerHour * count CRPs with[ycor > 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPHepatocyteDebrisMoveToMDMIIPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPHepatocyteDebrisMoveToMDMIIPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
            [
              set movedCRP 1
              move-to one-of MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
              set CRPHepatocyteDebrisPhagocytizeByMDMII 1
              set counter73 counter73 + 1
            ]
          ]

          ask MDMIIs with[ycor > 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIIs with[ycor > 0 and targetMDMII = 1]
              set CRPOpsonizedHepatocyteDebrisPhagocytizeByMDMII 1
            ]
            set movedCRP 0
          ]

          ask MDMIIs with[ycor > 0 and targetMDMII = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 0
          ]
        ]

        set amountOfCRPHepatocyteDebrisMoveToMDMIIPerLoopUpperLiver amountOfCRPHepatocyteDebrisMoveToMDMIIPerLoopUpperLiver - counter73
        set counter73 0
      ]
    ]

    ;;CRP-hepatocyte-debris complex move to MDMIIs (lower liver sinusoid)
    if any? MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
    [
      set amountOfCRPHepatocyteDebrisMoveToMDMIIPerLoopLowerLiver amountOfCRPHepatocyteDebrisMoveToMDMIIPerLoopLowerLiver + percentageOfCRPHepatocyteDebrisMoveToMDMIIPerHour * count CRPs with[ycor < 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPHepatocyteDebrisMoveToMDMIIPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPHepatocyteDebrisMoveToMDMIIPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithHepatocyteDebris = 1 and CRPBindToHepatocyteDebris = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
            [
              set movedCRP 1
              move-to one-of MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
              set CRPHepatocyteDebrisPhagocytizeByMDMII 1
              set counter74 counter74 + 1
            ]
          ]

          ask MDMIIs with[ycor < 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIIs with[ycor < 0 and targetMDMII = 1]
              set CRPOpsonizedHepatocyteDebrisPhagocytizeByMDMII 1
            ]
            set movedCRP 0
          ]

          ask MDMIIs with[ycor < 0 and targetMDMII = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 0
          ]
        ]

        set amountOfCRPHepatocyteDebrisMoveToMDMIIPerLoopLowerLiver amountOfCRPHepatocyteDebrisMoveToMDMIIPerLoopLowerLiver - counter74
        set counter74 0
      ]
    ]

    ;;CRP-hepatocyte-debris complex are phagocytized by MDMIIs
    ask CRPs with[CRPHepatocyteDebrisPhagocytizeByMDMII = 1]
    [
      set CRPHepatocyteDebrisPhagocytizeByMDMIIDieAt? CRPHepatocyteDebrisPhagocytizeByMDMIIDieAt? + 1
    ]

    ask CRPs with[CRPHepatocyteDebrisPhagocytizeByMDMIIDieAt? >= timeOfHepatocyteDebrisCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]
  ]
end

to CRPBindToApoptoticNeutrophilSubRoutine
  if (counter != 0)
  [
    ;;CRP move to the site of apoptotic neutrophils (upper liver sinusoid)
    if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilUndergoApoptosisByNature = 1 and apoptoticActivatedNeutrophilInteractWithCRP = 0 and apoptoticActivatedNeutrophilBindToCRP = 0 and apoptoticActivatedNeutrophilInteractWithMDMII = 0]
    [
      set amountOfCRPBindToApoptoticNeutrophilPerLoopUpperLiver amountOfCRPBindToApoptoticNeutrophilPerLoopUpperLiver + percentageOfCRPBindToApoptoticNeutrophilPerHour * count CRPs with[ycor > 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPBindToApoptoticNeutrophilPerLoopUpperLiver >= 1)
      [
        ifelse (amountOfCRPBindToApoptoticNeutrophilPerLoopUpperLiver >= count ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilUndergoApoptosisByNature = 1 and apoptoticActivatedNeutrophilInteractWithCRP = 0 and apoptoticActivatedNeutrophilBindToCRP = 0 and apoptoticActivatedNeutrophilInteractWithMDMII = 0])
        [
          ask n-of (count ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilUndergoApoptosisByNature = 1 and apoptoticActivatedNeutrophilInteractWithCRP = 0 and apoptoticActivatedNeutrophilBindToCRP = 0 and apoptoticActivatedNeutrophilInteractWithMDMII = 0])CRPs with[ycor > 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilUndergoApoptosisByNature = 1 and apoptoticActivatedNeutrophilInteractWithCRP = 0 and apoptoticActivatedNeutrophilBindToCRP = 0 and apoptoticActivatedNeutrophilInteractWithMDMII = 0]
            set CRPInteractWithApoptoticNeutrophil 1
          ]

          set amountOfCRPBindToApoptoticNeutrophilPerLoopUpperLiver 0
        ]

        [
          ask n-of (amountOfCRPBindToApoptoticNeutrophilPerLoopUpperLiver)CRPs with[ycor > 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilUndergoApoptosisByNature = 1 and apoptoticActivatedNeutrophilInteractWithCRP = 0 and apoptoticActivatedNeutrophilBindToCRP = 0 and apoptoticActivatedNeutrophilInteractWithMDMII = 0]
            set CRPInteractWithApoptoticNeutrophil 1
            set counter75 counter75 + 1
          ]
          set amountOfCRPBindToApoptoticNeutrophilPerLoopUpperLiver amountOfCRPBindToApoptoticNeutrophilPerLoopUpperLiver - counter75
          set counter75 0
        ]
      ]
    ]

    ;;Assign a state variable to identify apoptotic neutrophils that interact with CRP
    ask ActivatedNeutrophils with[not any? other ActivatedNeutrophils-here with[apoptoticActivatedNeutrophilInteractWithCRP = 1] and any? CRPs-here with[ycor > 0 and CRPInteractWithApoptoticNeutrophil = 1] and ycor > 0 and activatedNeutrophilUndergoApoptosisByNature = 1 and apoptoticActivatedNeutrophilInteractWithCRP = 0 and apoptoticActivatedNeutrophilBindToCRP = 0 and apoptoticActivatedNeutrophilInteractWithMDMII = 0]
    [
      set apoptoticActivatedNeutrophilInteractWithCRP 1
    ]

    ;;CRP move to the site of apoptotic neutrophils (lower liver sinusoid)
    if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilUndergoApoptosisByNature = 1 and apoptoticActivatedNeutrophilInteractWithCRP = 0 and apoptoticActivatedNeutrophilBindToCRP = 0 and apoptoticActivatedNeutrophilInteractWithMDMII = 0]
    [
      set amountOfCRPBindToApoptoticNeutrophilPerLoopLowerLiver amountOfCRPBindToApoptoticNeutrophilPerLoopLowerLiver + percentageOfCRPBindToApoptoticNeutrophilPerHour * count CRPs with[ycor < 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPBindToApoptoticNeutrophilPerLoopLowerLiver >= 1)
      [
        ifelse (amountOfCRPBindToApoptoticNeutrophilPerLoopLowerLiver >= count ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilUndergoApoptosisByNature = 1 and apoptoticActivatedNeutrophilInteractWithCRP = 0 and apoptoticActivatedNeutrophilBindToCRP = 0 and apoptoticActivatedNeutrophilInteractWithMDMII = 0])
        [
          ask n-of (count ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilUndergoApoptosisByNature = 1 and apoptoticActivatedNeutrophilInteractWithCRP = 0 and apoptoticActivatedNeutrophilBindToCRP = 0 and apoptoticActivatedNeutrophilInteractWithMDMII = 0])CRPs with[ycor < 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilUndergoApoptosisByNature = 1 and apoptoticActivatedNeutrophilInteractWithCRP = 0 and apoptoticActivatedNeutrophilBindToCRP = 0 and apoptoticActivatedNeutrophilInteractWithMDMII = 0]
            set CRPInteractWithApoptoticNeutrophil 1
          ]

          set amountOfCRPBindToApoptoticNeutrophilPerLoopLowerLiver 0
        ]

        [
          ask n-of (amountOfCRPBindToApoptoticNeutrophilPerLoopLowerLiver)CRPs with[ycor < 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilUndergoApoptosisByNature = 1 and apoptoticActivatedNeutrophilInteractWithCRP = 0 and apoptoticActivatedNeutrophilBindToCRP = 0 and apoptoticActivatedNeutrophilInteractWithMDMII = 0]
            set CRPInteractWithApoptoticNeutrophil 1
            set counter76 counter76 + 1
          ]
          set amountOfCRPBindToApoptoticNeutrophilPerLoopLowerLiver amountOfCRPBindToApoptoticNeutrophilPerLoopLowerLiver - counter76
          set counter76 0
        ]
      ]
    ]

    ;;Assign a state variable to identify apoptotic neutrophils that interact with CRP
    ask ActivatedNeutrophils with[not any? other ActivatedNeutrophils-here with[apoptoticActivatedNeutrophilInteractWithCRP = 1] and any? CRPs-here with[ycor < 0 and CRPInteractWithApoptoticNeutrophil = 1] and ycor < 0 and activatedNeutrophilUndergoApoptosisByNature = 1 and apoptoticActivatedNeutrophilInteractWithCRP = 0 and apoptoticActivatedNeutrophilBindToCRP = 0 and apoptoticActivatedNeutrophilInteractWithMDMII = 0]
    [
      set apoptoticActivatedNeutrophilInteractWithCRP 1
    ]

    ;;CRP bind to apoptotic neutrophils to form a complex
    repeat count CRPs with[CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
    [
       if any? CRPs with[CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
       [
         ask one-of CRPs with[CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
         [
           create-CRPApoptoticNeutrophil-links-with ActivatedNeutrophils-here with[apoptoticActivatedNeutrophilInteractWithCRP = 1 and apoptoticActivatedNeutrophilBindToCRP = 0]
           set CRPBindToApoptoticNeutrophil 1
         ]
       ]

       ask ActivatedNeutrophils with[apoptoticActivatedNeutrophilInteractWithCRP = 1 and apoptoticActivatedNeutrophilBindToCRP = 0 and any? CRPs-here with[CRPBindToApoptoticNeutrophil = 1]]
       [
         set apoptoticActivatedNeutrophilBindToCRP 1
       ]
    ]

    ;;Avoid to assign a state variable to apoptotic neutrophils that NOT interact with CRP
    ask ActivatedNeutrophils with[apoptoticActivatedNeutrophilInteractWithCRP = 1 and apoptoticActivatedNeutrophilBindToCRP = 1 and not any? CRPs-here with[CRPInteractWithApoptoticNeutrophil = 1]]
    [
      set apoptoticActivatedNeutrophilInteractWithCRP 0
      set apoptoticActivatedNeutrophilBindToCRP 0
    ]
  ]
end

to CRPOpsonizedApoptoticNeutrophilPhagocytizeByKupfferCellSubRoutine
  if (counter != 0)
  [
    ;;CRP-apoptotic-neutrophil complex move to kupffer cells (uppper liver sinusoid)
    if any? KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticNeutrophilComplexMoveToKupfferCellPerLoopUpperLiver amountOfCRPApoptoticNeutrophilComplexMoveToKupfferCellPerLoopUpperLiver + percentageOfCRPApoptoticNeutrophilComplexMoveToKupfferCellPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticNeutrophilComplexMoveToKupfferCellPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticNeutrophilComplexMoveToKupfferCellPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticNeutrophilPhagocytizeByKupfferCell 1
              set counter77 counter77 + 1
            ]
          ]

          ask KupfferCells with[ycor > 0 and any? CRPs-here with[movedCRP = 1] and not any? other KupfferCells-here with[targetKupfferCell = 1]]
          [
            set targetKupfferCell 1
            set kupfferCellInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of KupfferCells with[ycor > 0 and targetKupfferCell = 1]
              set CRPOpsonizedApoptoticNeutrophilPhagocytizeByKupfferCell 1
            ]
            set movedCRP 0
          ]

          ask KupfferCells with[ycor > 0 and targetKupfferCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetKupfferCell 0
          ]
        ]

        set amountOfCRPApoptoticNeutrophilComplexMoveToKupfferCellPerLoopUpperLiver amountOfCRPApoptoticNeutrophilComplexMoveToKupfferCellPerLoopUpperLiver - counter77
        set counter77 0
      ]
    ]

    ;;CRP-apoptotic-neutrophil complex move to kupffer cells (lower liver sinusoid)
    if any? KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticNeutrophilComplexMoveToKupfferCellPerLoopLowerLiver amountOfCRPApoptoticNeutrophilComplexMoveToKupfferCellPerLoopLowerLiver + percentageOfCRPApoptoticNeutrophilComplexMoveToKupfferCellPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticNeutrophilComplexMoveToKupfferCellPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticNeutrophilComplexMoveToKupfferCellPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticNeutrophilPhagocytizeByKupfferCell 1
              set counter78 counter78 + 1
            ]
          ]

          ask KupfferCells with[ycor < 0 and any? CRPs-here with[movedCRP = 1] and not any? other KupfferCells-here with[targetKupfferCell = 1]]
          [
            set targetKupfferCell 1
            set kupfferCellInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of KupfferCells with[ycor < 0 and targetKupfferCell = 1]
              set CRPOpsonizedApoptoticNeutrophilPhagocytizeByKupfferCell 1
            ]
            set movedCRP 0
          ]

          ask KupfferCells with[ycor < 0 and targetKupfferCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetKupfferCell 0
          ]
        ]

        set amountOfCRPApoptoticNeutrophilComplexMoveToKupfferCellPerLoopLowerLiver amountOfCRPApoptoticNeutrophilComplexMoveToKupfferCellPerLoopLowerLiver - counter78
        set counter78 0
      ]
    ]

    ;;CRP-apoptotic-neutrophil complex are phagocytized by kupffer cells
    ask CRPs with[CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 1]
    [
      set CRPApoptoticNeutrophilPhagocytizeByKupfferCellDieAt? CRPApoptoticNeutrophilPhagocytizeByKupfferCellDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticNeutrophilPhagocytizeByKupfferCellDieAt? >= timeOfApoptoticNeutrophilCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ;;Assign a state variable to identify kupffer cells that NOT interact with CRPs
    ask KupfferCells with[kupfferCellInteractWithCRPTypeComplex = 1 and not any? CRPs-here with[CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 1]]
    [
      set kupfferCellInteractWithCRPTypeComplex 0
    ]
  ]

end

to CRPOpsonizedApoptoticNeutrophilPhagocytizeByMastCellSubRoutine
  if (counter != 0)
  [
    ;;CRP-apoptotic-neutrophil complex move to mast cells (upper liver sinusoid)
    if any? MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
    [
      set amountOfCRPApoptoticNeutrophilComplexMoveToMastCellPerLoopUpperLiver amountOfCRPApoptoticNeutrophilComplexMoveToMastCellPerLoopUpperLiver + percentageOfCRPApoptoticNeutrophilComplexMoveToMastCellPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticNeutrophilComplexMoveToMastCellPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticNeutrophilComplexMoveToMastCellPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
            [
              set movedCRP 1
              move-to one-of MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
              set CRPApoptoticNeutrophilPhagocytizeByMastCell 1
              set counter79 counter79 + 1
            ]
          ]

          ask MastCells with[ycor > 0 and any? CRPs-here with[movedCRP = 1]and not any? other MastCells-here with[targetMastCell = 1] ]
          [
            set targetMastCell 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MastCells with[ycor > 0 and targetMastCell = 1]
              set CRPOpsonizedApoptoticNeutrophilPhagocytizeByMastCell 1
            ]
            set movedCRP 0
          ]

          ask MastCells with[ycor > 0 and targetMastCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMastCell 0
          ]
        ]

        set amountOfCRPApoptoticNeutrophilComplexMoveToMastCellPerLoopUpperLiver amountOfCRPApoptoticNeutrophilComplexMoveToMastCellPerLoopUpperLiver - counter79
        set counter79 0
      ]
    ]

    ;;CRP-apoptotic-neutrophil complex move to mast cells (lower liver sinusoid)
    if any? MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
    [
      set amountOfCRPApoptoticNeutrophilComplexMoveToMastCellPerLoopLowerLiver amountOfCRPApoptoticNeutrophilComplexMoveToMastCellPerLoopLowerLiver + percentageOfCRPApoptoticNeutrophilComplexMoveToMastCellPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticNeutrophilComplexMoveToMastCellPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticNeutrophilComplexMoveToMastCellPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
            [
              set movedCRP 1
              move-to one-of MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
              set CRPApoptoticNeutrophilPhagocytizeByMastCell 1
              set counter80 counter80 + 1
            ]
          ]

          ask MastCells with[ycor < 0 and any? CRPs-here with[movedCRP = 1] and not any? other MastCells-here with[targetMastCell = 1]]
          [
            set targetMastCell 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MastCells with[ycor < 0 and targetMastCell = 1]
              set CRPOpsonizedApoptoticNeutrophilPhagocytizeByMastCell 1
            ]
            set movedCRP 0
          ]

          ask MastCells with[ycor < 0 and targetMastCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMastCell 0
          ]
        ]

        set amountOfCRPApoptoticNeutrophilComplexMoveToMastCellPerLoopLowerLiver amountOfCRPApoptoticNeutrophilComplexMoveToMastCellPerLoopLowerLiver - counter80
        set counter80 0
      ]
    ]

    ;;CRP-apoptotic-neutrophil complex are phagocytized by mast cells
    ask CRPs with[CRPApoptoticNeutrophilPhagocytizeByMastCell = 1]
    [
      set CRPApoptoticNeutrophilPhagocytizeByMastCellDieAt? CRPApoptoticNeutrophilPhagocytizeByMastCellDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticNeutrophilPhagocytizeByMastCellDieAt? >= timeOfApoptoticNeutrophilCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]
  ]
end

to CRPOpsonizedApoptoticNeutrophilPhagocytizeByNeutrophilSubRoutine
  if (counter != 0)
  [
    ;;CRP-apoptotic-neutrophil complex move to neutrophil (upper liver sinusoid)
    if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticNeutrophilMoveToNeutrophilPerLoopUpperLiver amountOfCRPApoptoticNeutrophilMoveToNeutrophilPerLoopUpperLiver + percentageOfCRPApoptoticNeutrophilMoveToNeutrophilPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticNeutrophilMoveToNeutrophilPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticNeutrophilMoveToNeutrophilPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticNeutrophilPhagocytizeByNeutrophil 1
              set counter81 counter81 + 1
            ]
          ]

          ask ActivatedNeutrophils with[ycor > 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 1
            set activatedNeutrophilInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of ActivatedNeutrophils with[ycor > 0 and targetNeutrophil = 1]
              set CRPOpsonizedApoptoticNeutrophilPhagocytizeByNeutrophil 1
            ]
            set movedCRP 0
          ]

          ask ActivatedNeutrophils with[ycor > 0 and targetNeutrophil = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 0
          ]
        ]

        set amountOfCRPApoptoticNeutrophilMoveToNeutrophilPerLoopUpperLiver amountOfCRPApoptoticNeutrophilMoveToNeutrophilPerLoopUpperLiver - counter81
        set counter81 0
      ]
    ]

    ;;CRP-apoptotic-neutrophil complex move to neutrophil (lower liver sinusoid)
    if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticNeutrophilMoveToNeutrophilPerLoopLowerLiver amountOfCRPApoptoticNeutrophilMoveToNeutrophilPerLoopLowerLiver + percentageOfCRPApoptoticNeutrophilMoveToNeutrophilPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticNeutrophilMoveToNeutrophilPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticNeutrophilMoveToNeutrophilPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticNeutrophilPhagocytizeByNeutrophil 1
              set counter82 counter82 + 1
            ]
          ]

          ask ActivatedNeutrophils with[ycor < 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 1
            set activatedNeutrophilInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of ActivatedNeutrophils with[ycor < 0 and targetNeutrophil = 1]
              set CRPOpsonizedApoptoticNeutrophilPhagocytizeByNeutrophil 1
            ]
            set movedCRP 0
          ]

          ask ActivatedNeutrophils with[ycor < 0 and targetNeutrophil = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 0
          ]
        ]

        set amountOfCRPApoptoticNeutrophilMoveToNeutrophilPerLoopLowerLiver amountOfCRPApoptoticNeutrophilMoveToNeutrophilPerLoopLowerLiver - counter82
        set counter82 0
      ]
    ]

    ;;CRP-apoptotic-neutrophil complex are phagocytized by neutrophils
    ask CRPs with[CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 1]
    [
      set CRPApoptoticNeutrophilPhagocytizeByNeutrophilDieAt? CRPApoptoticNeutrophilPhagocytizeByNeutrophilDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticNeutrophilPhagocytizeByNeutrophilDieAt? >= timeOfApoptoticNeutrophilCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ask ActivatedNeutrophils with[activatedNeutrophilInteractWithCRPTypeComplex =  1 and not any? CRPs-here with[CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 1]]
    [
      set activatedNeutrophilInteractWithCRPTypeComplex 0
    ]
  ]
end

to CRPOpsonizedApoptoticNeutrophilPhagocytizeByMDMISubRoutine
 if (counter != 0)
  [
    ;;CRP-apoptotic-neutrophil complex move to MDMIs (upper liver sinusoid)
    if any? MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticNeutrophilMoveToMDMIPerLoopUpperLiver amountOfCRPApoptoticNeutrophilMoveToMDMIPerLoopUpperLiver + percentageOfCRPApoptoticNeutrophilMoveToMDMIPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticNeutrophilMoveToMDMIPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticNeutrophilMoveToMDMIPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticNeutrophilPhagocytizeByMDMI 1
              set counter83 counter83 + 1
            ]
          ]

          ask MDMIs with[ycor > 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 1
            set MDMIInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIs with[ycor > 0 and targetMDMI = 1]
              set CRPOpsonizedApoptoticNeutrophilPhagocytizeByMDMI 1
            ]
            set movedCRP 0
          ]

          ask MDMIs with[ycor > 0 and targetMDMI = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 0
          ]
        ]

        set amountOfCRPApoptoticNeutrophilMoveToMDMIPerLoopUpperLiver amountOfCRPApoptoticNeutrophilMoveToMDMIPerLoopUpperLiver - counter83
        set counter83 0
      ]
    ]

    ;;CRP-apoptotic-neutrophil complex move to MDMIs (lower liver sinusoid)
    if any? MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticNeutrophilMoveToMDMIPerLoopLowerLiver amountOfCRPApoptoticNeutrophilMoveToMDMIPerLoopLowerLiver + percentageOfCRPApoptoticNeutrophilMoveToMDMIPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticNeutrophilMoveToMDMIPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticNeutrophilMoveToMDMIPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticNeutrophilPhagocytizeByMDMI 1
              set counter84 counter84 + 1
            ]
          ]

          ask MDMIs with[ycor < 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 1
            set MDMIInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIs with[ycor < 0 and targetMDMI = 1]
              set CRPOpsonizedApoptoticNeutrophilPhagocytizeByMDMI 1
            ]
            set movedCRP 0
          ]

          ask MDMIs with[ycor < 0 and targetMDMI = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 0
          ]
        ]

        set amountOfCRPApoptoticNeutrophilMoveToMDMIPerLoopLowerLiver amountOfCRPApoptoticNeutrophilMoveToMDMIPerLoopLowerLiver - counter84
        set counter84 0
      ]
    ]

    ;;CRP-apoptotic-neutrophil complex are phagocytized by MDMIs
    ask CRPs with[CRPApoptoticNeutrophilPhagocytizeByMDMI = 1]
    [
      set CRPApoptoticNeutrophilPhagocytizeByMDMIDieAt? CRPApoptoticNeutrophilPhagocytizeByMDMIDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticNeutrophilPhagocytizeByMDMIDieAt? >= timeOfApoptoticNeutrophilCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ;;Assign a state variable to identify MDMIs that NOT interact with CRPs
    ask MDMIs with[MDMIInteractWithCRPTypeComplex = 1 and not any? CRPs-here with[CRPApoptoticNeutrophilPhagocytizeByMDMI = 1]]
    [
      set MDMIInteractWithCRPTypeComplex 0
      set MDMIProduceTNFAlpha 0
    ]
  ]

end

to CRPOpsonizedApoptoticNeutrophilPhagocytizeByMDMIISubRoutine
  if (counter != 0)
  [
    ;;CRP-apoptotic-neutrophil complex move to MDMIIs (upper liver sinusoid)
    if any? MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
    [
      set amountOfCRPApoptoticNeutrophilMoveToMDMIIPerLoopUpperLiver amountOfCRPApoptoticNeutrophilMoveToMDMIIPerLoopUpperLiver + percentageOfCRPApoptoticNeutrophilMoveToMDMIIPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticNeutrophilMoveToMDMIIPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticNeutrophilMoveToMDMIIPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
            [
              set movedCRP 1
              move-to one-of MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
              set CRPApoptoticNeutrophilPhagocytizeByMDMII 1
              set counter85 counter85 + 1
            ]
          ]

          ask MDMIIs with[ycor > 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIIs with[ycor > 0 and targetMDMII = 1]
              set CRPOpsonizedApoptoticNeutrophilPhagocytizeByMDMII 1
            ]
            set movedCRP 0
          ]

          ask MDMIIs with[ycor > 0 and targetMDMII = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 0
          ]
        ]

        set amountOfCRPApoptoticNeutrophilMoveToMDMIIPerLoopUpperLiver amountOfCRPApoptoticNeutrophilMoveToMDMIIPerLoopUpperLiver - counter85
        set counter85 0
      ]
    ]

    ;;CRP-apoptotic-neutrophil complex move to MDMIIs (lower liver sinusoid)
    if any? MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
    [
      set amountOfCRPApoptoticNeutrophilMoveToMDMIIPerLoopLowerLiver amountOfCRPApoptoticNeutrophilMoveToMDMIIPerLoopLowerLiver + percentageOfCRPApoptoticNeutrophilMoveToMDMIIPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticNeutrophilMoveToMDMIIPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticNeutrophilMoveToMDMIIPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticNeutrophil = 1 and CRPBindToApoptoticNeutrophil = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
            [
              set movedCRP 1
              move-to one-of MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
              set CRPApoptoticNeutrophilPhagocytizeByMDMII 1
              set counter86 counter86 + 1
            ]
          ]

          ask MDMIIs with[ycor < 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIIs with[ycor < 0 and targetMDMII = 1]
              set CRPOpsonizedApoptoticNeutrophilPhagocytizeByMDMII 1
            ]
            set movedCRP 0
          ]

          ask MDMIIs with[ycor < 0 and targetMDMII = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 0
          ]
        ]

        set amountOfCRPApoptoticNeutrophilMoveToMDMIIPerLoopLowerLiver amountOfCRPApoptoticNeutrophilMoveToMDMIIPerLoopLowerLiver - counter86
        set counter86 0
      ]
    ]

    ;;CRP-apoptotic-neutrophil complex are phagocytized by MDMIIs
    ask CRPs with[CRPApoptoticNeutrophilPhagocytizeByMDMII = 1]
    [
      set CRPApoptoticNeutrophilPhagocytizeByMDMIIDieAt? CRPApoptoticNeutrophilPhagocytizeByMDMIIDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticNeutrophilPhagocytizeByMDMIIDieAt? >= timeOfApoptoticNeutrophilCRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]
  ]
end

to CRPBindToApoptoticMDMISubRoutine
  if (counter != 0)
  [
    ;;CRP move to the site of apoptotic MDMIs (upper liver sinusoid)
    if any? MDMIs with[ycor > 0 and MDMIBecomeApoptotic = 1 and apoptoticMDMIInteractWithCRP = 0 and apoptoticMDMIBindToCRP = 0]
    [
      set amountOfCRPBindToApoptoticMDMIPerLoopUpperLiver amountOfCRPBindToApoptoticMDMIPerLoopUpperLiver + percentageOfCRPBindToApoptoticMDMIPerHour * count CRPs with[ycor > 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPBindToApoptoticMDMIPerLoopUpperLiver >= 1)
      [
        ifelse (amountOfCRPBindToApoptoticMDMIPerLoopUpperLiver >= count MDMIs with[ycor > 0 and MDMIBecomeApoptotic = 1 and apoptoticMDMIInteractWithCRP = 0 and apoptoticMDMIBindToCRP = 0])
        [
          ask n-of (count MDMIs with[ycor > 0 and MDMIBecomeApoptotic = 1 and apoptoticMDMIInteractWithCRP = 0 and apoptoticMDMIBindToCRP = 0])CRPs with[ycor > 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of MDMIs with[ycor > 0 and MDMIBecomeApoptotic = 1 and apoptoticMDMIInteractWithCRP = 0 and apoptoticMDMIBindToCRP = 0]
            set CRPInteractWithApoptoticMDMI 1
          ]

          set amountOfCRPBindToApoptoticMDMIPerLoopUpperLiver 0
        ]

        [
          ask n-of (amountOfCRPBindToApoptoticMDMIPerLoopUpperLiver) CRPs with[ycor > 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of MDMIs with[ycor > 0 and MDMIBecomeApoptotic = 1 and apoptoticMDMIInteractWithCRP = 0 and apoptoticMDMIBindToCRP = 0]
            set CRPInteractWithApoptoticMDMI 1
            set counter87 counter87 + 1
          ]
          set amountOfCRPBindToApoptoticMDMIPerLoopUpperLiver amountOfCRPBindToApoptoticMDMIPerLoopUpperLiver - counter87
          set counter87 0
        ]
      ]
    ]

    ;;Assign a state variable to identify that apoptotic MDMIs that interact with CRP
    ask MDMIs with[not any? other MDMIs-here with[apoptoticMDMIInteractWithCRP = 1] and any? CRPs-here with[ycor > 0 and CRPInteractWithApoptoticMDMI = 1] and ycor > 0 and MDMIBecomeApoptotic = 1 and apoptoticMDMIInteractWithCRP = 0 and apoptoticMDMIBindToCRP = 0]
    [
      set apoptoticMDMIInteractWithCRP 1
    ]

    ;;CRP move to the site of apoptotic MDMIs (lower liver sinusoid)
    if any? MDMIs with[ycor < 0 and MDMIBecomeApoptotic = 1 and apoptoticMDMIInteractWithCRP = 0 and apoptoticMDMIBindToCRP = 0]
    [
      set amountOfCRPBindToApoptoticMDMIPerLoopLowerLiver amountOfCRPBindToApoptoticMDMIPerLoopLowerLiver + percentageOfCRPBindToApoptoticMDMIPerHour * count CRPs with[ycor < 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPBindToApoptoticMDMIPerLoopLowerLiver >= 1)
      [
        ifelse (amountOfCRPBindToApoptoticMDMIPerLoopLowerLiver >= count MDMIs with[ycor < 0 and MDMIBecomeApoptotic = 1 and apoptoticMDMIInteractWithCRP = 0 and apoptoticMDMIBindToCRP = 0])
        [
          ask n-of (count MDMIs with[ycor < 0 and MDMIBecomeApoptotic = 1 and apoptoticMDMIInteractWithCRP = 0 and apoptoticMDMIBindToCRP = 0])CRPs with[ycor < 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of MDMIs with[ycor < 0 and MDMIBecomeApoptotic = 1 and apoptoticMDMIInteractWithCRP = 0 and apoptoticMDMIBindToCRP = 0]
            set CRPInteractWithApoptoticMDMI 1
          ]

          set amountOfCRPBindToApoptoticMDMIPerLoopLowerLiver 0
        ]

        [
          ask n-of (amountOfCRPBindToApoptoticMDMIPerLoopLowerLiver) CRPs with[ycor < 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of MDMIs with[ycor < 0 and MDMIBecomeApoptotic = 1 and apoptoticMDMIInteractWithCRP = 0 and apoptoticMDMIBindToCRP = 0]
            set CRPInteractWithApoptoticMDMI 1
            set counter88 counter88 + 1
          ]
          set amountOfCRPBindToApoptoticMDMIPerLoopLowerLiver amountOfCRPBindToApoptoticMDMIPerLoopLowerLiver - counter88
          set counter88 0
        ]
      ]
    ]

    ;;Assign a state variable to identify that apoptotic MDMIs that interact with CRP
    ask MDMIs with[not any? other MDMIs-here with[apoptoticMDMIInteractWithCRP = 1] and any? CRPs-here with[ycor < 0 and CRPInteractWithApoptoticMDMI = 1] and ycor < 0 and MDMIBecomeApoptotic = 1 and apoptoticMDMIInteractWithCRP = 0 and apoptoticMDMIBindToCRP = 0]
    [
      set apoptoticMDMIInteractWithCRP 1
    ]

    ;;CRP bind to apoptotic MDMIs to form a complex
    repeat count CRPs with[CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 0 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
    [
       if any? CRPs with[CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 0 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
       [
         ask one-of CRPs with[CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 0 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
         [
           create-CRPApoptoticMDMI-links-with MDMIs-here with[apoptoticMDMIInteractWithCRP = 1 and apoptoticMDMIBindToCRP = 0]
           set CRPBindToApoptoticMDMI 1
         ]
       ]

       ask MDMIs with[apoptoticMDMIInteractWithCRP = 1 and apoptoticMDMIBindToCRP = 0 and any? CRPs-here with[CRPBindToApoptoticMDMI = 1]]
       [
         set apoptoticMDMIBindToCRP 1
       ]
    ]

    ;;Avoid to assign a state variable to identify apoptotic MDMIs that NOT interact with CRP
    ask MDMIs with[apoptoticMDMIInteractWithCRP = 1 and apoptoticMDMIBindToCRP = 1 and not any? CRPs-here with[CRPInteractWithApoptoticMDMI = 1]]
    [
      set apoptoticMDMIInteractWithCRP 0
      set apoptoticMDMIBindToCRP 0
    ]
  ]
end

to CRPOpsonizedApoptoticMDMIPhagocytizeByKupfferCellSubRoutine
  if (counter != 0)
  [
    ;;CRP-apoptotic-MDMI complex move to kupffer cells (upper liver sinusoid)
    if any? KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticMDMIComplexMoveToKupfferCellPerLoopUpperLiver amountOfCRPApoptoticMDMIComplexMoveToKupfferCellPerLoopUpperLiver + percentageOfCRPApoptoticMDMIComplexMoveToKupfferCellPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIComplexMoveToKupfferCellPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIComplexMoveToKupfferCellPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticMDMIPhagocytizeByKupfferCell 1
              set counter89 counter89 + 1
            ]
          ]

          ask KupfferCells with[ycor > 0 and any? CRPs-here with[movedCRP = 1] and not any? other KupfferCells-here with[targetKupfferCell = 1]]
          [
            set targetKupfferCell 1
            set kupfferCellInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of KupfferCells with[ycor > 0 and targetKupfferCell = 1]
              set CRPOpsonizedApoptoticMDMIPhagocytizeByKupfferCell 1
            ]
            set movedCRP 0
          ]

          ask KupfferCells with[ycor > 0 and targetKupfferCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetKupfferCell 0
          ]
        ]

        set amountOfCRPApoptoticMDMIComplexMoveToKupfferCellPerLoopUpperLiver amountOfCRPApoptoticMDMIComplexMoveToKupfferCellPerLoopUpperLiver - counter89
        set counter89 0
      ]
    ]

    ;;CRP-apoptotic-MDMI complex move to kupffer cells (lower liver sinusoid)
    if any? KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticMDMIComplexMoveToKupfferCellPerLoopLowerLiver amountOfCRPApoptoticMDMIComplexMoveToKupfferCellPerLoopLowerLiver + percentageOfCRPApoptoticMDMIComplexMoveToKupfferCellPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIComplexMoveToKupfferCellPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIComplexMoveToKupfferCellPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticMDMIPhagocytizeByKupfferCell 1
              set counter90 counter90 + 1
            ]
          ]

          ask KupfferCells with[ycor < 0 and any? CRPs-here with[movedCRP = 1] and not any? other KupfferCells-here with[targetKupfferCell = 1]]
          [
            set targetKupfferCell 1
            set kupfferCellInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of KupfferCells with[ycor < 0 and targetKupfferCell = 1]
              set CRPOpsonizedApoptoticMDMIPhagocytizeByKupfferCell 1
            ]
            set movedCRP 0
          ]

          ask KupfferCells with[ycor < 0 and targetKupfferCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetKupfferCell 0
          ]
        ]

        set amountOfCRPApoptoticMDMIComplexMoveToKupfferCellPerLoopLowerLiver amountOfCRPApoptoticMDMIComplexMoveToKupfferCellPerLoopLowerLiver - counter90
        set counter90 0
      ]
    ]

    ;;CRP-apoptotic-MDMI complex are phagocytized by kupffer cells
    ask CRPs with[CRPApoptoticMDMIPhagocytizeByKupfferCell = 1]
    [
      set CRPApoptoticMDMIPhagocytizeByKupfferCellDieAt? CRPApoptoticMDMIPhagocytizeByKupfferCellDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticMDMIPhagocytizeByKupfferCellDieAt? >= timeOfApoptoticMDMICRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ;;Assign a state variable to identify kupffer cells that NOT interact with CRPs
    ask KupfferCells with[kupfferCellInteractWithCRPTypeComplex = 1 and not any? CRPs-here with[CRPApoptoticMDMIPhagocytizeByKupfferCell = 1]]
    [
      set kupfferCellInteractWithCRPTypeComplex 0
    ]
  ]
end

to CRPOpsonizedApoptoticMDMIPhagocytizeByMastCellSubRoutine
  if (counter != 0)
  [
    ;;CRP-apoptotic-MDMI complex move to mast cells (upper liver sinusoid)
    if any? MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
    [
      set amountOfCRPApoptoticMDMIComplexMoveToMastCellPerLoopUpperLiver amountOfCRPApoptoticMDMIComplexMoveToMastCellPerLoopUpperLiver + percentageOfCRPApoptoticMDMIComplexMoveToMastCellPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIComplexMoveToMastCellPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIComplexMoveToMastCellPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
            [
              set movedCRP 1
              move-to one-of MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
              set CRPApoptoticMDMIPhagocytizeByMastCell 1
              set counter91 counter91 + 1
            ]
          ]

          ask MastCells with[ycor > 0 and any? CRPs-here with[movedCRP = 1] and not any? other MastCells-here with[targetMastCell = 1]]
          [
            set targetMastCell 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MastCells with[ycor > 0 and targetMastCell = 1]
              set CRPOpsonizedApoptoticMDMIPhagocytizeByMastCell 1
            ]
            set movedCRP 0
          ]

          ask MastCells with[ycor > 0 and targetMastCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMastCell 0
          ]
        ]

        set amountOfCRPApoptoticMDMIComplexMoveToMastCellPerLoopUpperLiver amountOfCRPApoptoticMDMIComplexMoveToMastCellPerLoopUpperLiver - counter91
        set counter91 0
      ]
    ]

    ;;CRP-apoptotic-MDMI complex move to mast cells (lower liver sinusoid)
    if any? MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
    [
      set amountOfCRPApoptoticMDMIComplexMoveToMastCellPerLoopLowerLiver amountOfCRPApoptoticMDMIComplexMoveToMastCellPerLoopLowerLiver + percentageOfCRPApoptoticMDMIComplexMoveToMastCellPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIComplexMoveToMastCellPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIComplexMoveToMastCellPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
            [
              set movedCRP 1
              move-to one-of MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
              set CRPApoptoticMDMIPhagocytizeByMastCell 1
              set counter92 counter92 + 1
            ]
          ]

          ask MastCells with[ycor < 0 and any? CRPs-here with[movedCRP = 1] and not any? other MastCells-here with[targetMastCell = 1]]
          [
            set targetMastCell 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MastCells with[ycor < 0 and targetMastCell = 1]
              set CRPOpsonizedApoptoticMDMIPhagocytizeByMastCell 1
            ]
            set movedCRP 0
          ]

          ask MastCells with[ycor < 0 and targetMastCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMastCell 0
          ]
        ]

        set amountOfCRPApoptoticMDMIComplexMoveToMastCellPerLoopLowerLiver amountOfCRPApoptoticMDMIComplexMoveToMastCellPerLoopLowerLiver - counter92
        set counter92 0
      ]
    ]

    ;;CRP-apoptotic-MDMI complex are phagocytized by mast cells
    ask CRPs with[CRPApoptoticMDMIPhagocytizeByMastCell = 1]
    [
      set CRPApoptoticMDMIPhagocytizeByMastCellDieAt? CRPApoptoticMDMIPhagocytizeByMastCellDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticMDMIPhagocytizeByMastCellDieAt? >= timeOfApoptoticMDMICRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]
  ]
end

to CRPOpsonizedApoptoticMDMIPhagocytizeByNeutrophilSubRoutine
  if (counter != 0)
  [
    ;;CRP-apoptotic-MDMI complex move to neutrophils (upper liver sinusoid)
    if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticMDMIMoveToNeutrophilPerLoopUpperLiver amountOfCRPApoptoticMDMIMoveToNeutrophilPerLoopUpperLiver + percentageOfCRPApoptoticMDMIMoveToNeutrophilPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIMoveToNeutrophilPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIMoveToNeutrophilPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticMDMIPhagocytizeByNeutrophil 1
              set counter93 counter93 + 1
            ]
          ]

          ask ActivatedNeutrophils with[ycor > 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 1
            set activatedNeutrophilInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of ActivatedNeutrophils with[ycor > 0 and targetNeutrophil = 1]
              set CRPOpsonizedApoptoticMDMIPhagocytizeByNeutrophil 1
            ]
            set movedCRP 0
          ]

          ask ActivatedNeutrophils with[ycor > 0 and targetNeutrophil = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 0
          ]
        ]

        set amountOfCRPApoptoticMDMIMoveToNeutrophilPerLoopUpperLiver amountOfCRPApoptoticMDMIMoveToNeutrophilPerLoopUpperLiver - counter93
        set counter93 0
      ]
    ]

    ;;CRP-apoptotic-MDMI complex move to neutrophils (lower liver sinusoid)
    if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticMDMIMoveToNeutrophilPerLoopLowerLiver amountOfCRPApoptoticMDMIMoveToNeutrophilPerLoopLowerLiver + percentageOfCRPApoptoticMDMIMoveToNeutrophilPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIMoveToNeutrophilPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIMoveToNeutrophilPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticMDMIPhagocytizeByNeutrophil 1
              set counter94 counter94 + 1
            ]
          ]

          ask ActivatedNeutrophils with[ycor < 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 1
            set activatedNeutrophilInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of ActivatedNeutrophils with[ycor < 0 and targetNeutrophil = 1]
              set CRPOpsonizedApoptoticMDMIPhagocytizeByNeutrophil 1
            ]
            set movedCRP 0
          ]

          ask ActivatedNeutrophils with[ycor < 0 and targetNeutrophil = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 0
          ]
        ]

        set amountOfCRPApoptoticMDMIMoveToNeutrophilPerLoopLowerLiver amountOfCRPApoptoticMDMIMoveToNeutrophilPerLoopLowerLiver - counter94
        set counter94 0
      ]
    ]

    ;;CRP-apoptotic-MDMI complex are phagocytized by neutrophils
    ask CRPs with[CRPApoptoticMDMIPhagocytizeByNeutrophil = 1]
    [
      set CRPApoptoticMDMIPhagocytizeByNeutrophilDieAt? CRPApoptoticMDMIPhagocytizeByNeutrophilDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticMDMIPhagocytizeByNeutrophilDieAt? >= timeOfApoptoticMDMICRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ask ActivatedNeutrophils with[activatedNeutrophilInteractWithCRPTypeComplex = 1 and not any? CRPs-here with[CRPApoptoticMDMIPhagocytizeByNeutrophil = 1]]
    [
      set activatedNeutrophilInteractWithCRPTypeComplex 0
    ]
  ]
end

to CRPOpsonizedApoptoticMDMIPhagocytizeByMDMISubRoutine
 if (counter != 0)
  [
    ;;CRP-apoptotic-MDMI complex move to MDMIs (upper liver sinusoid)
    if any? MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticMDMIMoveToMDMIPerLoopUpperLiver amountOfCRPApoptoticMDMIMoveToMDMIPerLoopUpperLiver + percentageOfCRPApoptoticMDMIMoveToMDMIPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIMoveToMDMIPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIMoveToMDMIPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticMDMIPhagocytizeByMDMI 1
              set counter95 counter95 + 1
            ]
          ]

          ask MDMIs with[ycor > 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 1
            set MDMIInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIs with[ycor > 0 and targetMDMI = 1]
              set CRPOpsonizedApoptoticMDMIPhagocytizeByMDMI 1
            ]
            set movedCRP 0
          ]

          ask MDMIs with[ycor > 0 and targetMDMI = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 0
          ]
        ]

        set amountOfCRPApoptoticMDMIMoveToMDMIPerLoopUpperLiver amountOfCRPApoptoticMDMIMoveToMDMIPerLoopUpperLiver - counter95
        set counter95 0
      ]
    ]

    ;;CRP-apoptotic-MDMI complex move to MDMIs (lower liver sinusoid)
    if any? MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticMDMIMoveToMDMIPerLoopLowerLiver amountOfCRPApoptoticMDMIMoveToMDMIPerLoopLowerLiver + percentageOfCRPApoptoticMDMIMoveToMDMIPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIMoveToMDMIPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIMoveToMDMIPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticMDMIPhagocytizeByMDMI 1
              set counter96 counter96 + 1
            ]
          ]

          ask MDMIs with[ycor < 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 1
            set MDMIInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIs with[ycor < 0 and targetMDMI = 1]
              set CRPOpsonizedApoptoticMDMIPhagocytizeByMDMI 1
            ]
            set movedCRP 0
          ]

          ask MDMIs with[ycor < 0 and targetMDMI = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 0
          ]
        ]

        set amountOfCRPApoptoticMDMIMoveToMDMIPerLoopLowerLiver amountOfCRPApoptoticMDMIMoveToMDMIPerLoopLowerLiver - counter96
        set counter96 0
      ]
    ]

    ;;CRP-apoptotic-MDMI complex are phagocytized by MDMIs
    ask CRPs with[CRPApoptoticMDMIPhagocytizeByMDMI = 1]
    [
      set CRPApoptoticMDMIPhagocytizeByMDMIDieAt? CRPApoptoticMDMIPhagocytizeByMDMIDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticMDMIPhagocytizeByMDMIDieAt? >= timeOfApoptoticMDMICRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ;;Assign a state variable to identify MDMIs that NOT interact with CRPs
    ask MDMIs with[MDMIInteractWithCRPTypeComplex = 1 and not any? CRPs-here with[CRPApoptoticMDMIPhagocytizeByMDMI = 1]]
    [
      set MDMIInteractWithCRPTypeComplex 0
      set MDMIProduceTNFAlpha 0
    ]
  ]
end

to CRPOpsonizedApoptoticMDMIPhagocytizeByMDMIISubRoutine
  if (counter != 0)
  [
    ;;CRP-apoptotic-MDMI complex move to MDMIIs (upper liver sinusoid)
    if any? MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
    [
      set amountOfCRPApoptoticMDMIMoveToMDMIIPerLoopUpperLiver amountOfCRPApoptoticMDMIMoveToMDMIIPerLoopUpperLiver + percentageOfCRPApoptoticMDMIMoveToMDMIIPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIMoveToMDMIIPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIMoveToMDMIIPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
            [
              set movedCRP 1
              move-to one-of MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
              set CRPApoptoticMDMIPhagocytizeByMDMII 1
              set counter97 counter97 + 1
            ]
          ]

          ask MDMIIs with[ycor > 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIIs with[ycor > 0 and targetMDMII = 1]
              set CRPOpsonizedApoptoticMDMIPhagocytizeByMDMII 1
            ]
            set movedCRP 0
          ]

          ask MDMIIs with[ycor > 0 and targetMDMII = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 0
          ]
        ]

        set amountOfCRPApoptoticMDMIMoveToMDMIIPerLoopUpperLiver amountOfCRPApoptoticMDMIMoveToMDMIIPerLoopUpperLiver - counter97
        set counter97 0
      ]
    ]

    ;;CRP-apoptotic-MDMI complex move to MDMIIs (lower liver sinusoid)
    if any? MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
    [
      set amountOfCRPApoptoticMDMIMoveToMDMIIPerLoopLowerLiver amountOfCRPApoptoticMDMIMoveToMDMIIPerLoopLowerLiver + percentageOfCRPApoptoticMDMIMoveToMDMIIPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIMoveToMDMIIPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIMoveToMDMIIPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMI = 1 and CRPBindToApoptoticMDMI = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
            [
              set movedCRP 1
              move-to one-of MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
              set CRPApoptoticMDMIPhagocytizeByMDMII 1
              set counter98 counter98 + 1
            ]
          ]

          ask MDMIIs with[ycor < 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIIs with[ycor < 0 and targetMDMII = 1]
              set CRPOpsonizedApoptoticMDMIPhagocytizeByMDMII 1
            ]
            set movedCRP 0
          ]

          ask MDMIIs with[ycor < 0 and targetMDMII = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 0
          ]
        ]

        set amountOfCRPApoptoticMDMIMoveToMDMIIPerLoopLowerLiver amountOfCRPApoptoticMDMIMoveToMDMIIPerLoopLowerLiver - counter98
        set counter98 0
      ]
    ]

    ;;CRP-apoptotic-MDMI complex are phagocytized by MDMIIs
    ask CRPs with[CRPApoptoticMDMIPhagocytizeByMDMII = 1]
    [
      set CRPApoptoticMDMIPhagocytizeByMDMIIDieAt? CRPApoptoticMDMIPhagocytizeByMDMIIDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticMDMIPhagocytizeByMDMIIDieAt? >= timeOfApoptoticMDMICRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]
  ]
end

to CRPBindToApoptoticMDMIISubRoutine
  if (counter != 0)
  [
    ;;CRP move to the site of apoptotic MDMIIs (upper liver sinusoid)
    if any? MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 1 and apoptoticMDMIIInteractWithCRP = 0 and apoptoticMDMIIBindToCRP = 0]
    [
      set amountOfCRPBindToApoptoticMDMIIPerLoopUpperLiver amountOfCRPBindToApoptoticMDMIIPerLoopUpperLiver + percentageOfCRPBindToApoptoticMDMIIPerHour * count CRPs with[ycor > 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPBindToApoptoticMDMIIPerLoopUpperLiver >= 1)
      [
        ifelse (amountOfCRPBindToApoptoticMDMIIPerLoopUpperLiver >= count MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 1 and apoptoticMDMIIInteractWithCRP = 0 and apoptoticMDMIIBindToCRP = 0])
        [
          ask n-of (count MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 1 and apoptoticMDMIIInteractWithCRP = 0 and apoptoticMDMIIBindToCRP = 0])CRPs with[ycor > 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 1 and apoptoticMDMIIInteractWithCRP = 0 and apoptoticMDMIIBindToCRP = 0]
            set CRPInteractWithApoptoticMDMII 1
          ]

          set amountOfCRPBindToApoptoticMDMIIPerLoopUpperLiver 0
        ]

        [
          ask n-of (amountOfCRPBindToApoptoticMDMIIPerLoopUpperLiver)CRPs with[ycor > 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 1 and apoptoticMDMIIInteractWithCRP = 0 and apoptoticMDMIIBindToCRP = 0]
            set CRPInteractWithApoptoticMDMII 1
            set counter99 counter99 + 1
          ]
          set amountOfCRPBindToApoptoticMDMIIPerLoopUpperLiver amountOfCRPBindToApoptoticMDMIIPerLoopUpperLiver - counter99
          set counter99 0
        ]
      ]
    ]

    ;;Assign a state variable to identify apoptotic MDMIIs that interact with CRP
    ask MDMIIs with[not any? other MDMIIs-here with[apoptoticMDMIIInteractWithCRP = 1] and any? CRPs-here with[ycor > 0 and CRPInteractWithApoptoticMDMII = 1] and ycor > 0 and MDMIIBecomeApoptotic = 1 and apoptoticMDMIIInteractWithCRP = 0 and apoptoticMDMIIBindToCRP = 0]
    [
      set apoptoticMDMIIInteractWithCRP 1
    ]

    ;;CRP move to the site of apoptotic MDMIIs (lower liver sinusoid)
    if any? MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 1 and apoptoticMDMIIInteractWithCRP = 0 and apoptoticMDMIIBindToCRP = 0]
    [
      set amountOfCRPBindToApoptoticMDMIIPerLoopLowerLiver amountOfCRPBindToApoptoticMDMIIPerLoopLowerLiver + percentageOfCRPBindToApoptoticMDMIIPerHour * count CRPs with[ycor < 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPBindToApoptoticMDMIIPerLoopLowerLiver >= 1)
      [
        ifelse (amountOfCRPBindToApoptoticMDMIIPerLoopUpperLiver >= count MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 1 and apoptoticMDMIIInteractWithCRP = 0 and apoptoticMDMIIBindToCRP = 0])
        [
          ask n-of (count MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 1 and apoptoticMDMIIInteractWithCRP = 0 and apoptoticMDMIIBindToCRP = 0])CRPs with[ycor < 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 1 and apoptoticMDMIIInteractWithCRP = 0 and apoptoticMDMIIBindToCRP = 0]
            set CRPInteractWithApoptoticMDMII 1
          ]

          set amountOfCRPBindToApoptoticMDMIIPerLoopLowerLiver 0
        ]

        [
          ask n-of (amountOfCRPBindToApoptoticMDMIIPerLoopLowerLiver)CRPs with[ycor < 0 and CRPInteractWithSalmonella = 0 and CRPBindToSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and CRPBindToApoptoticKupfferCell = 0 and CRPInteractWithHepatocyteDebris = 0 and CRPBindToHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPBindToApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPBindToApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPBindToApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            move-to one-of MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 1 and apoptoticMDMIIInteractWithCRP = 0 and apoptoticMDMIIBindToCRP = 0]
            set CRPInteractWithApoptoticMDMII 1
            set counter100 counter100 + 1
          ]
          set amountOfCRPBindToApoptoticMDMIIPerLoopLowerLiver amountOfCRPBindToApoptoticMDMIIPerLoopLowerLiver - counter100
          set counter100 0
        ]
      ]
    ]

    ;;Assign a state variable to identify apoptotic MDMIIs that interact with CRP
    ask MDMIIs with[not any? other MDMIIs-here with[apoptoticMDMIIInteractWithCRP = 1] and any? CRPs-here with[ycor < 0 and CRPInteractWithApoptoticMDMII = 1] and ycor < 0 and MDMIIBecomeApoptotic = 1 and apoptoticMDMIIInteractWithCRP = 0 and apoptoticMDMIIBindToCRP = 0]
    [
      set apoptoticMDMIIInteractWithCRP 1
    ]

    ;;CRP bind to apoptotic MDMIIs to form a complex
    repeat count CRPs with[CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 0 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
    [
       if any? CRPs with[CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 0 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
       [
         ask one-of CRPs with[CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 0 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
         [
           create-CRPApoptoticMDMII-links-with MDMIIs-here with[apoptoticMDMIIInteractWithCRP = 1 and apoptoticMDMIIBindToCRP = 0]
           set CRPBindToApoptoticMDMII 1
         ]
       ]

       ask MDMIIs with[apoptoticMDMIIInteractWithCRP = 1 and apoptoticMDMIIBindToCRP = 0 and any? CRPs-here with[CRPBindToApoptoticMDMII = 1]]
       [
         set apoptoticMDMIIBindToCRP 1
       ]
    ]

    ;;Avoid to assign a state variable to identify apoptotic MDMIIs that NOT interact with CRP
    ask MDMIIs with[apoptoticMDMIIInteractWithCRP = 1 and apoptoticMDMIIBindToCRP = 1 and not any? CRPs-here with[CRPInteractWithApoptoticMDMII = 1]]
    [
      set apoptoticMDMIIInteractWithCRP 0
      set apoptoticMDMIIBindToCRP 0
    ]
  ]
end

to CRPOpsonizedApoptoticMDMIIPhagocytizeByKupfferCellSubRoutine
  if (counter != 0)
  [
    ;;CRP-apoptotic-MDMII complex move to kupffer cells (upper liver sinusoid)
    if any? KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticMDMIIComplexMoveToKupfferCellPerLoopUpperLiver amountOfCRPApoptoticMDMIIComplexMoveToKupfferCellPerLoopUpperLiver + percentageOfCRPApoptoticMDMIIComplexMoveToKupfferCellPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIIComplexMoveToKupfferCellPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIIComplexMoveToKupfferCellPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of KupfferCells with[ycor > 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticMDMIIPhagocytizeByKupfferCell 1
              set counter101 counter101 + 1
            ]
          ]

          ask KupfferCells with[ycor > 0 and any? CRPs-here with[movedCRP = 1] and not any? other KupfferCells-here with[targetKupfferCell = 1]]
          [
            set targetKupfferCell 1
            set kupfferCellInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of KupfferCells with[ycor > 0 and targetKupfferCell = 1]
              set CRPOpsonizedApoptoticMDMIIPhagocytizeByKupfferCell 1
            ]
            set movedCRP 0
          ]

          ask KupfferCells with[ycor > 0 and targetKupfferCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetKupfferCell 0
          ]
        ]

        set amountOfCRPApoptoticMDMIIComplexMoveToKupfferCellPerLoopUpperLiver amountOfCRPApoptoticMDMIIComplexMoveToKupfferCellPerLoopUpperLiver - counter101
        set counter101 0
      ]
    ]

    ;;CRP-apoptotic-MDMII complex move to kupffer cells (lower liver sinusoid)
    if any? KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticMDMIIComplexMoveToKupfferCellPerLoopLowerLiver amountOfCRPApoptoticMDMIIComplexMoveToKupfferCellPerLoopLowerLiver + percentageOfCRPApoptoticMDMIIComplexMoveToKupfferCellPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIIComplexMoveToKupfferCellPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIIComplexMoveToKupfferCellPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of KupfferCells with[ycor < 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticMDMIIPhagocytizeByKupfferCell 1
              set counter102 counter102 + 1
            ]
          ]

          ask KupfferCells with[ycor < 0 and any? CRPs-here with[movedCRP = 1] and not any? other KupfferCells-here with[targetKupfferCell = 1]]
          [
            set targetKupfferCell 1
            set kupfferCellInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of KupfferCells with[ycor < 0 and targetKupfferCell = 1]
              set CRPOpsonizedApoptoticMDMIIPhagocytizeByKupfferCell 1
            ]
            set movedCRP 0
          ]

          ask KupfferCells with[ycor < 0 and targetKupfferCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetKupfferCell 0
          ]
        ]

        set amountOfCRPApoptoticMDMIIComplexMoveToKupfferCellPerLoopLowerLiver amountOfCRPApoptoticMDMIIComplexMoveToKupfferCellPerLoopLowerLiver - counter102
        set counter102 0
      ]
    ]

    ;;CRP-apoptotic-MDMII complex are phagocytized by kupffer cells
    ask CRPs with[CRPApoptoticMDMIIPhagocytizeByKupfferCell = 1]
    [
      set CRPApoptoticMDMIIPhagocytizeByKupfferCellDieAt? CRPApoptoticMDMIIPhagocytizeByKupfferCellDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticMDMIIPhagocytizeByKupfferCellDieAt? >= timeOfApoptoticMDMIICRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ;;Assign a state variable to identify kupffer cells that NOT interact with CRPs
    ask KupfferCells with[kupfferCellInteractWithCRPTypeComplex = 1 and not any? CRPs-here with[CRPApoptoticMDMIIPhagocytizeByKupfferCell = 1]]
    [
      set kupfferCellInteractWithCRPTypeComplex 0
    ]
  ]
end

to CRPOpsonizedApoptoticMDMIIPhagocytizeByMastCellSubRoutine
  if (counter != 0)
  [
    ;;CRP-apoptotic-MDMII complex move to mast cells (upper liver sinusoid)
    if any? MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
    [
      set amountOfCRPApoptoticMDMIIComplexMoveToMastCellPerLoopUpperLiver amountOfCRPApoptoticMDMIIComplexMoveToMastCellPerLoopUpperLiver + percentageOfCRPApoptoticMDMIIComplexMoveToMastCellPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIIComplexMoveToMastCellPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIIComplexMoveToMastCellPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
            [
              set movedCRP 1
              move-to one-of MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
              set CRPApoptoticMDMIIPhagocytizeByMastCell 1
              set counter103 counter103 + 1
            ]
          ]

          ask MastCells with[ycor > 0 and any? CRPs-here with[movedCRP = 1] and not any? other MastCells-here with[targetMastCell = 1]]
          [
            set targetMastCell 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MastCells with[ycor > 0 and targetMastCell = 1]
              set CRPOpsonizedApoptoticMDMIIPhagocytizeByMastCell 1
            ]
            set movedCRP 0
          ]

          ask MastCells with[ycor > 0 and targetMastCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMastCell 0
          ]
        ]

        set amountOfCRPApoptoticMDMIIComplexMoveToMastCellPerLoopUpperLiver amountOfCRPApoptoticMDMIIComplexMoveToMastCellPerLoopUpperLiver - counter103
        set counter103 0
      ]
    ]

    ;;CRP-apoptotic-MDMII complex move to mast cells (lower liver sinusoid)
    if any? MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
    [
      set amountOfCRPApoptoticMDMIIComplexMoveToMastCellPerLoopLowerLiver amountOfCRPApoptoticMDMIIComplexMoveToMastCellPerLoopLowerLiver + percentageOfCRPApoptoticMDMIIComplexMoveToMastCellPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIIComplexMoveToMastCellPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIIComplexMoveToMastCellPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
            [
              set movedCRP 1
              move-to one-of MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
              set CRPApoptoticMDMIIPhagocytizeByMastCell 1
              set counter104 counter104 + 1
            ]
          ]

          ask MastCells with[ycor < 0 and any? CRPs-here with[movedCRP = 1] and not any? other MastCells-here with[targetMastCell = 1]]
          [
            set targetMastCell 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MastCells with[ycor < 0 and targetMastCell = 1]
              set CRPOpsonizedApoptoticMDMIIPhagocytizeByMastCell 1
            ]
            set movedCRP 0
          ]

          ask MastCells with[ycor < 0 and targetMastCell = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMastCell 0
          ]
        ]

        set amountOfCRPApoptoticMDMIIComplexMoveToMastCellPerLoopLowerLiver amountOfCRPApoptoticMDMIIComplexMoveToMastCellPerLoopLowerLiver - counter104
        set counter104 0
      ]
    ]

    ;;CRP-apoptotic-MDMII complex are phagocytized by mast cells
    ask CRPs with[CRPApoptoticMDMIIPhagocytizeByMastCell = 1]
    [
      set CRPApoptoticMDMIIPhagocytizeByMastCellDieAt? CRPApoptoticMDMIIPhagocytizeByMastCellDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticMDMIIPhagocytizeByMastCellDieAt? >= timeOfApoptoticMDMIICRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]
  ]
end

to CRPOpsonizedApoptoticMDMIIPhagocytizeByNeutrophilSubRoutine
  if (counter != 0)
  [
    ;;CRP-apoptotic-MDMII complex move to neutrophils (upper liver sinusoid)
    if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticMDMIIMoveToNeutrophilPerLoopUpperLiver amountOfCRPApoptoticMDMIIMoveToNeutrophilPerLoopUpperLiver + percentageOfCRPApoptoticMDMIIMoveToNeutrophilPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIIMoveToNeutrophilPerLoopUpperLiver) >= 1
      [
        repeat (amountOfCRPApoptoticMDMIIMoveToNeutrophilPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticMDMIIPhagocytizeByNeutrophil 1
              set counter105 counter105 + 1
            ]
          ]

          ask ActivatedNeutrophils with[ycor > 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 1
            set activatedNeutrophilInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of ActivatedNeutrophils with[ycor > 0 and targetNeutrophil = 1]
              set CRPOpsonizedApoptoticMDMIIPhagocytizeByNeutrophil 1
            ]
            set movedCRP 0
          ]

          ask ActivatedNeutrophils with[ycor > 0 and targetNeutrophil = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 0
          ]
        ]

        set amountOfCRPApoptoticMDMIIMoveToNeutrophilPerLoopUpperLiver amountOfCRPApoptoticMDMIIMoveToNeutrophilPerLoopUpperLiver - counter105
        set counter105 0
      ]
    ]

    if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      ;;CRP-apoptotic-MDMII complex move to neutrophils (lower liver sinusoid)
      set amountOfCRPApoptoticMDMIIMoveToNeutrophilPerLoopLowerLiver amountOfCRPApoptoticMDMIIMoveToNeutrophilPerLoopLowerLiver + percentageOfCRPApoptoticMDMIIMoveToNeutrophilPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIIMoveToNeutrophilPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIIMoveToNeutrophilPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticMDMIIPhagocytizeByNeutrophil 1
              set counter106 counter106 + 1
            ]
          ]

          ask ActivatedNeutrophils with[ycor < 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 1
            set activatedNeutrophilInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of ActivatedNeutrophils with[ycor < 0 and targetNeutrophil = 1]
              set CRPOpsonizedApoptoticMDMIIPhagocytizeByNeutrophil 1
            ]
            set movedCRP 0
          ]

          ask ActivatedNeutrophils with[ycor < 0 and targetNeutrophil = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetNeutrophil 0
          ]
        ]

        set amountOfCRPApoptoticMDMIIMoveToNeutrophilPerLoopLowerLiver amountOfCRPApoptoticMDMIIMoveToNeutrophilPerLoopLowerLiver - counter106
        set counter106 0
      ]
    ]

    ;;CRP-apoptotic-MDMII complex are phagocytized by neutrophils
    ask CRPs with[CRPApoptoticMDMIIPhagocytizeByNeutrophil = 1]
    [
      set CRPApoptoticMDMIIPhagocytizeByNeutrophilDieAt? CRPApoptoticMDMIIPhagocytizeByNeutrophilDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticMDMIIPhagocytizeByNeutrophilDieAt? >= timeOfApoptoticMDMIICRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ask ActivatedNeutrophils with[activatedNeutrophilInteractWithCRPTypeComplex = 1 and not any? CRPs-here with[CRPApoptoticMDMIIPhagocytizeByNeutrophil = 1]]
    [
      set activatedNeutrophilInteractWithCRPTypeComplex 0
    ]
  ]
end

to CRPOpsonizedApoptoticMDMIIPhagocytizeByMDMISubRoutine
 if (counter != 0)
  [
    ;;CRP-apoptotic-MDMII complex move to MDMIs (upper liver sinusoid)
    if any? MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticMDMIIMoveToMDMIPerLoopUpperLiver amountOfCRPApoptoticMDMIIMoveToMDMIPerLoopUpperLiver + percentageOfCRPApoptoticMDMIIMoveToMDMIPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIIMoveToMDMIPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIIMoveToMDMIPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticMDMIIPhagocytizeByMDMI 1
              set counter107 counter107 + 1
            ]
          ]

          ask MDMIs with[ycor > 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 1
            set MDMIInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIs with[ycor > 0 and targetMDMI = 1]
              set CRPOpsonizedApoptoticMDMIIPhagocytizeByMDMI 1
            ]
            set movedCRP 0
          ]

          ask MDMIs with[ycor > 0 and targetMDMI = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 0
          ]
        ]

        set amountOfCRPApoptoticMDMIIMoveToMDMIPerLoopUpperLiver amountOfCRPApoptoticMDMIIMoveToMDMIPerLoopUpperLiver - counter107
        set counter107 0
      ]
    ]

    ;;CRP-apoptotic-MDMII complex move to MDMIs (lower liver sinusoid)
    if any? MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCRPApoptoticMDMIIMoveToMDMIPerLoopLowerLiver amountOfCRPApoptoticMDMIIMoveToMDMIPerLoopLowerLiver + percentageOfCRPApoptoticMDMIIMoveToMDMIPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIIMoveToMDMIPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIIMoveToMDMIPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              set movedCRP 1
              move-to one-of MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              set CRPApoptoticMDMIIPhagocytizeByMDMI 1
              set counter108 counter108 + 1
            ]
          ]

          ask MDMIs with[ycor < 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 1
            set MDMIInteractWithCRPTypeComplex 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIs with[ycor < 0 and targetMDMI = 1]
              set CRPOpsonizedApoptoticMDMIIPhagocytizeByMDMI 1
            ]
            set movedCRP 0
          ]

          ask MDMIs with[ycor < 0 and targetMDMI = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMI 0
          ]
        ]

        set amountOfCRPApoptoticMDMIIMoveToMDMIPerLoopLowerLiver amountOfCRPApoptoticMDMIIMoveToMDMIPerLoopLowerLiver - counter108
        set counter108 0
      ]
    ]

    ;;CRP-apoptotic-MDMII complex are phagocytized by MDMIs
    ask CRPs with[CRPApoptoticMDMIIPhagocytizeByMDMI = 1]
    [
      set CRPApoptoticMDMIIPhagocytizeByMDMIDieAt? CRPApoptoticMDMIIPhagocytizeByMDMIDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticMDMIIPhagocytizeByMDMIDieAt? >= timeOfApoptoticMDMIICRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ;;Assign a state variable to identify MDMIs that NOT interact with CRPs
    ask MDMIs with[MDMIInteractWithCRPTypeComplex = 1 and not any? CRPs-here with[CRPSalmonellaComplexPhagocytizeByMDMI = 1]]
    [
      set MDMIInteractWithCRPTypeComplex 0
      set MDMIProduceTNFAlpha 0
    ]
  ]
end

to CRPOpsonizedApoptoticMDMIIPhagocytizeByMDMIISubRoutine
  if (counter != 0)
  [
    ;;CRP-apoptotic-MDMII complex move to MDMIIs (upper liver sinusoid)
    if any? MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
    [
      set amountOfCRPApoptoticMDMIIMoveToMDMIIPerLoopUpperLiver amountOfCRPApoptoticMDMIIMoveToMDMIIPerLoopUpperLiver + percentageOfCRPApoptoticMDMIIMoveToMDMIIPerHour * count CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIIMoveToMDMIIPerLoopUpperLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIIMoveToMDMIIPerLoopUpperLiver)
        [
          ask one-of CRPs with[ycor > 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
            [
              set movedCRP 1
              move-to one-of MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
              set CRPApoptoticMDMIIPhagocytizeByMDMII 1
              set counter109 counter109 + 1
            ]
          ]

          ask MDMIIs with[ycor > 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 1
          ]

          ask CRPs with[ycor > 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIIs with[ycor > 0 and targetMDMII = 1]
              set CRPOpsonizedApoptoticMDMIIPhagocytizeByMDMII 1
            ]
            set movedCRP 0
          ]

          ask MDMIIs with[ycor > 0 and targetMDMII = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 0
          ]
        ]

        set amountOfCRPApoptoticMDMIIMoveToMDMIIPerLoopUpperLiver amountOfCRPApoptoticMDMIIMoveToMDMIIPerLoopUpperLiver - counter109
        set counter109 0
      ]
    ]

    ;;CRP-apoptotic-MDMII complex move to MDMIIs (lower liver sinusoid)
    if any? MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
    [
      set amountOfCRPApoptoticMDMIIMoveToMDMIIPerLoopLowerLiver amountOfCRPApoptoticMDMIIMoveToMDMIIPerLoopLowerLiver + percentageOfCRPApoptoticMDMIIMoveToMDMIIPerHour * count CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      if (amountOfCRPApoptoticMDMIIMoveToMDMIIPerLoopLowerLiver >= 1)
      [
        repeat (amountOfCRPApoptoticMDMIIMoveToMDMIIPerLoopLowerLiver)
        [
          ask one-of CRPs with[ycor < 0 and CRPInteractWithApoptoticMDMII = 1 and CRPBindToApoptoticMDMII = 1 and CRPSalmonellaComplexPhagocytizeByKupfferCell = 0 and CRPSalmonellaComplexPhagocytizeByMastCell = 0 and CRPSalmonellaComplexPhagocytizeByNeutrophil = 0 and CRPSalmonellaComplexPhagocytizeByMDMI = 0 and CRPSalmonellaComplexPhagocytizeByMDMII = 0 and CRPApoptoticKupfferCellPhagocytizeByKupfferCell = 0 and CRPApoptoticKupfferCellPhagocytizeByMastCell = 0 and CRPApoptoticKupfferCellPhagocytizeByNeutrophil = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMI = 0 and CRPApoptoticKupfferCellPhagocytizeByMDMII = 0 and CRPHepatocyteDebrisPhagocytizeByKupfferCell = 0 and CRPHepatocyteDebrisPhagocytizeByMastCell = 0 and CRPHepatocyteDebrisPhagocytizeByNeutrophil = 0 and CRPHepatocyteDebrisPhagocytizeByMDMI = 0 and CRPHepatocyteDebrisPhagocytizeByMDMII = 0 and CRPApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPApoptoticNeutrophilPhagocytizeByMDMII = 0 and CRPApoptoticMDMIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIPhagocytizeByMDMII = 0 and CRPApoptoticMDMIIPhagocytizeByKupfferCell = 0 and CRPApoptoticMDMIIPhagocytizeByMastCell = 0 and CRPApoptoticMDMIIPhagocytizeByNeutrophil = 0 and CRPApoptoticMDMIIPhagocytizeByMDMI = 0 and CRPApoptoticMDMIIPhagocytizeByMDMII = 0 and CRPUndergoApoptosisByNature = 0]
          [
            if any? MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
            [
              set movedCRP 1
              move-to one-of MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
              set CRPApoptoticMDMIIPhagocytizeByMDMII 1
              set counter110 counter110 + 1
            ]
          ]

          ask MDMIIs with[ycor < 0 and any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 1
          ]

          ask CRPs with[ycor < 0 and movedCRP = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIIs with[ycor < 0 and targetMDMII = 1]
              set CRPOpsonizedApoptoticMDMIIPhagocytizeByMDMII 1
            ]
            set movedCRP 0
          ]

          ask MDMIIs with[ycor < 0 and targetMDMII = 1 and not any? CRPs-here with[movedCRP = 1]]
          [
            set targetMDMII 0
          ]
        ]

        set amountOfCRPApoptoticMDMIIMoveToMDMIIPerLoopLowerLiver amountOfCRPApoptoticMDMIIMoveToMDMIIPerLoopLowerLiver - counter110
        set counter110 0
      ]
    ]

    ;;CRP-apoptotic-MDMII complex are phagocytized by MDMIIs
    ask CRPs with[CRPApoptoticMDMIIPhagocytizeByMDMII = 1]
    [
      set CRPApoptoticMDMIIPhagocytizeByMDMIIDieAt? CRPApoptoticMDMIIPhagocytizeByMDMIIDieAt? + 1
    ]

    ask CRPs with[CRPApoptoticMDMIIPhagocytizeByMDMIIDieAt? >= timeOfApoptoticMDMIICRPComplexDie]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]
  ]
end

to CRPUndergoCatabolismByNatureSubRoutine
  if (counter != 0)
  [
    ifelse (rateOfCRPUndergoApoptosisByNaturePerHour * count CRPs with[CRPInteractWithSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and  CRPInteractWithHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]) >= 1
    [
      ask n-of (rateOfCRPUndergoApoptosisByNaturePerHour * count CRPs with[CRPInteractWithSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and  CRPInteractWithHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]) CRPs with[CRPInteractWithSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and  CRPInteractWithHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      [
        die
      ]
    ]

    [
      set CRPReleaseAmountByHepatocytePerLoop CRPReleaseAmountByHepatocytePerLoop - rateOfCRPUndergoApoptosisByNaturePerHour * count CRPs with[CRPInteractWithSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and  CRPInteractWithHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
    ]

    if (CRPReleaseAmountByHepatocytePerLoop < 0)
    [
      if any? CRPs with[CRPInteractWithSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and  CRPInteractWithHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
      [
        ask one-of CRPs with[CRPInteractWithSalmonella = 0 and CRPInteractWithApoptoticKupfferCell = 0 and  CRPInteractWithHepatocyteDebris = 0 and CRPInteractWithApoptoticNeutrophil = 0 and CRPInteractWithApoptoticMDMI = 0 and CRPInteractWithApoptoticMDMII = 0 and CRPUndergoApoptosisByNature = 0]
        [
          die
        ]
      ]
      set CRPReleaseAmountByHepatocytePerLoop CRPReleaseAmountByHepatocytePerLoop + 1
    ]
  ]
end
;;------------------------------------------------------------------------------------------------------------------------------------------

;;------------------------Behaviors of hepatocyte debris in liver inflammation--------------------------------------------------------------
to hepatocyteDebrisRandomlyMoveInLiverTissueSubRoutine
  if (counter != 0)
  [
    repeat (count HepatocyteDebrises with [hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0])
    [
      if any? HepatocyteDebrises with [hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0]
      [
        ask one-of HepatocyteDebrises with [hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0]
        [
          if any? KupfferCells with [kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and distance myself <= patch-size]
          [
            move-to one-of KupfferCells with [kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and distance myself <= patch-size]
            set hepatocyteDebrisInteractWithKupfferCell 1
          ]
        ]
      ]

      if any? HepatocyteDebrises with [hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0]
      [
        ask one-of HepatocyteDebrises with [hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0]
        [
          if any? MastCells with [mastCellUndergoApoptosisByNature = 0 and distance myself <= patch-size]
          [
            move-to one-of MastCells with [mastCellUndergoApoptosisByNature = 0 and distance myself <= patch-size]
            set hepatocyteDebrisInteractWithMastCell 1
          ]
        ]
      ]

      if any? HepatocyteDebrises with [hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0]
      [
        ask one-of HepatocyteDebrises with [hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0]
        [
          if any? ActivatedNeutrophils with[activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and distance myself <= patch-size]
          [
            move-to one-of ActivatedNeutrophils with[activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and distance myself <= patch-size]
            set hepatocyteDebrisInteractWithNeutrophil 1
          ]
        ]
      ]

      if any? HepatocyteDebrises with [hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0]
      [
        ask one-of HepatocyteDebrises with [hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0]
        [
          if any? MDMIs with[MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and distance myself <= patch-size]
          [
            move-to one-of MDMIs with[MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and distance myself <= patch-size]
            set hepatocyteDebrisInteractWithMDMI 1
          ]
        ]
      ]

      if any? HepatocyteDebrises with [hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0]
      [
        ask one-of HepatocyteDebrises with [hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0 and hepatocyteDebrisBindToCRP = 0]
        [
          if any? MDMIIs with[MDMIIBecomeApoptotic = 0 and distance myself <= patch-size]
          [
            move-to one-of MDMIIs with[MDMIIBecomeApoptotic = 0 and distance myself <= patch-size]
            set hepatocyteDebrisInteractWithMDMII 1
          ]
        ]
      ]
    ]

    ;;Assign a state variable to identify kupffer cells that phagocytize hepatocyte debris
    ask KupfferCells with [kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and any? HepatocyteDebrises-here with [hepatocyteDebrisInteractWithKupfferCell = 1]]
    [
      set kupfferCellPhagocytizeHepatocyteDebris 1
    ]

    ;;Assign a state variable to identify mast cells that phagocytize hepatocyte debris
    ask MastCells with [mastCellUndergoApoptosisByNature = 0 and any? HepatocyteDebrises-here with [hepatocyteDebrisInteractWithMastCell = 1]]
    [
      set mastCellPhagocytizeHepatocyteDebris 1
    ]

    ;;Assign a state variable to identify activated neutrophils that phagocytize hepatocyte debris
    ask ActivatedNeutrophils with [activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and any? HepatocyteDebrises-here with[hepatocyteDebrisInteractWithNeutrophil = 1]]
    [
      set activatedNeutrophilPhagocytizeHepatocyteDebris 1
    ]

    ;;Assign a state variable to identify MDMIs that phagocytize hepatocyte debris
    ask MDMIs with[MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and any? HepatocyteDebrises-here with[hepatocyteDebrisInteractWithMDMI = 1]]
    [
      set MDMIPhagocytizeHepatocyteDebris 1
    ]

    ;;Assign a state variable to identify MDMIIs that phagocytize hepatocyte debris
    ask MDMIIs with[MDMIIBecomeApoptotic = 0 and any? HepatocyteDebrises-here with[hepatocyteDebrisInteractWithMDMII = 1]]
    [
      set MDMIIPhagocytizeHepatocyteDebris 1
    ]
  ]
end

to hepatocyteDebrisPhagocytizeByInflammatoryCellSubRoutine
  if (counter != 0)
  [
    ask HepatocyteDebrises with [hepatocyteDebrisInteractWithKupfferCell = 1 or hepatocyteDebrisInteractWithMastCell = 1 or hepatocyteDebrisInteractWithNeutrophil = 1 or hepatocyteDebrisInteractWithMDMI = 1 or hepatocyteDebrisInteractWithMDMII = 1]
    [
      set hepatocyteDebrisDieAt? hepatocyteDebrisDieAt? + 1
    ]

    ask HepatocyteDebrises with[(hepatocyteDebrisInteractWithKupfferCell = 1 or hepatocyteDebrisInteractWithMastCell = 1 or hepatocyteDebrisInteractWithNeutrophil = 1 or hepatocyteDebrisInteractWithMDMI = 1 or hepatocyteDebrisInteractWithMDMII = 1) and hepatocyteDebrisDieAt? >= 2]
    [
      die
    ]

    ;;Reset the state variables to identify kupffer cells, mast cells, activated neutrophils, MDMIs, and MDMIIs that NOT interact with hepatocyte debris
    ask KupfferCells with [kupfferCellPhagocytizeHepatocyteDebris = 1 and not any? HepatocyteDebrises-here with [hepatocyteDebrisInteractWithKupfferCell = 1]]
    [
      set kupfferCellPhagocytizeHepatocyteDebris 0
      set kupfferCellProduceTNFAlpha 0
      set kupfferCellProduceIL10 0
    ]

    ask MastCells with [mastCellPhagocytizeHepatocyteDebris = 1 and not any? HepatocyteDebrises-here with [hepatocyteDebrisInteractWithMastCell = 1]]
    [
      set mastCellPhagocytizeHepatocyteDebris 0
    ]

    ask ActivatedNeutrophils with[activatedNeutrophilPhagocytizeHepatocyteDebris = 1 and not any? HepatocyteDebrises-here with[hepatocyteDebrisInteractWithNeutrophil = 1]]
    [
      set activatedNeutrophilPhagocytizeHepatocyteDebris 0
    ]

    ask MDMIs with[MDMIPhagocytizeHepatocyteDebris = 1 and not any? HepatocyteDebrises-here with[hepatocyteDebrisInteractWithMDMI = 1]]
    [
      set MDMIPhagocytizeHepatocyteDebris 0
    ]

    ask MDMIIs with[MDMIIPhagocytizeHepatocyteDebris = 1 and not any? HepatocyteDebrises-here with[hepatocyteDebrisInteractWithMDMII = 1]]
    [
      set MDMIIPhagocytizeHepatocyteDebris 0
    ]
  ]
end

to hepatocyteDebrisDieByNatureSubRoutine
  if (counter != 0)
  [
    ;;Avoid to assign a state variable to hepatocyte debris that NOT interact with CRP
    ask HepatocyteDebrises with[hepatocyteDebrisInteractWithCRP = 1 and hepatocyteDebrisBindToCRP = 1 and not any? CRPs-here with[CRPInteractWithHepatocyteDebris = 1]]
    [
      set hepatocyteDebrisInteractWithCRP 0
      set hepatocyteDebrisBindToCRP 0
    ]

    ask HepatocyteDebrises with[hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0]
    [
      set hepatocyteDebrisDieByNatureAt? hepatocyteDebrisDieByNatureAt? + 1
    ]

    ask HepatocyteDebrises with[hepatocyteDebrisDieByNatureAt? >= 3 and hepatocyteDebrisInteractWithKupfferCell = 0 and hepatocyteDebrisInteractWithMastCell = 0 and hepatocyteDebrisInteractWithNeutrophil = 0 and hepatocyteDebrisInteractWithMDMI = 0 and hepatocyteDebrisInteractWithMDMII = 0 and hepatocyteDebrisInteractWithCRP = 0]
    [
      die
    ]
  ]
end
;;------------------------------------------------------------------------------------------------------------------------------------------

;;-----------------------------------Behaviors of mast cells in liver inflammation----------------------------------------------------------
to mastCellProliferateSubRoutine
  if (counter != 0)
  [
    let proliferateRate proliferateRateOfMastCellPerHourLowerLevel + random-float(proliferateRateOfMastCellPerHourUpperLevel - proliferateRateOfMastCellPerHourLowerLevel)
    set mastCellProliferationAmountPerLoop  mastCellProliferationAmountPerLoop + (proliferateRate * (1 - count mastCells with [mastCellInteractWithAntibodySalmonellaComplex = 0 and mastCellInteractWithSalmonella = 0 and mastCellPhagocytizeHepatocyteDebris = 0 and mastCellUndergoApoptosisByNature = 0] / mastCellInitialNumber) * count mastCells with [mastCellInteractWithAntibodySalmonellaComplex = 0 and mastCellInteractWithSalmonella = 0 and mastCellPhagocytizeHepatocyteDebris = 0 and mastCellUndergoApoptosisByNature = 0])
    if (mastCellProliferationAmountPerLoop >= 1)
    [
      repeat mastCellProliferationAmountPerLoop
      [
        if any? patches with [(pycor >= int (max-pycor - max-pycor / 1.1) + 64 and pycor <= int (max-pycor - max-pycor / 1.1) + 76) or (pycor <= int (-(max-pycor - max-pycor / 1.1)) - 64 and pycor >= int (-(max-pycor - max-pycor / 1.1)) - 76) and not any? MastCells-here]
        [
          ask one-of patches with [(pycor >= int (max-pycor - max-pycor / 1.1) + 64 and pycor <= int (max-pycor - max-pycor / 1.1) + 76) or (pycor <= int (-(max-pycor - max-pycor / 1.1)) - 64 and pycor >= int (-(max-pycor - max-pycor / 1.1)) - 76) and not any? MastCells-here]
          [
            sprout-MastCells 1
            [
              set size 0.8 * patch-size
              set heading 0
              set color 117
              set mastCellInteractWithIL10 0
            ]
          ]

          set counter23 counter23 + 1
        ]
      ]

      set mastCellProliferationAmountPerLoop mastCellProliferationAmountPerLoop - counter23
      set counter23 0
    ]
  ]
end

to mastCellProduceHistamineByInteractWithAntibodySalmonellaComplexSubRoutine
  if (counter != 0)
  [
    let histamineMaxReleaseRate maximumReleaseRateOfHistamineByMastCellIfInteractWithAntibodySalmonellaComplexPerHour
    let histamineReleaseRate (histamineMaxReleaseRate * count MastCells with[mastCellInteractWithAntibodySalmonellaComplex = 1]) / (5000 + count MastCells with[mastCellInteractWithAntibodySalmonellaComplex = 1])
    set histamineReleaseAmountByMastCellPerLoop histamineReleaseAmountByMastCellPerLoop + histamineReleaseRate * count MastCells with[mastCellInteractWithAntibodySalmonellaComplex = 1] / 0.1
    if (histamineReleaseAmountByMastCellPerLoop >= 1)
    [
      repeat histamineReleaseAmountByMastCellPerLoop
      [
        ask one-of MastCells with[mastCellProduceHistamine = 0 and mastCellInteractWithAntibodySalmonellaComplex = 1]
        [
          hatch 1
          [
            set breed Histamines
            set shape "Histamine"
            set size 0.5 * patch-size
            set color 37
          ]
          set mastCellProduceHistamine 1
        ]
      ]
      set histamineReleaseAmountByMastCellPerLoop 0

      ask MastCells with[mastCellProduceHistamine = 0 and mastCellInteractWithAntibodySalmonellaComplex = 1]
      [
        set mastCellProduceHistamine 1
      ]
    ]
  ]
end

to mastCellProduceTNFAlphaByInteractWithAntibodySalmonellaComplexSubRoutine
  if (counter != 0)
  [
    if any? MastCells with[mastCellProduceTNFAlphaByAntibodySalmonellaComplex = 0 and mastCellInteractWithAntibodySalmonellaComplex = 1 and mastCellInteractWithIL10 = 0]
    [
      let TNFAlphaMaxReleaseRate maximumReleaseRateOfTNFAlphaByMastCellIfInteractWithAntibodySalmonellaComplexPerHour
      let TNFAlphaReleaseRate (TNFAlphaMaxReleaseRate * count MastCells with[mastCellProduceTNFAlphaByAntibodySalmonellaComplex = 0 and mastCellInteractWithAntibodySalmonellaComplex = 1 and mastCellInteractWithIL10 = 0]) / (5000 + count MastCells with[mastCellProduceTNFAlphaByAntibodySalmonellaComplex = 0 and mastCellInteractWithAntibodySalmonellaComplex = 1 and mastCellInteractWithIL10 = 0])
      set TNFAlphaReleaseAmountByMastCellInteractWithAntibodySalmonellaComplexPerLoop TNFAlphaReleaseAmountByMastCellInteractWithAntibodySalmonellaComplexPerLoop + TNFAlphaReleaseRate * count MastCells with[mastCellProduceTNFAlphaByAntibodySalmonellaComplex = 0 and mastCellInteractWithAntibodySalmonellaComplex = 1 and mastCellInteractWithIL10 = 0] / amountOfTNFAlphaBeingRepresentedByOneAgent
      set test3 TNFAlphaReleaseAmountByMastCellInteractWithAntibodySalmonellaComplexPerLoop
      if TNFAlphaReleaseAmountByMastCellInteractWithAntibodySalmonellaComplexPerLoop >= 1
      [
        ask one-of MastCells with[mastCellProduceTNFAlphaByAntibodySalmonellaComplex = 0 and mastCellInteractWithAntibodySalmonellaComplex = 1 and mastCellInteractWithIL10 = 0]
        [
          hatch TNFAlphaReleaseAmountByMastCellInteractWithAntibodySalmonellaComplexPerLoop
          [
            set breed TNF-as
            set size 0.7 * patch-size
            set color 45
            set shape "TNF-a"
          ]
          set mastCellProduceTNFAlphaByAntibodySalmonellaComplex 1
        ]
        set TNFAlphaReleaseAmountByMastCellInteractWithAntibodySalmonellaComplexPerLoop 0

        ask MastCells with[mastCellProduceTNFAlphaByAntibodySalmonellaComplex = 0 and mastCellInteractWithAntibodySalmonellaComplex = 1 and mastCellInteractWithIL10 = 0]
        [
          set mastCellProduceTNFAlphaByAntibodySalmonellaComplex 1
        ]
      ]
    ]
  ]
end

to mastCellProduceTNFAlphaByBindingToSalmonellaSubRoutine
  if (counter != 0)
  [
    if any? MastCells with [mastCellProduceTNFAlphaBySalmonella = 0 and mastCellInteractWithSalmonella = 1 and mastCellInteractWithIL10 = 0]
    [
      let TNFAlphaMaxReleaseRate maximumReleaseRateOfTNFAlphaByMastCellPerHour
      let TNFAlphaReleaseRate (TNFAlphaMaxReleaseRate * count MastCells with [mastCellProduceTNFAlphaBySalmonella = 0 and mastCellInteractWithSalmonella = 1 and mastCellInteractWithIL10 = 0])/(5000 + count MastCells with [mastCellProduceTNFAlphaBySalmonella = 0 and mastCellInteractWithSalmonella = 1 and mastCellInteractWithIL10 = 0])
      set TNFAlphaReleaseAmountByMastCellInteractWithSalmonellaPerLoop TNFAlphaReleaseAmountByMastCellInteractWithSalmonellaPerLoop + TNFAlphaReleaseRate * count MastCells with [mastCellProduceTNFAlphaBySalmonella = 0 and mastCellInteractWithSalmonella = 1 and mastCellInteractWithIL10 = 0] / amountOfTNFAlphaBeingRepresentedByOneAgent
      set test4 TNFAlphaReleaseAmountByMastCellInteractWithSalmonellaPerLoop
      if (TNFAlphaReleaseAmountByMastCellInteractWithSalmonellaPerLoop >= 1)
      [
        ask one-of MastCells with [mastCellProduceTNFAlphaBySalmonella = 0 and mastCellInteractWithSalmonella = 1 and mastCellInteractWithIL10 = 0]
        [
          hatch TNFAlphaReleaseAmountByMastCellInteractWithSalmonellaPerLoop
          [
            set breed TNF-as
            set size 0.7 * patch-size
            set color 45
            set shape "TNF-a"
          ]
          set mastCellProduceTNFAlphaBySalmonella 1
        ]

        set TNFAlphaReleaseAmountByMastCellInteractWithSalmonellaPerLoop 0

        ask MastCells with [mastCellProduceTNFAlphaBySalmonella = 0 and mastCellInteractWithSalmonella = 1 and mastCellInteractWithIL10 = 0]
        [
          set mastCellProduceTNFAlphaBySalmonella 1
        ]
      ]
    ]
  ]
end

to mastCellUndergoApoptosisByNatureSubRoutine
  if (counter != 0)
  [
    set amountOfMastCellBeingKilledByNaturePerLoop (1.2E-4 * count MastCells with[mastCellInteractWithAntibodySalmonellaComplex = 0 and mastCellInteractWithSalmonella = 0 and mastCellPhagocytizeHepatocyteDebris = 0 and mastCellUndergoApoptosisByNature = 0])
    ifelse (amountOfMastCellBeingKilledByNaturePerLoop >= 1)
    [
      ask n-of (amountOfMastCellBeingKilledByNaturePerLoop) MastCells with[mastCellInteractWithAntibodySalmonellaComplex = 0 and mastCellInteractWithSalmonella = 0 and mastCellPhagocytizeHepatocyteDebris = 0 and mastCellUndergoApoptosisByNature = 0]
      [
        die
      ]
    ]

    [
      set mastCellProliferationAmountPerLoop mastCellProliferationAmountPerLoop - amountOfMastCellBeingKilledByNaturePerLoop
    ]

    if (mastCellProliferationAmountPerLoop < 0)
    [
      if any? MastCells with[mastCellInteractWithAntibodySalmonellaComplex = 0 and mastCellInteractWithSalmonella = 0 and mastCellPhagocytizeHepatocyteDebris = 0 and mastCellUndergoApoptosisByNature = 0]
      [
        ask one-of MastCells with[mastCellInteractWithAntibodySalmonellaComplex = 0 and mastCellInteractWithSalmonella = 0 and mastCellPhagocytizeHepatocyteDebris = 0 and mastCellUndergoApoptosisByNature = 0]
        [
          die
        ]
      ]
      set mastCellProliferationAmountPerLoop mastCellProliferationAmountPerLoop + 1
    ]

    ;;Release IL-10s from dead mast cells
    ask IL-10s with[IL10InteractWithMastCell = 1 and not any? MastCells-here with[mastCellInteractWithIL10 = 1]]
    [
      set IL10InteractWithMastCell 0
      set IL10BindToMastCell 0
    ]
  ]
end
;;--------------------------------------------------------------------------------------------------------------------------------------------

;;---------------------------Behaviors of SECs in liver inflammation--------------------------------------------------------------------------
to SECsUndergoApoptosisInducedBySalmonellaSubRoutine
  if (counter != 0)
  [
    ask SECs with [SECsInteractWithSalmonella = 1]
    [
      set SECsDieInducedBySalmonellaAt? SECsDieInducedBySalmonellaAt? + 1
    ]

    ask SECs with [SECsInteractWithSalmonella = 1 and SECsDieInducedBySalmonellaAt? >= 1]
    [
      die
    ]

    ;;Release Salmonella from dead SECs
    ask Salmonellas with [salmonellaReplicateWithinSECs = 1 and not any? SECs-here with [SECsInteractWithSalmonella = 1]]
    [
      set salmonellaReplicateWithinSECs 0
      set salmonellaNewlyReleasedFromSECs 1
    ]
  ]
end
;;----------------------------------------------------------------------------------------------------------------------------------------------

;;------------------------Behaviors of resting neutrophils in liver inflammation----------------------------------------------------------------
to restingNeutrophilInfluxToLiverSinusoidFromBoneMarrowSubRoutine
  if (counter != 0 and counter >= timeOfNeutrophilStartToInfluxIntoLiverSinusoid) and (any? Salmonellas with[salmonellaPhagocytizeByKupfferCell = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaPhagocytizeByMDMI = 0] or any? TNF-as or any? HMGB-1s)
  [
    set adjustedRestingNeutrophilCarryCapacityInLiverSinusoid restingNeutrophilCarryCapacityInLiverSinusoid
    if not any? RestingNeutrophils with [restingNeutrophilProduceNewRestingNeutrophil = 1]
    [

      ask one-of RestingNeutrophils with [xcor <= 0.65 * min-pxcor]
      [
        set restingNeutrophilProduceNewRestingNeutrophil 1
      ]
    ]

    if (counter <= 1)
    [
      set influxRateOfRestingNeutrophil influxRateOfRestingNeutrophilToLiverSinusoidFrom0To1
    ]

    if (counter > 1 and counter <= 4)
    [
      set influxRateOfRestingNeutrophil influxRateOfRestingNeutrophilToLiverSinusoidFrom1To4
    ]

    if (counter > 4)
    [
      set influxRateOfRestingNeutrophil influxRateOfRestingNeutrophilToLiverSinusoidFrom4ToEnd
    ]

    ifelse ((influxRateOfRestingNeutrophil * count RestingNeutrophils  * (1 - count RestingNeutrophils  / adjustedRestingNeutrophilCarryCapacityInLiverSinusoid) + count RestingNeutrophils) >= adjustedRestingNeutrophilCarryCapacityInLiverSinusoid)
    [
      set activatedAmountOfRestingNeutrophilPerLoop adjustedRestingNeutrophilCarryCapacityInLiverSinusoid - count RestingNeutrophils
    ]

    [
      set activatedAmountOfRestingNeutrophilPerLoop influxRateOfRestingNeutrophil * count RestingNeutrophils  * (1 - count RestingNeutrophils  / adjustedRestingNeutrophilCarryCapacityInLiverSinusoid)
    ]

    ask RestingNeutrophils with [restingNeutrophilProduceNewRestingNeutrophil = 1]
    [
      hatch activatedAmountOfRestingNeutrophilPerLoop [set restingNeutrophilProduceNewRestingNeutrophil 0]
    ]

    set activatedAmountOfRestingNeutrophilPerLoop 0
  ]
end

to restingNeutrophilMoveToSECsFollowingSignalSentFromCytokineAndGetActivatedSubRoutine
  if (counter != 0 and counter > timeOfNeutrophilStartToInfluxIntoSiteOfInfection) and (any? Salmonellas with[salmonellaPhagocytizeByKupfferCell = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaPhagocytizeByMDMI = 0] or any? TNF-as or any? HMGB-1s) ;;or any? CD4TCells with[CD4TCellInPortalTriad = 0 and apoptoticCD4TCellPhagocytizeByMDMI = 0 and apoptoticCD4TCellPhagocytizeByMDMII = 0 and CD4TCellUndergoApoptosisByNature = 0])
  [
    ;;Corresponding cells or cytokines send signals to ATTRACT circulating neutrophils to SECs
    ask Salmonellas with[salmonellaPhagocytizeByKupfferCell = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaPhagocytizeByMDMI = 0]
    [
      hatch 1
      [
        set breed Signals
        set size 0.2 * patch-size
        set shape "Signal"
        set color black
        move-to one-of SECs
      ]
    ]

    ask TNF-as
    [
      hatch 1
      [
        set breed Signals
        set size 0.2 * patch-size
        set shape "Signal"
        set color black
        move-to one-of SECs
      ]
    ]

    ask HMGB-1s
    [
      hatch 1
      [
        set breed Signals
        set size 0.2 * patch-size
        set shape "Signal"
        set color black
        move-to one-of SECs
      ]
    ]

    ask CD4TCells with[CD4TCellInPortalTriad = 0 and apoptoticCD4TCellPhagocytizeByMDMI = 0 and apoptoticCD4TCellPhagocytizeByMDMII = 0 and CD4TCellUndergoApoptosisByNature = 0]
    [
      hatch 1
      [
        set breed Signals
        set size 0.2 * patch-size
        set shape "Signal"
        set color black
        move-to one-of SECs
      ]
    ]

    ;;Activated neutrophils that phagocytize CRP type complex INHIBIT neutrophils adhere to SECs
    ask ActivatedNeutrophils with[activatedNeutrophilInteractWithCRPTypeComplex = 1]
    [
      hatch 1
      [
        set breed AntiSignals
        set size 0.2 * patch-size
        set shape "Signal"
        set color 124
        move-to one-of SECs
      ]
    ]

    let TNFAlphaConcentration count TNF-as / totalPopulation
    let HMGB1Concentration HMGB1CurrentCount / totalPopulation
    set activationRateOfRestingNeutrophil activationRateOfRestingNeutrophilPerHourLowerLevel + random-float (activationRateOfRestingNeutrophilPerHourUpperLevel - activationRateOfRestingNeutrophilPerHourLowerLevel)
    set activatedNeutrophilActivationAmountPerLoop activatedNeutrophilActivationAmountPerLoop + (activationRateOfRestingNeutrophil * count RestingNeutrophils with [restingNeutrophilProduceNewRestingNeutrophil = 0] * (salmonellaConcentration + TNFAlphaConcentration + HMGB1Concentration))
    ifelse (activatedNeutrophilActivationAmountPerLoop <= count RestingNeutrophils with [restingNeutrophilProduceNewRestingNeutrophil = 0])
    [
      if (activatedNeutrophilActivationAmountPerLoop >= 1)
      [
        ask n-of (activatedNeutrophilActivationAmountPerLoop) RestingNeutrophils with [restingNeutrophilProduceNewRestingNeutrophil = 0]
        [
          move-to one-of SECs with[any? Signals-here and not any? AntiSignals-here]
          set breed ActivatedNeutrophils
          set color 113
          set size 0.4 * patch-size
          set shape "ActivatedNeutrophil"
          set counter1 counter1 + 1
        ]
        set activatedNeutrophilActivationAmountPerLoop activatedNeutrophilActivationAmountPerLoop - counter1
        set counter1 0
      ]
    ]

    [
      ask RestingNeutrophils with [restingNeutrophilProduceNewRestingNeutrophil = 0]
      [
        move-to one-of SECs with[any? Signals-here and not any? AntiSignals-here]
        set breed ActivatedNeutrophils
        set color 113
        set size 0.4 * patch-size
        set shape "ActivatedNeutrophil"
      ]
    ]

    ;;Once circulating neutrophils are activated, signals will disappear
    ask Signals with[any? ActivatedNeutrophils-here]
    [
      die
    ]

    ask AntiSignals
    [
      die
    ]
  ]
end

to restingNeutrophilUndergoAgingByNatureSubRoutine
  if (counter != 0)and (any? Salmonellas with[salmonellaPhagocytizeByKupfferCell = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaPhagocytizeByMDMI = 0] or any? TNF-as or any? HMGB-1s)
  [
    ask n-of ((rateOfRestingNeutrophilUndergoAgingPerHourLowerLevel + random-float (rateOfRestingNeutrophilUndergoAgingPerHourUpperLevel - rateOfRestingNeutrophilUndergoAgingPerHourLowerLevel)) * count RestingNeutrophils with [restingNeutrophilProduceNewRestingNeutrophil = 0]) RestingNeutrophils with [restingNeutrophilProduceNewRestingNeutrophil = 0]
    [
      die
    ]
  ]
end
;;------------------------------------------------------------------------------------------------------------------------------------------

;;----------------------------------Behaviors of activated neutrophils in liver inflammation------------------------------------------------
to activatedNeutrophilInteractWithKupfferCellSubRoutine
  if (counter != 0)
  [
    ;;Activated neutrophils interact with kupffer cells (upper liver sinusoid)
    let killingRate percentageOfNeutrophilBeingKilledByKupfferCellPerHour
    set amountOfActivatedNeutrophilBingKilledByKupfferCellPerLoopUpperLiver killingRate * count ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilInteractWithApoptoticHepatocyte = 0 and activatedNeutrophilPhagocytizeHepatocyteDebris = 0 and activatedNeutrophilInteractWithSalmonella = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilInteractWithCRPTypeComplex = 0]
    ifelse (amountOfActivatedNeutrophilBingKilledByKupfferCellPerLoopUpperLiver >= 1)
    [
      repeat (amountOfActivatedNeutrophilBingKilledByKupfferCellPerLoopUpperLiver)
      [
        ask one-of ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilInteractWithApoptoticHepatocyte = 0 and activatedNeutrophilPhagocytizeHepatocyteDebris = 0 and activatedNeutrophilInteractWithSalmonella = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilInteractWithCRPTypeComplex = 0]
        [
          if any? KupfferCells with[ycor > 0 and kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
          [
            set movedActivatedNeutrophil 1
            move-to one-of KupfferCells with[ycor > 0 and kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            set activatedNeutrophilInteractWithKupfferCell 1
          ]
        ]

        ask kupfferCells with[ycor > 0 and any? ActivatedNeutrophils-here with[movedActivatedNeutrophil = 1]]
        [
          set targetKupfferCell 1
          set kupfferCellInteractWithActivatedNeutrophilInLiverSinusoid 1
        ]

        ask ActivatedNeutrophils with[ycor > 0 and movedActivatedNeutrophil = 1]
        [
          ask link-neighbors
          [
            move-to one-of KupfferCells with[ycor > 0 and targetKupfferCell = 1]
          ]
          set movedActivatedNeutrophil 0
        ]

        ask KupfferCells with[ycor > 0 and targetKupfferCell = 1 and not any? ActivatedNeutrophils-here with[movedActivatedNeutrophil = 1]]
        [
          set targetKupfferCell 0
        ]
      ]
    ]

    [
      set activatedNeutrophilActivationAmountPerLoop activatedNeutrophilActivationAmountPerLoop - amountOfActivatedNeutrophilBingKilledByKupfferCellPerLoopUpperLiver
    ]

    ;;Activated neutrophils interact with kupffer cells (lower liver sinusoid)
    set amountOfActivatedNeutrophilBingKilledByKupfferCellPerLoopLowerLiver killingRate * count ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilInteractWithApoptoticHepatocyte = 0 and activatedNeutrophilPhagocytizeHepatocyteDebris = 0 and activatedNeutrophilInteractWithSalmonella = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilInteractWithCRPTypeComplex = 0]
    ifelse (amountOfActivatedNeutrophilBingKilledByKupfferCellPerLoopLowerLiver >= 1)
    [
      repeat (amountOfActivatedNeutrophilBingKilledByKupfferCellPerLoopLowerLiver)
      [
        ask one-of ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilInteractWithApoptoticHepatocyte = 0 and activatedNeutrophilPhagocytizeHepatocyteDebris = 0 and activatedNeutrophilInteractWithSalmonella = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilInteractWithCRPTypeComplex = 0]
        [
          if any? KupfferCells with[ycor < 0 and kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
          [
            set movedActivatedNeutrophil 1
            move-to one-of KupfferCells with[ycor < 0 and kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            set activatedNeutrophilInteractWithKupfferCell 1
          ]
        ]

        ask kupfferCells with[ycor < 0 and any? ActivatedNeutrophils-here with[movedActivatedNeutrophil = 1]]
        [
          set targetKupfferCell 1
          set kupfferCellInteractWithActivatedNeutrophilInLiverSinusoid 1
        ]

        ask ActivatedNeutrophils with[ycor < 0 and movedActivatedNeutrophil = 1]
        [
          ask link-neighbors
          [
            move-to one-of KupfferCells with[ycor < 0 and targetKupfferCell = 1]
          ]
          set movedActivatedNeutrophil 0
        ]

        ask KupfferCells with[ycor < 0 and targetKupfferCell = 1 and not any? ActivatedNeutrophils-here with[movedActivatedNeutrophil = 1]]
        [
          set targetKupfferCell 0
        ]
      ]
    ]

    [
      set activatedNeutrophilActivationAmountPerLoop activatedNeutrophilActivationAmountPerLoop - amountOfActivatedNeutrophilBingKilledByKupfferCellPerLoopLowerLiver
    ]
  ]
end

to activatedNeutrophilPhagocytizeByKupfferCellSubRoutine
  if (counter != 0)
  [
    ask ActivatedNeutrophils with[activatedNeutrophilInteractWithKupfferCell = 1]
    [
      set activatedNeutrophilKillByKupfferCellAt? activatedNeutrophilKillByKupfferCellAt? + 1
    ]

    ;;IL-10 that bind to activated neutrophils die
    ask ActivatedNeutrophils with[activatedNeutrophilInteractWithKupfferCell = 1 and activatedNeutrophilKillByKupfferCellAt? >= timeOfNeutrophilKillByKupfferCell]
    [
      ask link-neighbors
      [
        die
      ]
      die
    ]

    ;;Assign a state variable to identify kupffer cells that NOT interact with activated neutrophils in liver sinusoid
    ask KupfferCells with[kupfferCellInteractWithActivatedNeutrophilInLiverSinusoid = 1 and not any? ActivatedNeutrophils-here with [activatedNeutrophilInteractWithKupfferCell = 1]]
    [
      set kupfferCellInteractWithActivatedNeutrophilInLiverSinusoid 0
      set kupfferCellProduceTNFAlpha 0
    ]
  ]
end

to activatedNeutrophilMoveToSiteOfSalmonellaSubRoutine
  if (counter != 0)
  [
    ;;Activated neutrophils move to Salmonella (upper liver sinusoid)
    let numberOfSalmonellaPhagocytizeByNeutrophilUpperLiver (phagocytizeRateOfSalmonellaByActivatedNeutrophilPerHourLowerLevel + random-float (phagocytizeRateOfSalmonellaByActivatedNeutrophilPerHourUpperLevel - phagocytizeRateOfSalmonellaByActivatedNeutrophilPerHourLowerLevel)) * count ActivatedNeutrophils with [ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and count Salmonellas-here with[salmonellaPhagocytizeByNeutrophil = 1] <= maximumNumberOfSalmonellaBeingKilledByNeutrophil]
    repeat numberOfSalmonellaPhagocytizeByNeutrophilUpperLiver
    [
      if any? ActivatedNeutrophils with [ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and count Salmonellas-here with[salmonellaPhagocytizeByNeutrophil = 1] <= maximumNumberOfSalmonellaBeingKilledByNeutrophil]
      [
         ask one-of ActivatedNeutrophils with [ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and count Salmonellas-here with[salmonellaPhagocytizeByNeutrophil = 1] <= maximumNumberOfSalmonellaBeingKilledByNeutrophil]
        [
          if any? Salmonellas with[ycor > 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
          [
            set movedActivatedNeutrophil 1
            move-to one-of Salmonellas with[ycor > 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
            set activatedNeutrophilInteractWithSalmonella 1
          ]
        ]
      ]

      if any? Salmonellas with[ycor > 0 and any? ActivatedNeutrophils-here with[movedActivatedNeutrophil = 1] and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
      [
        ask one-of Salmonellas with[ycor > 0 and any? ActivatedNeutrophils-here with[movedActivatedNeutrophil = 1] and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
        [
          set targetSalmonella 1
          set salmonellaPhagocytizeByNeutrophil 1
          set salmonellaNewlyReleasedFromKupfferCell 0
          set salmonellaNewlyReleasedFromSECs 0
          set salmonellaNewlyReleasedFromHepatocyte 0
          set salmonellaNewlyReleasedFromMDMI 0
        ]
      ]

      ask ActivatedNeutrophils with[ycor > 0 and movedActivatedNeutrophil = 1]
      [
        ask link-neighbors
        [
          move-to one-of Salmonellas with[ycor > 0 and targetSalmonella = 1]
        ]
        set movedActivatedNeutrophil 0
        create-ActivatedNeutrophilSalmonella-links-with Salmonellas-here with[ycor > 0 and targetSalmonella = 1]
      ]

      ask Salmonellas with[ycor > 0 and targetSalmonella = 1 and not any? ActivatedNeutrophils-here with[ycor > 0 and movedActivatedNeutrophil = 1]]
      [
        set targetSalmonella 0
      ]
    ]

    let numberOfSalmonellaPhagocytizeByNeutrophilLowerLiver (phagocytizeRateOfSalmonellaByActivatedNeutrophilPerHourLowerLevel + random-float (phagocytizeRateOfSalmonellaByActivatedNeutrophilPerHourUpperLevel - phagocytizeRateOfSalmonellaByActivatedNeutrophilPerHourLowerLevel)) * count ActivatedNeutrophils with [ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and count Salmonellas-here with[salmonellaPhagocytizeByNeutrophil = 1] <= maximumNumberOfSalmonellaBeingKilledByNeutrophil]
    repeat numberOfSalmonellaPhagocytizeByNeutrophilLowerLiver
    [
      if any? ActivatedNeutrophils with [ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and count Salmonellas-here with[salmonellaPhagocytizeByNeutrophil = 1] <= maximumNumberOfSalmonellaBeingKilledByNeutrophil]
      [
        ask one-of ActivatedNeutrophils with [ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and count Salmonellas-here with[salmonellaPhagocytizeByNeutrophil = 1] <= maximumNumberOfSalmonellaBeingKilledByNeutrophil]
        [
          if any? Salmonellas with[ycor < 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
          [
            set movedActivatedNeutrophil 1
            move-to one-of Salmonellas with[ycor < 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
            set activatedNeutrophilInteractWithSalmonella 1
          ]
        ]
      ]

      if any? Salmonellas with[ycor < 0 and any? ActivatedNeutrophils-here with[movedActivatedNeutrophil = 1] and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
      [
        ask one-of Salmonellas with[ycor < 0 and any? ActivatedNeutrophils-here with[movedActivatedNeutrophil = 1] and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
        [
          set targetSalmonella 1
          set salmonellaPhagocytizeByNeutrophil 1
          set salmonellaNewlyReleasedFromKupfferCell 0
          set salmonellaNewlyReleasedFromSECs 0
          set salmonellaNewlyReleasedFromHepatocyte 0
          set salmonellaNewlyReleasedFromMDMI 0
        ]
      ]

      ask ActivatedNeutrophils with[ycor < 0 and movedActivatedNeutrophil = 1]
      [
        ask link-neighbors
        [
          move-to one-of Salmonellas with[ycor < 0 and targetSalmonella = 1]
        ]
        set movedActivatedNeutrophil 0
        create-ActivatedNeutrophilSalmonella-links-with Salmonellas-here with[ycor < 0 and targetSalmonella = 1]
      ]

      ask Salmonellas with[ycor < 0 and targetSalmonella = 1 and not any? ActivatedNeutrophils-here with[ycor < 0 and movedActivatedNeutrophil = 1]]
      [
        set targetSalmonella 0
      ]
    ]
  ]
end

to activatedNeutrophilMoveToSiteOfApoptoticHepatocyteSubRoutine
  if (counter != 0)
  [
    ;;Activated neutrophils move to apoptotic hepatocytes (upper liver sinusoid)
    if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilInteractWithApoptoticHepatocyte = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      let killingRate (killingRateOfApoptoticHepatocyteByNeutrophilPerHourLowerLevel + random-float (killingRateOfApoptoticHepatocyteByNeutrophilPerHourUpperLevel - killingRateOfApoptoticHepatocyteByNeutrophilPerHourLowerLevel))
      set movedActivatedNeutrophilAmountToApoptoticHepatocytePerLoopUpperLiver movedActivatedNeutrophilAmountToApoptoticHepatocytePerLoopUpperLiver + killingRate * count ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilInteractWithApoptoticHepatocyte = 0 and activatedNeutrophilInteractWithSalmonella = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and apoptoticActivatedNeutrophilInteractWithCRP = 0 and apoptoticActivatedNeutrophilBindToCRP = 0 and CRPOpsonizedApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPOpsonizedApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPOpsonizedApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPOpsonizedApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPOpsonizedApoptoticNeutrophilPhagocytizeByMDMII = 0 and activatedNeutrophilInteractWithCRPTypeComplex = 0 and apoptoticActivatedNeutrophilInteractWithMDMII = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
      if (movedActivatedNeutrophilAmountToApoptoticHepatocytePerLoopUpperLiver >= 1)
      [
        ifelse (movedActivatedNeutrophilAmountToApoptoticHepatocytePerLoopUpperLiver >= count Hepatocytes with[ycor > 0 and hepatocyteInteractWithSalmonella = 1 and apoptoticHepatocyteInteractWithNeutrophil = 0])
        [
          repeat (count Hepatocytes with[ycor > 0 and hepatocyteInteractWithSalmonella = 1 and apoptoticHepatocyteInteractWithNeutrophil = 0])
          [
            if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilInteractWithApoptoticHepatocyte = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              ask one-of ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilInteractWithApoptoticHepatocyte = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              [
                if any? Hepatocytes with[ycor > 0 and hepatocyteInteractWithSalmonella = 1 and apoptoticHepatocyteInteractWithNeutrophil = 0]
                [
                  set movedActivatedNeutrophil 1
                  move-to one-of Hepatocytes with[ycor > 0 and hepatocyteInteractWithSalmonella = 1 and apoptoticHepatocyteInteractWithNeutrophil = 0]
                  set activatedNeutrophilInteractWithApoptoticHepatocyte 1
                ]
              ]
            ]

            ask Hepatocytes with[ycor > 0 and any? ActivatedNeutrophils-here with[movedActivatedNeutrophil = 1]]
            [
              set targetHepatocyte 1
            ]

            ask ActivatedNeutrophils with[ycor > 0 and movedActivatedNeutrophil = 1]
            [
              ask link-neighbors
              [
                move-to one-of Hepatocytes with[ycor > 0 and targetHepatocyte = 1]
              ]
              set movedActivatedNeutrophil 0
            ]

            ask Hepatocytes with[ycor > 0 and targetHepatocyte = 1 and not any? ActivatedNeutrophils-here with [movedActivatedNeutrophil = 1]]
            [
              set targetHepatocyte 0
            ]
          ]
          set movedActivatedNeutrophilAmountToApoptoticHepatocytePerLoopUpperLiver 0
        ]

        [
          repeat (movedActivatedNeutrophilAmountToApoptoticHepatocytePerLoopUpperLiver)
          [
            if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilInteractWithApoptoticHepatocyte = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              ask one-of ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilInteractWithApoptoticHepatocyte = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              [
                if any? Hepatocytes with[ycor > 0 and hepatocyteInteractWithSalmonella = 1 and apoptoticHepatocyteInteractWithNeutrophil = 0]
                [
                  set movedActivatedNeutrophil 1
                  move-to one-of Hepatocytes with[ycor > 0 and hepatocyteInteractWithSalmonella = 1 and apoptoticHepatocyteInteractWithNeutrophil = 0]
                  set activatedNeutrophilInteractWithApoptoticHepatocyte 1
                  set counter2 counter2 + 1
                ]
              ]
            ]

            ask Hepatocytes with[ycor > 0 and any? ActivatedNeutrophils-here with[movedActivatedNeutrophil = 1]]
            [
              set targetHepatocyte 1
            ]

            ask ActivatedNeutrophils with[ycor > 0 and movedActivatedNeutrophil = 1]
            [
              ask link-neighbors
              [
                move-to one-of Hepatocytes with[ycor > 0 and targetHepatocyte = 1]
              ]
              set movedActivatedNeutrophil 0
            ]

            ask Hepatocytes with[ycor > 0 and targetHepatocyte = 1 and not any? ActivatedNeutrophils-here with [movedActivatedNeutrophil = 1]]
            [
              set targetHepatocyte 0
            ]
          ]

          set movedActivatedNeutrophilAmountToApoptoticHepatocytePerLoopUpperLiver movedActivatedNeutrophilAmountToApoptoticHepatocytePerLoopUpperLiver - counter2
          set counter2 0
        ]
      ]
    ]

    ;;Activated neutrophils move to apoptotic hepatocytes (lower liver sinusoid)
    if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilInteractWithApoptoticHepatocyte = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      let killingRate (killingRateOfApoptoticHepatocyteByNeutrophilPerHourLowerLevel + random-float (killingRateOfApoptoticHepatocyteByNeutrophilPerHourUpperLevel - killingRateOfApoptoticHepatocyteByNeutrophilPerHourLowerLevel))
      set movedActivatedNeutrophilAmountToApoptoticHepatocytePerLoopLowerLiver movedActivatedNeutrophilAmountToApoptoticHepatocytePerLoopLowerLiver + killingRate * count ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilInteractWithApoptoticHepatocyte = 0 and activatedNeutrophilInteractWithSalmonella = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and apoptoticActivatedNeutrophilInteractWithCRP = 0 and apoptoticActivatedNeutrophilBindToCRP = 0 and CRPOpsonizedApoptoticNeutrophilPhagocytizeByKupfferCell = 0 and CRPOpsonizedApoptoticNeutrophilPhagocytizeByMastCell = 0 and CRPOpsonizedApoptoticNeutrophilPhagocytizeByNeutrophil = 0 and CRPOpsonizedApoptoticNeutrophilPhagocytizeByMDMI = 0 and CRPOpsonizedApoptoticNeutrophilPhagocytizeByMDMII = 0 and activatedNeutrophilInteractWithCRPTypeComplex = 0 and apoptoticActivatedNeutrophilInteractWithMDMII = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
      if (movedActivatedNeutrophilAmountToApoptoticHepatocytePerLoopLowerLiver >= 1)
      [
        ifelse (movedActivatedNeutrophilAmountToApoptoticHepatocytePerLoopLowerLiver >= count Hepatocytes with[ycor < 0 and hepatocyteInteractWithSalmonella = 1 and apoptoticHepatocyteInteractWithNeutrophil = 0])
        [
          repeat (count Hepatocytes with[ycor < 0 and hepatocyteInteractWithSalmonella = 1 and apoptoticHepatocyteInteractWithNeutrophil = 0])
          [
            ask one-of ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilInteractWithApoptoticHepatocyte = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              if any? Hepatocytes with[ycor < 0 and hepatocyteInteractWithSalmonella = 1 and apoptoticHepatocyteInteractWithNeutrophil = 0]
              [
                set movedActivatedNeutrophil 1
                move-to one-of Hepatocytes with[ycor < 0 and hepatocyteInteractWithSalmonella = 1 and apoptoticHepatocyteInteractWithNeutrophil = 0]
                set activatedNeutrophilInteractWithApoptoticHepatocyte 1
              ]
            ]

            ask Hepatocytes with[ycor < 0 and any? ActivatedNeutrophils-here with[movedActivatedNeutrophil = 1]]
            [
              set targetHepatocyte 1
            ]

            ask ActivatedNeutrophils with[ycor < 0 and movedActivatedNeutrophil = 1]
            [
              ask link-neighbors
              [
                move-to one-of Hepatocytes with[ycor < 0 and targetHepatocyte = 1]
              ]
              set movedActivatedNeutrophil 0
            ]

            ask Hepatocytes with[ycor < 0 and targetHepatocyte = 1 and not any? ActivatedNeutrophils-here with [movedActivatedNeutrophil = 1]]
            [
              set targetHepatocyte 0
            ]
          ]
          set movedActivatedNeutrophilAmountToApoptoticHepatocytePerLoopLowerLiver 0
        ]

        [
          repeat (movedActivatedNeutrophilAmountToApoptoticHepatocytePerLoopLowerLiver)
          [
            ask one-of ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilInteractWithApoptoticHepatocyte = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            [
              if any? Hepatocytes with[ycor < 0 and hepatocyteInteractWithSalmonella = 1 and apoptoticHepatocyteInteractWithNeutrophil = 0]
              [
                set movedActivatedNeutrophil 1
                move-to one-of Hepatocytes with[ycor < 0 and hepatocyteInteractWithSalmonella = 1 and apoptoticHepatocyteInteractWithNeutrophil = 0]
                set activatedNeutrophilInteractWithApoptoticHepatocyte 1
                set counter3 counter3 + 1
              ]
            ]

            ask Hepatocytes with[ycor < 0 and any? ActivatedNeutrophils-here with[movedActivatedNeutrophil = 1]]
            [
              set targetHepatocyte 1
            ]

            ask ActivatedNeutrophils with[ycor < 0 and movedActivatedNeutrophil = 1]
            [
              ask link-neighbors
              [
                move-to one-of Hepatocytes with[ycor < 0 and targetHepatocyte = 1]
              ]
              set movedActivatedNeutrophil 0
            ]

            ask Hepatocytes with[ycor < 0 and targetHepatocyte = 1 and not any? ActivatedNeutrophils-here with [movedActivatedNeutrophil = 1]]
            [
              set targetHepatocyte 0
            ]
          ]

          set movedActivatedNeutrophilAmountToApoptoticHepatocytePerLoopLowerLiver movedActivatedNeutrophilAmountToApoptoticHepatocytePerLoopLowerLiver - counter3
          set counter3 0
        ]
      ]
    ]

    ;;Assign a state variable to identify apoptotic hepatocytes that interact with activated neutrophils
    ask Hepatocytes with [hepatocyteInteractWithSalmonella = 1 and apoptoticHepatocyteInteractWithNeutrophil = 0 and any? ActivatedNeutrophils-here with[activatedNeutrophilInteractWithApoptoticHepatocyte = 1]]
    [
      set apoptoticHepatocyteInteractWithNeutrophil 1
      set breed HepatocyteDebrises
      set shape "hepatocytedebris"
      set size 0.7 * patch-size
      set color 4
    ]

    ;;Release Salmonella from dead hepatocytes
    ask Salmonellas with [salmonellaReplicateWithinHepatocyte = 1 and not any? Hepatocytes-here with [hepatocyteInteractWithSalmonella = 1]]
    [
      set salmonellaReplicateWithinHepatocyte 0
      set salmonellaNewlyReleasedFromHepatocyte 1
    ]

    ;;Assign a state variable to identify activated neutrophils that NOT interact with apoptotic hepatocytes
    ask ActivatedNeutrophils with[activatedNeutrophilInteractWithApoptoticHepatocyte = 1 and not any? Hepatocytes-here with[hepatocyteInteractWithSalmonella = 1]]
    [
      set activatedNeutrophilInteractWithApoptoticHepatocyte 0
    ]
  ]
end

to activatedNeutrophilUndergoAgingByNatureSubRoutine
  if (counter != 0)
  [
    set amountOfActivatedNeutrophilBeingKilledByNaturePerLoop apoptoticRateOfActivatedNeutrophilByNaturePerHour * count activatedNeutrophils with[activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0]
    ifelse (amountOfActivatedNeutrophilBeingKilledByNaturePerLoop >= 1)
    [
      ask n-of (amountOfActivatedNeutrophilBeingKilledByNaturePerLoop) activatedNeutrophils with[activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0]
      [
        set activatedNeutrophilUndergoApoptosisByNature 1
        set activatedNeutrophilInteractWithIL10 0
        set activatedNeutrophilBindToIL10 0
        set activatedNeutrophilInteractWithSalmonella 0
        set activatedNeutrophilInteractWithCRPTypeComplex 0
        set activatedNeutrophilProduceTNFAlpha 0
        set activatedNeutrophilProduceIL10 0
        set activatedNeutrophilPhagocytizeHepatocyteDebris 0
        set activatedNeutrophilInteractWithApoptoticHepatocyte 0
      ]
    ]

    [
      set activatedNeutrophilActivationAmountPerLoop activatedNeutrophilActivationAmountPerLoop - amountOfActivatedNeutrophilBeingKilledByNaturePerLoop
    ]

    if (activatedNeutrophilActivationAmountPerLoop < 0 or not any? Salmonellas)
    [
      if any? activatedNeutrophils with[activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0]
      [
        ask one-of activatedNeutrophils with[activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0]
        [
          set activatedNeutrophilUndergoApoptosisByNature 1
          set activatedNeutrophilInteractWithIL10 0
          set activatedNeutrophilBindToIL10 0
          set activatedNeutrophilInteractWithSalmonella 0
          set activatedNeutrophilInteractWithCRPTypeComplex 0
          set activatedNeutrophilProduceTNFAlpha 0
          set activatedNeutrophilProduceIL10 0
          set activatedNeutrophilPhagocytizeHepatocyteDebris 0
          set activatedNeutrophilInteractWithApoptoticHepatocyte 0
        ]
      ]
      set activatedNeutrophilActivationAmountPerLoop activatedNeutrophilActivationAmountPerLoop + 1
    ]

    ask ActivatedNeutrophils with[activatedNeutrophilUndergoApoptosisByNature = 1]
    [
      set activatedNeutrophilDieByNaturalApoptosisAt? activatedNeutrophilDieByNaturalApoptosisAt? + 1
    ]

    ask ActivatedNeutrophils with[activatedNeutrophilUndergoApoptosisByNature = 1 and activatedNeutrophilDieByNaturalApoptosisAt? >= 3]
    [
      die
    ]

    ;;Release IL-10 from activated neutrophils
    ask IL-10s with [IL10InteractWithActivatedNeutrophil = 1 and not any? ActivatedNeutrophils-here with[activatedNeutrophilInteractWithIL10 = 1]]
    [
      set IL10InteractWithActivatedNeutrophil 0
      set IL10BindToActivatedNeutrophil 0
    ]
  ]

  ask NeutrophilIL10-links with [end2 = one-of IL-10s with[IL10InteractWithActivatedNeutrophil = 0]]
  [
    die
  ]
end

to activatedNeutrophilProduceTNFAlphaSubRoutine
  if (counter != 0)
  [
    if (counter <= 1)
    [
      set maximumRateOfTNFAlphaBeingReleasedFromNeutrophilPerHour maximumReleaseRateOfTNFAlphaByNeutrophilFrom0To1
    ]

    if (counter > 1)
    [
      set maximumRateOfTNFAlphaBeingReleasedFromNeutrophilPerHour maximumReleaseRateOfTNFAlphaByNeutrophilFrom1ToEnd
    ]

    if any? ActivatedNeutrophils with[activatedNeutrophilProduceTNFAlpha = 0 and activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0]
    [
      let TNFAlphaMaxReleaseRate maximumRateOfTNFAlphaBeingReleasedFromNeutrophilPerHour
      let TNFAlphaReleaseRate (TNFAlphaMaxReleaseRate * count ActivatedNeutrophils with[activatedNeutrophilProduceTNFAlpha = 0 and activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0])/(50000 + count ActivatedNeutrophils with[activatedNeutrophilProduceTNFAlpha = 0 and activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0])
      set TNFAlphaReleaseAmountByActivatedNeutrophilPerLoop TNFAlphaReleaseAmountByActivatedNeutrophilPerLoop + TNFAlphaReleaseRate * count ActivatedNeutrophils with[activatedNeutrophilProduceTNFAlpha = 0 and activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0] / amountOfTNFAlphaBeingRepresentedByOneAgent
      set test5 TNFAlphaReleaseAmountByActivatedNeutrophilPerLoop
      if (TNFAlphaReleaseAmountByActivatedNeutrophilPerLoop >= 1)
      [
        ask one-of ActivatedNeutrophils with[activatedNeutrophilProduceTNFAlpha = 0 and activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0]
        [
          hatch TNFAlphaReleaseAmountByActivatedNeutrophilPerLoop
          [
            set breed TNF-as
            set size 0.7 * patch-size
            set color 45
            set shape "TNF-a"
          ]
          set activatedNeutrophilProduceTNFAlpha 1
        ]

        set TNFAlphaReleaseAmountByActivatedNeutrophilPerLoop 0

        ask ActivatedNeutrophils with[activatedNeutrophilProduceTNFAlpha = 0 and activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0]
        [
          set activatedNeutrophilProduceTNFAlpha 1
        ]
      ]
    ]
  ]
end

to activatedNeutrophilProduceIL10SubRoutine
  if (counter != 0)
  [
    if any? ActivatedNeutrophils with[activatedNeutrophilProduceIL10 = 0 and activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0]
    [
      let IL10MaxReleaseRate maximumReleaseRateOfIL10ByNeutrophilPerHour
      let IL10ReleaseRate (IL10MaxReleaseRate * count ActivatedNeutrophils with[activatedNeutrophilProduceIL10 = 0 and activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0])/(10000 + count ActivatedNeutrophils with[activatedNeutrophilProduceIL10 = 0 and activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0])
      set IL10ReleaseAmountByActivatedNeutrophilPerLoop IL10ReleaseAmountByActivatedNeutrophilPerLoop + IL10ReleaseRate * count ActivatedNeutrophils with[activatedNeutrophilProduceIL10 = 0 and activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0] / amountOfIL10BeingRepresentedByOneAgent
      set test11 IL10ReleaseAmountByActivatedNeutrophilPerLoop
      if (IL10ReleaseAmountByActivatedNeutrophilPerLoop >= 1)
      [
        ask one-of ActivatedNeutrophils with[activatedNeutrophilProduceIL10 = 0 and activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0]
        [
          hatch IL10ReleaseAmountByActivatedNeutrophilPerLoop
          [
            set breed IL-10s
            set size 0.7 * patch-size
            set color red
            set shape "IL-10"
          ]
          set activatedNeutrophilProduceIL10 1
        ]

        set IL10ReleaseAmountByActivatedNeutrophilPerLoop 0

        ask ActivatedNeutrophils with[activatedNeutrophilProduceIL10 = 0 and activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0]
        [
          set activatedNeutrophilProduceIL10 1
        ]
      ]
    ]
  ]
end

to activatedNeutrophilProduceNETsSubRoutine
  if (counter != 0)
  [
    ask ActivatedNeutrophils with[activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilProduceNET = 0]
    [
      hatch 1
      [
        set breed NETs
        set size 0.7 * patch-size
        set color grey
        set shape "NETs"
      ]
      set activatedNeutrophilProduceNET 1
    ]
  ]
end

to apoptoticActivatedNeutrophilPhagocytizeByMDMII
  if (counter != 0)
  [
    ask ActivatedNeutrophils with[apoptoticActivatedNeutrophilInteractWithMDMII = 1]
    [
      set apoptoticActivatedNeutrophilDieInduceByMDMIIAt? apoptoticActivatedNeutrophilDieInduceByMDMIIAt? + 1
    ]

    ask ActivatedNeutrophils with[apoptoticActivatedNeutrophilInteractWithMDMII = 1 and apoptoticActivatedNeutrophilDieInduceByMDMIIAt? >= timeOfApoptoticNeutrophilKillByMDMII]
    [
      die
    ]

    ;;Assign a state variable to identify MDMIIs that NOT interact with apoptotic activated neutrophils
    ask MDMIIs with [not any? ActivatedNeutrophils-here with[apoptoticActivatedNeutrophilInteractWithMDMII = 1] and MDMIIInteractWithApoptoticNeutrophil = 1]
    [
      set MDMIIInteractWithApoptoticNeutrophil 0
      set MDMIIProduceHMGB1 0
      set MDMIIProduceIL10 0
    ]
  ]
end

to activatedNeutrophilWhoPhagocytizeSalmonellaUndergoApoptosisByInteractWithCD8TCellSubRoutine
  if (counter != 0)
  [
    ask ActivatedNeutrophils with[activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 1]
    [
      set activatedNeutrophilWhoPhagocytizeSalmonellaUndergoApoptosisInduceByCD8TCellAt? activatedNeutrophilWhoPhagocytizeSalmonellaUndergoApoptosisInduceByCD8TCellAt? + 1
    ]

    ask ActivatedNeutrophils with[activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 1 and activatedNeutrophilWhoPhagocytizeSalmonellaUndergoApoptosisInduceByCD8TCellAt? >= timeOfActivatedNeutrophilWhoPhagocytizeSalmonellaDieByInteractWithCD8TCell]
    [
      die
    ]

    ;;Release IL-10s from dead activated neutrophils
    ask IL-10s with[IL10InteractWithActivatedNeutrophil = 1 and not any? ActivatedNeutrophils-here with[activatedNeutrophilInteractWithIL10 = 1]]
    [
      set IL10InteractWithActivatedNeutrophil 0
      set IL10BindToActivatedNeutrophil 0
    ]

    ;;Assign a state variable to identify CD4 T cells that NOT interact with neutrophils that phagocytize Salmonella
    ask CD4TCells with[CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 1 and not any? ActivatedNeutrophils-here with[activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD4TCell = 1]]
    [
      set CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella 0
      set CD4TCellProduceTNFAlpha 0
      set CD4TCellProduceIL10 0
    ]

    ;;Assign a state variable to identify CD8 T cells that NOT interact with neutrophils that phagocytize Salmonella
    ask CD8TCells with[CD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 1 and not any? ActivatedNeutrophils-here with[activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 1]]
    [
      set CD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonella 0
    ]
  ]
end
;;-----------------------------------------------------------------------------------------------------------------------------------------

;;--------------------------------------Behaviors of NET in liver inflammation-------------------------------------------------------------
to NETTrappSalmonellaSubRoutine
  if (counter != 0)
  [
    ;;NETs move to Salmonella (upper liver sinusoid)
    let percentageOfSalmonellaGetTrapByNETUpperLiver percentageOfSalmonellaBeingTrappedByNETPerHour * count NETs with [ycor > 0 and NETInteractWithSalmonella = 0] * amountOfNETBeingRepresentedByOneAgent
    set amountOfSalmonellaGetTrapByNETPerLoopUpperLiver amountOfSalmonellaGetTrapByNETPerLoopUpperLiver + percentageOfSalmonellaGetTrapByNETUpperLiver * count Salmonellas with[ycor > 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0]
    if (amountOfSalmonellaGetTrapByNETPerLoopUpperLiver >= 1)
    [
      ask n-of (amountOfSalmonellaGetTrapByNETPerLoopUpperLiver) NETs with[ycor > 0 and NETInteractWithSalmonella = 0]
      [
        if any? Salmonellas with[ycor > 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0]
        [
          move-to one-of Salmonellas with[ycor > 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0]
          set NETInteractWithSalmonella 1
          set counter6 counter6 + 1
        ]
      ]
      set amountOfSalmonellaGetTrapByNETPerLoopUpperLiver amountOfSalmonellaGetTrapByNETPerLoopUpperLiver - counter6
      set counter6 0
    ]

    ;;NETs move to Salmonella (lower liver sinusoid)
    let percentageOfSalmonellaGetTrapByNETLowerLiver percentageOfSalmonellaBeingTrappedByNETPerHour * count NETs with [ycor < 0 and NETInteractWithSalmonella = 0] * amountOfNETBeingRepresentedByOneAgent
    set amountOfSalmonellaGetTrapByNETPerLoopLowerLiver amountOfSalmonellaGetTrapByNETPerLoopLowerLiver + percentageOfSalmonellaGetTrapByNETLowerLiver * count Salmonellas with[ycor < 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0]
    if (amountOfSalmonellaGetTrapByNETPerLoopLowerLiver >= 1)
    [
      ask n-of (amountOfSalmonellaGetTrapByNETPerLoopLowerLiver) NETs with[ycor < 0 and NETInteractWithSalmonella = 0]
      [
        if any? Salmonellas with[ycor < 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0]
        [
          move-to one-of Salmonellas with[ycor < 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0]
          set NETInteractWithSalmonella 1
          set counter7 counter7 + 1
        ]
      ]
      set amountOfSalmonellaGetTrapByNETPerLoopLowerLiver amountOfSalmonellaGetTrapByNETPerLoopLowerLiver - counter7
      set counter7 0
    ]

    ask Salmonellas with[any? NETs-here with[NETInteractWithSalmonella = 1] and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaBindToCRP = 0 and salmonellaInteractWithAntibody = 0 and salmonellaBindToAntibody = 0]
    [
      set salmonellaInteractWithNET 1
      set salmonellaNewlyReleasedFromKupfferCell 0
      set salmonellaNewlyReleasedFromSECs 0
      set salmonellaNewlyReleasedFromHepatocyte 0
      set salmonellaNewlyReleasedFromMDMI 0
    ]
  ]
end

to NETUndergoApoptosisByNatureSubRoutine
  if (counter != 0)
  [
    ifelse (0.018 * count NETs with[NETInteractWithSalmonella = 0]) >= 1
    [
      ask n-of (0.018 * count NETs with[NETInteractWithSalmonella = 0]) NETs with[NETInteractWithSalmonella = 0]
      [
        die
      ]
    ]

    [
      set amountOfNETBeingKilledByNaturePerLoop amountOfNETBeingKilledByNaturePerLoop + 0.018 * count NETs with[NETInteractWithSalmonella = 0]
    ]

    if (amountOfNETBeingKilledByNaturePerLoop >= 1 or not any? Salmonellas)
    [
      if any? NETs with[NETInteractWithSalmonella = 0]
      [
        ask one-of NETs with[NETInteractWithSalmonella = 0]
        [
          die
        ]
      ]
      set amountOfNETBeingKilledByNaturePerLoop amountOfNETBeingKilledByNaturePerLoop - 1
    ]
  ]
end
;;-----------------------------------------------------------------------------------------------------------------------------------------

;;-------------------------Behaviors of resting monocytes in liver inflammation------------------------------------------------------------
to restingMonocyteInfluxToLiverSinusoidFromBoneMarrowSubRoutine
  if (counter != 0 and counter > timeOfRestingMonocyteInfluxIntoLiverSinusoid) and (any? Salmonellas with[salmonellaPhagocytizeByKupfferCell = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaPhagocytizeByMDMI = 0] or any? TNF-as or any? HMGB-1s or any? ActivatedNeutrophils with[activatedNeutrophilUndergoApoptosisByNature = 1])
  [
    set adjustedRestingMonocyteCarryCapacityInLiverSinusoid restingMonocyteCarryCapacityInLiverSinusoid
    if not any? RestingMonocytes with [restingMonocyteProduceNewRestingMonocyte = 1]
    [
      ask one-of RestingMonocytes with [xcor <= 0.65 * min-pxcor]
      [
        set restingMonocyteProduceNewRestingMonocyte 1
      ]
    ]

    let activationRate (influxRateOfRestingMonocyteToLiverSinusoidPerHourLowerLevel + random-float (influxRateOfRestingMonocyteToLiverSinusoidPerHourUpperLevel - influxRateOfRestingMonocyteToLiverSinusoidPerHourLowerLevel))
    ifelse ((activationRate * count RestingMonocytes  * (1 - count RestingMonocytes  / adjustedRestingMonocyteCarryCapacityInLiverSinusoid) + count RestingMonocytes) >= adjustedRestingMonocyteCarryCapacityInLiverSinusoid)
    [
      set activatedAmountOfRestingMonocytePerLoop adjustedRestingMonocyteCarryCapacityInLiverSinusoid - count RestingMonocytes
    ]

    [
      set activatedAmountOfRestingMonocytePerLoop activationRate * count RestingMonocytes  * (1 - count RestingMonocytes  / adjustedRestingMonocyteCarryCapacityInLiverSinusoid)
    ]

    ask RestingMonocytes with [restingMonocyteProduceNewRestingMonocyte = 1]
    [
      hatch activatedAmountOfRestingMonocytePerLoop [set restingMonocyteProduceNewRestingMonocyte 0]
    ]

    set activatedAmountOfRestingMonocytePerLoop 0
  ]
end

to restingMonocyteMoveToSECsFollowingSignalSentFromCytokineAndGetActivatedSubRoutine
  if (counter != 0 and counter > timeOfRestingMonocyteInfluxIntoLiverSinusoid) and (any? Salmonellas with[salmonellaPhagocytizeByKupfferCell = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaPhagocytizeByMDMI = 0] or any? TNF-as or any? HMGB-1s or any? ActivatedNeutrophils with[activatedNeutrophilUndergoApoptosisByNature = 1]) ;;or any? CD4TCells with[CD4TCellInPortalTriad = 0 and apoptoticCD4TCellPhagocytizeByMDMI = 0 and apoptoticCD4TCellPhagocytizeByMDMII = 0 and CD4TCellUndergoApoptosisByNature = 0])
  [
    ;;Corresponding cells or cytokines send signals to recruit circulating monocytes to SECs
    ask Salmonellas with[salmonellaPhagocytizeByKupfferCell = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaPhagocytizeByMDMI = 0]
    [
      hatch 1
      [
        set breed Signals
        set size 0.2 * patch-size
        set shape "Signal"
        set color black
        move-to one-of SECs
      ]
    ]

    ask TNF-as
    [
      hatch 1
      [
        set breed Signals
        set size 0.2 * patch-size
        set shape "Signal"
        set color black
        move-to one-of SECs
      ]
    ]

    ask HMGB-1s
    [
      hatch 1
      [
        set breed Signals
        set size 0.2 * patch-size
        set shape "Signal"
        set color black
        move-to one-of SECs
      ]
    ]

    ask ActivatedNeutrophils with[activatedNeutrophilUndergoApoptosisByNature = 1]
    [
      hatch 1
      [
        set breed Signals
        set size 0.2 * patch-size
        set shape "Signal"
        set color black
        move-to one-of SECs
      ]
    ]

    ask CD4TCells with[CD4TCellInPortalTriad = 0 and apoptoticCD4TCellPhagocytizeByMDMI = 0 and apoptoticCD4TCellPhagocytizeByMDMII = 0 and CD4TCellUndergoApoptosisByNature = 0]
    [
      hatch 1
      [
        set breed Signals
        set size 0.2 * patch-size
        set shape "Signal"
        set color black
        move-to one-of SECs
      ]
    ]

    let activationRate (activationRateOfRestingMonocytePerHourLowerLevel + random-float (activationRateOfRestingMonocytePerHourUpperLevel - activationRateOfRestingMonocytePerHourLowerLevel))
    let TNFAlphaConcentration count TNF-as / totalPopulation
    let HMGB1Concentration HMGB1CurrentCount / totalPopulation

    ;;T cells recruit monocytes to the site of infection under certain conditons
    ifelse any? MDMIs with[MDMIPhagocytizeSalmonella = 1]
    [
      set CD4TCellConcentration count CD4TCells / totalPopulation
    ]

    [
      set CD4TCellConcentration 0
    ]

    ifelse any? MDMIs with[MDMIPhagocytizeSalmonella = 1]
    [
      set CD8TCellConcentration count CD8TCells / totalPopulation
    ]

    [
      set CD8TCellConcentration 0
    ]

    let activatedNeutrophilConcentration count ActivatedNeutrophils with[activatedNeutrophilUndergoApoptosisByNature = 1] / totalPopulation
    set MDMActivationAmountPerLoop MDMActivationAmountPerLoop + (activationRate * count RestingMonocytes with [restingMonocyteProduceNewRestingMonocyte = 0 and restingMonocyteInteractWithSECs = 0] * (salmonellaConcentration + TNFAlphaConcentration + HMGB1Concentration + CD4TCellConcentration + CD8TCellConcentration + activatedNeutrophilConcentration))
    ifelse (MDMActivationAmountPerLoop <= count RestingMonocytes with [restingMonocyteProduceNewRestingMonocyte = 0 and restingMonocyteInteractWithSECs = 0])
    [
      if (MDMActivationAmountPerLoop) >= 1
      [
        ask n-of (MDMActivationAmountPerLoop) RestingMonocytes with [restingMonocyteProduceNewRestingMonocyte = 0 and restingMonocyteInteractWithSECs = 0]
        [
          move-to one-of SECs with[any? Signals-here]
          set counter8 counter8 + 1
        ]
        set MDMActivationAmountPerLoop MDMActivationAmountPerLoop - counter8
        set counter8 0
      ]
    ]

    [
      ask RestingMonocytes with [restingMonocyteProduceNewRestingMonocyte = 0 and restingMonocyteInteractWithSECs = 0]
      [
        move-to one-of SECs with[any? Signals-here]
      ]
    ]

    ;;Assign a state variable to identify resting monocytes that interact with SECs
    ask RestingMonocytes with[any? SECs-here]
    [
      set restingMonocyteInteractWithSECs 1
    ]

    ;;Once circulating monocytes are activated, signals disappear
    ask Signals with[any? RestingMonocytes-here with[restingMonocyteInteractWithSECs = 1]]
    [
      die
    ]
  ]
end

to restingMonocyteUndergoAgingByNatureSubRoutine
  if (counter != 0 and counter > timeOfRestingMonocyteInfluxIntoLiverSinusoid) and (any? Salmonellas with[salmonellaPhagocytizeByKupfferCell = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaPhagocytizeByMDMI = 0] or any? TNF-as or any? HMGB-1s or any? ActivatedNeutrophils with[activatedNeutrophilUndergoApoptosisByNature = 1])
  [
    ask n-of ((apoptoticRateOfRestingMonocyteByAgingPerHourLowerLevel + random-float (apoptoticRateOfRestingMonocyteByAgingPerHourUpperLevel - apoptoticRateOfRestingMonocyteByAgingPerHourLowerLevel)) * count RestingMonocytes with [restingMonocyteProduceNewRestingMonocyte = 0 and restingMonocyteInteractWithSECs = 0]) RestingMonocytes with [restingMonocyteProduceNewRestingMonocyte = 0 and restingMonocyteInteractWithSECs = 0]
    [
      die
    ]
  ]
end

to restingMonocyteBecomeMDMIOrMDMIIByInteractWithCorrespondingCellOrCytokineSubRoutine
  if (counter != 0 and counter >= timeOfMonocyteInfluxIntoSiteOfInfection)
  [
    ;;Monocytes become MDMIs when encounter with Salmonella (upper liver sinusoid)
    if any? Salmonellas with[ycor > 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
    [
      set amountOfMDMIFromRestingMonocytePerLoopUpperLiver amountOfMDMIFromRestingMonocytePerLoopUpperLiver + 0.5 * count restingMonocytes with[ycor > 0 and restingMonocyteInteractWithSECs = 1]
      if (amountOfMDMIFromRestingMonocytePerLoopUpperLiver) >= 1
      [
        ask n-of (amountOfMDMIFromRestingMonocytePerLoopUpperLiver) restingMonocytes with[ycor > 0 and restingMonocyteInteractWithSECs = 1]
        [
          if any? Salmonellas with[ycor > 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
          [
            move-to one-of Salmonellas with[ycor > 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
            set breed MDMIs
            set size 0.5 * patch-size
            set shape "MDMI"
            set color 84
            set counter9 counter9 + 1
          ]
        ]

        set amountOfMDMIFromRestingMonocytePerLoopUpperLiver amountOfMDMIFromRestingMonocytePerLoopUpperLiver -  counter9
        set counter9 0
      ]
    ]

    ;;Monocytes become MDMIs when encounter with Salmonella (lower liver sinusoid)
    if any? Salmonellas with[ycor < 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
    [
      set amountOfMDMIFromRestingMonocytePerLoopLowerLiver amountOfMDMIFromRestingMonocytePerLoopLowerLiver + 0.5 * count restingMonocytes with[ycor < 0 and restingMonocyteInteractWithSECs = 1]
      if (amountOfMDMIFromRestingMonocytePerLoopLowerLiver) >= 1
      [
        ask n-of (amountOfMDMIFromRestingMonocytePerLoopLowerLiver) restingMonocytes with[ycor < 0 and restingMonocyteInteractWithSECs = 1]
        [
          if any? Salmonellas with[ycor < 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
          [
            move-to one-of Salmonellas with[ycor < 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
            set breed MDMIs
            set size 0.5 * patch-size
            set shape "MDMI"
            set color 84
            set counter10 counter10 + 1
          ]
        ]

        set amountOfMDMIFromRestingMonocytePerLoopLowerLiver amountOfMDMIFromRestingMonocytePerLoopLowerLiver - counter10
        set counter10 0
      ]
    ]

    ;;Monocytes become MDMIIs when encounter with apoptotic neutrophils (upper liver sinusoid)
    if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilUndergoApoptosisByNature = 1 and apoptoticActivatedNeutrophilInteractWithMDMII = 0]
    [
      set amountOfMDMIIFromRestingMonocytePerLoopUpperLiver amountOfMDMIIFromRestingMonocytePerLoopUpperLiver + 0.5 * count restingMonocytes with[ycor > 0 and restingMonocyteInteractWithSECs = 1]
      if (amountOfMDMIIFromRestingMonocytePerLoopUpperLiver) >= 1
      [
        ask n-of (amountOfMDMIIFromRestingMonocytePerLoopUpperLiver) restingMonocytes with[ycor > 0 and restingMonocyteInteractWithSECs = 1]
        [
          if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilUndergoApoptosisByNature = 1 and apoptoticActivatedNeutrophilInteractWithMDMII = 0]
          [
            move-to one-of ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilUndergoApoptosisByNature = 1 and apoptoticActivatedNeutrophilInteractWithMDMII = 0]
            set breed MDMIIs
            set size 0.5 * patch-size
            set shape "MDMII"
            set color 135
            set counter11 counter11 + 1
          ]
        ]

        set amountOfMDMIIFromRestingMonocytePerLoopUpperLiver amountOfMDMIIFromRestingMonocytePerLoopUpperLiver - counter11
        set counter11 0
      ]
    ]

    ;;Monocytes become MDMIIs when encounter with apoptotic neutrophils (lower liver sinusoid)
    if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilUndergoApoptosisByNature = 1 and apoptoticActivatedNeutrophilInteractWithMDMII = 0]
    [
      set amountOfMDMIIFromRestingMonocytePerLoopLowerLiver amountOfMDMIIFromRestingMonocytePerLoopLowerLiver + 0.5 * count restingMonocytes with[ycor < 0 and restingMonocyteInteractWithSECs = 1]
      if (amountOfMDMIIFromRestingMonocytePerLoopLowerLiver) >= 1
      [
        ask n-of (amountOfMDMIIFromRestingMonocytePerLoopLowerLiver) restingMonocytes with[ycor < 0 and restingMonocyteInteractWithSECs = 1]
        [
          if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilUndergoApoptosisByNature = 1 and apoptoticActivatedNeutrophilInteractWithMDMII = 0]
          [
            move-to one-of ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilUndergoApoptosisByNature = 1 and apoptoticActivatedNeutrophilInteractWithMDMII = 0]
            set breed MDMIIs
            set size 0.5 * patch-size
            set shape "MDMII"
            set color 135
            set counter12 counter12 + 1
          ]
        ]

        set amountOfMDMIIFromRestingMonocytePerLoopLowerLiver amountOfMDMIIFromRestingMonocytePerLoopLowerLiver - counter12
        set counter12 0
      ]
    ]
  ]
end
;;-------------------------------------------------------------------------------------------------------------------------------------------

;;-----------------------------------Behaviors of MDMIs in liver inflammation-----------------------------------------------------------------
to MDMIPhagocytizeSalmonellaSubRoutine
  if (counter != 0)
  [
    set amountOfMDMIPhagocytizeSalmonellaPerLoop amountOfMDMIPhagocytizeSalmonellaPerLoop + 0.6 * count MDMIs with[MDMIBecomeApoptotic = 0 and any? Salmonellas-here with[salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]]
    if (amountOfMDMIPhagocytizeSalmonellaPerLoop) >= 1
    [
      ask n-of (amountOfMDMIPhagocytizeSalmonellaPerLoop) MDMIs with[MDMIBecomeApoptotic = 0 and any? Salmonellas-here with[salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]]
      [
        set MDMIPhagocytizeSalmonella 1
        set counter13 counter13 + 1
      ]

      set amountOfMDMIPhagocytizeSalmonellaPerLoop amountOfMDMIPhagocytizeSalmonellaPerLoop - counter13
      set counter13 0
    ]

    ;;MDMI phagocytize Salmonella in upper part of liver
    repeat count MDMIs with[ycor > 0 and MDMIPhagocytizeSalmonella = 1 and count Salmonellas-here with[salmonellaPhagocytizeByMDMI = 1] <= maximumNumberOfSalmonellaBeingKilledByMDMI]
    [
      ask one-of MDMIs with[ycor > 0 and MDMIPhagocytizeSalmonella = 1 and count Salmonellas-here with[salmonellaPhagocytizeByMDMI = 1] <= maximumNumberOfSalmonellaBeingKilledByMDMI]
      [
        if any? Salmonellas with [ycor > 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
        [
          set movedMDMI 1
          move-to one-of Salmonellas with[ycor > 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
        ]
      ]

      if any? Salmonellas with[ycor > 0 and any? MDMIs-here with[movedMDMI = 1] and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
      [
        ask one-of Salmonellas with[ycor > 0 and any? MDMIs-here with[movedMDMI = 1] and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
        [
          set targetSalmonella 1
          set salmonellaPhagocytizeByMDMI 1
          set salmonellaNewlyReleasedFromKupfferCell 0
          set salmonellaNewlyReleasedFromSECs 0
          set salmonellaNewlyReleasedFromHepatocyte 0
          set salmonellaNewlyReleasedFromMDMI 0
        ]
      ]

      ask MDMIs with[ycor > 0 and movedMDMI = 1]
      [
        ask link-neighbors
        [
          move-to one-of Salmonellas with[ycor > 0 and targetSalmonella = 1]
        ]
        set movedMDMI 0
        create-MDMISalmonella-links-with Salmonellas-here with[ycor > 0 and targetSalmonella = 1]
      ]

      ask Salmonellas with[ycor > 0 and targetSalmonella = 1 and not any? MDMIs-here with[ycor > 0 and movedMDMI = 1]]
      [
        set targetSalmonella 0
      ]
    ]

    ;;MDMI phagocytize Salmonella in lower part of liver
    repeat count MDMIs with[ycor < 0 and MDMIPhagocytizeSalmonella = 1 and count Salmonellas-here with[salmonellaPhagocytizeByMDMI = 1] <= maximumNumberOfSalmonellaBeingKilledByMDMI]
    [
      ask one-of MDMIs with[ycor < 0 and MDMIPhagocytizeSalmonella = 1 and count Salmonellas-here with[salmonellaPhagocytizeByMDMI = 1] <= maximumNumberOfSalmonellaBeingKilledByMDMI]
      [
        if any? Salmonellas with [ycor < 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
        [
          set movedMDMI 1
          move-to one-of Salmonellas with[ycor < 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
        ]
      ]

      if any? Salmonellas with[ycor < 0 and any? MDMIs-here with[movedMDMI = 1] and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
      [
        ask one-of Salmonellas with[ycor < 0 and any? MDMIs-here with[movedMDMI = 1] and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
        [
          set targetSalmonella 1
          set salmonellaPhagocytizeByMDMI 1
          set salmonellaNewlyReleasedFromKupfferCell 0
          set salmonellaNewlyReleasedFromSECs 0
          set salmonellaNewlyReleasedFromHepatocyte 0
          set salmonellaNewlyReleasedFromMDMI 0
        ]
      ]

      ask MDMIs with[ycor < 0 and movedMDMI = 1]
      [
        ask link-neighbors
        [
          move-to one-of Salmonellas with[ycor < 0 and targetSalmonella = 1]
        ]
        set movedMDMI 0
        create-MDMISalmonella-links-with Salmonellas-here with[ycor < 0 and targetSalmonella = 1]
      ]

      ask Salmonellas with[ycor < 0 and targetSalmonella = 1 and not any? MDMIs-here with[ycor < 0 and movedMDMI = 1]]
      [
        set targetSalmonella 0
      ]
    ]
  ]
end

to MDMIKillBySalmonellaSubRoutine
  if (counter != 0)
  [
    ;;MDMIs that interact with CRP type complex have a higher phagocytosis rate
    set amountOfMDMIBeingKilledBySalmonellaPerLoop amountOfMDMIBeingKilledBySalmonellaPerLoop + (0.6 * count MDMIs with[MDMIBecomeApoptotic = 0 and any? Salmonellas-here with[salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0] and MDMIInteractWithCRPTypeComplex = 0])
    if (amountOfMDMIBeingKilledBySalmonellaPerLoop >= 1)
    [
      ask n-of (amountOfMDMIBeingKilledBySalmonellaPerLoop) MDMIs with [MDMIBecomeApoptotic = 0 and any? Salmonellas-here with[salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0] and MDMIInteractWithCRPTypeComplex = 0]
      [
        set MDMIKillBySalmonella 1
        set counter14 counter14 + 1
      ]

      set amountOfMDMIBeingKilledBySalmonellaPerLoop amountOfMDMIBeingKilledBySalmonellaPerLoop - counter14
      set counter14 0
    ]

    ;;Assign a state variable to identify Salmonella that replicate With MDMIs
    ask Salmonellas with[any? MDMIs-here with[MDMIKillBySalmonella = 1 and MDMIInteractWithCRPTypeComplex = 0 and MDMIInteractWithAntibodySalmonellaComplex = 0] and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
    [
      set salmonellaReplicateWithinMDMI 1
      set salmonellaNewlyReleasedFromKupfferCell 0
      set salmonellaNewlyReleasedFromSECs 0
      set salmonellaNewlyReleasedFromHepatocyte 0
      set salmonellaNewlyReleasedFromMDMI 0
    ]

    ask MDMIs with[MDMIKillBySalmonella = 1 and MDMIInteractWithCRPTypeComplex = 0 and MDMIInteractWithAntibodySalmonellaComplex = 0]
    [
      set MDMIDieInduceBySalmonellaAt? MDMIDieInduceBySalmonellaAt? + 1
    ]

    ask MDMIs with[MDMIKillBySalmonella = 1 and MDMIInteractWithCRPTypeComplex = 0 and MDMIInteractWithAntibodySalmonellaComplex = 0 and MDMIDieInduceBySalmonellaAt? >= 3]
    [
      die
    ]

    ;;Assign a state variable to identify released Salmonella from apoptotic MDMIs
    ask Salmonellas with[salmonellaReplicateWithinMDMI = 1 and not any? MDMIs-here with[MDMIKillBySalmonella = 1]]
    [
      set salmonellaReplicateWithinMDMI 0
      set salmonellaNewlyReleasedFromMDMI 1
    ]

    ;;Release IL-10 from dead MDMIs
    ask IL-10s with[IL10InteractWithMDMI = 1 and not any? MDMIs-here with[MDMIInteractWithIL10 = 1]]
    [
      set IL10InteractWithMDMI 0
      set IL10BindToMDMI 0
    ]

    ;;Assign a state variable to identify CD8 T cells, which NOT interact with MDMIs that phagocytize Salmonella
    ask CD8TCells with[CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella = 1 and not any? MDMIs-here with[MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 1]]
    [
      set CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella 0
    ]
  ]
end

to MDMIProduceTNFAlphaByPhagocytizeSalmonellaOrCRPTypeComplexSubRoutine
  if (counter != 0)
  [
   if any? MDMIs with[(MDMIPhagocytizeSalmonella = 1 or MDMIInteractWithCRPTypeComplex = 1) and MDMIProduceTNFAlpha = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0]
   [
     let TNFAlphaMaxReleaseRate maximumReleaseRateOfTNFAlphaByMDMIPerHour
     let TNFAlphaReleaseRate (TNFAlphaMaxReleaseRate * count MDMIs with[(MDMIPhagocytizeSalmonella = 1 or MDMIInteractWithCRPTypeComplex = 1) and MDMIProduceTNFAlpha = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0])/(170000 + count MDMIs with[(MDMIPhagocytizeSalmonella = 1 or MDMIInteractWithCRPTypeComplex = 1) and MDMIProduceTNFAlpha = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0])
     set TNFAlphaReleaseAmountByMDMIPerLoop TNFAlphaReleaseAmountByMDMIPerLoop + TNFAlphaReleaseRate * count MDMIs with[(MDMIPhagocytizeSalmonella = 1 or MDMIInteractWithCRPTypeComplex = 1) and MDMIProduceTNFAlpha = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0] / amountOfTNFAlphaBeingRepresentedByOneAgent
     set test6 TNFAlphaReleaseAmountByMDMIPerLoop
     if (TNFAlphaReleaseAmountByMDMIPerLoop >= 1)
     [
       ;;MDMIs that phagocytize CRP type complex activate the release of TNF-a
       ask one-of MDMIs with[(MDMIPhagocytizeSalmonella = 1 or MDMIInteractWithCRPTypeComplex = 1) and MDMIProduceTNFAlpha = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0]
       [
         hatch TNFAlphaReleaseAmountByMDMIPerLoop
         [
           set breed TNF-as
           set size 0.7 * patch-size
           set color 45
           set shape "TNF-a"
         ]
         set MDMIProduceTNFAlpha 1
       ]

       set TNFAlphaReleaseAmountByMDMIPerLoop 0

       ask MDMIs with[(MDMIPhagocytizeSalmonella = 1 or MDMIInteractWithCRPTypeComplex = 1) and MDMIProduceTNFAlpha = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0]
       [
         set MDMIProduceTNFAlpha 1
       ]
     ]
   ]
  ]
end

to MDMIProduceIL10ByPhagocytizeApoptoticCD4TCellOrCD8TCellSubRoutine
  if (counter != 0)
  [
    if any? MDMIs with[(MDMIInteractWithApoptoticCD4TCell = 1 or MDMIInteractWithApoptoticCD8TCell = 1) and MDMIProduceIL10 = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0]
    [
      let IL10MaxReleaseRate maximumReleaseRateOfIL10ByMDMIPerHour
      let IL10ReleaseRate (IL10MaxReleaseRate * count MDMIs with[(MDMIInteractWithApoptoticCD4TCell = 1 or MDMIInteractWithApoptoticCD8TCell = 1) and MDMIProduceIL10 = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0])/(10000 + count MDMIs with[(MDMIInteractWithApoptoticCD4TCell = 1 or MDMIInteractWithApoptoticCD8TCell = 1) and MDMIProduceIL10 = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0])
      set IL10ReleaseAmountByMDMIPerLoop IL10ReleaseAmountByMDMIPerLoop + IL10ReleaseRate * count MDMIs with[(MDMIInteractWithApoptoticCD4TCell = 1 or MDMIInteractWithApoptoticCD8TCell = 1) and MDMIProduceIL10 = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0] / amountOfIL10BeingRepresentedByOneAgent
      set test12 IL10ReleaseAmountByMDMIPerLoop
      if (IL10ReleaseAmountByMDMIPerLoop >= 1)
      [
        ask one-of MDMIs with[(MDMIInteractWithApoptoticCD4TCell = 1 or MDMIInteractWithApoptoticCD8TCell = 1) and MDMIProduceIL10 = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0]
        [
          hatch IL10ReleaseAmountByMDMIPerLoop
          [
            set breed IL-10s
            set size 0.7 * patch-size
            set color red
            set shape "IL-10"
          ]
          set MDMIProduceIL10 1
        ]

        set IL10ReleaseAmountByMDMIPerLoop 0

        ask MDMIs with[(MDMIInteractWithApoptoticCD4TCell = 1 or MDMIInteractWithApoptoticCD8TCell = 1) and MDMIProduceIL10 = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0]
        [
          set MDMIProduceIL10 1
        ]
      ]
    ]
  ]
end

to MDMIUndergoAgingByNatureSubRoutine
  if (counter != 0)
  [
    set MDMIIncreaseAmountPerLoop (amountOfMDMIFromRestingMonocytePerLoopUpperLiver + amountOfMDMIFromRestingMonocytePerLoopLowerLiver)
    set amountOfMDMIBeingKilledByNaturePerLoop 0.03 * count MDMIs with[MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0]
    ifelse (amountOfMDMIBeingKilledByNaturePerLoop) >= 1
    [
      ask n-of (amountOfMDMIBeingKilledByNaturePerLoop) MDMIs with[MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0]
      [
        set MDMIBecomeApoptotic 1
        set MDMIInteractWithIL10 0
        set MDMIBindToIL10 0
        set MDMIPhagocytizeSalmonella 0
        set MDMIPhagocytizeHepatocyteDebris 0
        set MDMIInteractWithApoptoticCD4TCell 0
        set MDMIProduceIL10 0
        set MDMIInteractWithApoptoticCD8TCell 0
        set MDMIInteractWithCRPTypeComplex 0
        set MDMIProduceTNFAlpha 0
      ]
    ]

    [
      set MDMIIncreaseAmountPerLoop MDMIIncreaseAmountPerLoop - amountOfMDMIBeingKilledByNaturePerLoop
    ]

    if (MDMIIncreaseAmountPerLoop < 0 or not any? Salmonellas)
    [
      if any? MDMIs with[MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0]
      [
        ask one-of MDMIs with[MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0]
        [
          set MDMIBecomeApoptotic 1
          set MDMIInteractWithIL10 0
          set MDMIBindToIL10 0
          set MDMIPhagocytizeSalmonella 0
          set MDMIPhagocytizeHepatocyteDebris 0
          set MDMIInteractWithApoptoticCD4TCell 0
          set MDMIProduceIL10 0
          set MDMIInteractWithApoptoticCD8TCell 0
          set MDMIInteractWithCRPTypeComplex 0
          set MDMIProduceTNFAlpha 0
        ]
      ]
      set MDMIIncreaseAmountPerLoop MDMIIncreaseAmountPerLoop + 1
    ]

    ask MDMIs with[MDMIBecomeApoptotic = 1]
    [
      set MDMIDieInduceByNaturalApoptosisAt? MDMIDieInduceByNaturalApoptosisAt? + 1
    ]

    ask MDMIs with[MDMIBecomeApoptotic = 1 and MDMIDieInduceByNaturalApoptosisAt? >= 3]
    [
      die
    ]

    ;;Release IL-10s from apoptotic MDMIs
    ask IL-10s with[IL10InteractWithMDMI = 1 and not any? MDMIs-here with[MDMIInteractWithIL10 = 1]]
    [
      set IL10InteractWithMDMI 0
      set IL10BindToMDMI 0
    ]
  ]

  repeat 3600
  [
    ask MDMIIL10-links with[end2 = one-of IL-10s with[IL10InteractWithMDMI = 0] or end1 = one-of MDMIs with[MDMIBecomeApoptotic = 1]]
    [
      die
    ]
  ]
end

to MDMITransformToKupfferCellSubRoutine
  if (counter != 0 and count KupfferCells < kupfferCellInitialNumber)
  [
    let transformRate rateOfMDMITransformToKupfferCellLowerLevel + random-float (rateOfMDMITransformToKupfferCellUpperLevel - rateOfMDMITransformToKupfferCellLowerLevel)
    set amountOfKupfferCellFromMDMIPerLoopUpperLiver amountOfKupfferCellFromMDMIPerLoopUpperLiver + transformRate * count MDMIs with[ycor > 0 and MDMIPhagocytizeSalmonella = 0 and MDMIPhagocytizeHepatocyteDebris = 0 and MDMIInteractWithApoptoticCD4TCell = 0 and MDMIInteractWithApoptoticCD8TCell = 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIInteractWithCRPTypeComplex = 0]
    if (amountOfKupfferCellFromMDMIPerLoopUpperLiver) >= 1
    [
      ask n-of (amountOfKupfferCellFromMDMIPerLoopUpperLiver) MDMIs with[ycor > 0 and MDMIPhagocytizeSalmonella = 0 and MDMIPhagocytizeHepatocyteDebris = 0 and MDMIInteractWithApoptoticCD4TCell = 0 and MDMIInteractWithApoptoticCD8TCell = 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIInteractWithCRPTypeComplex = 0]
      [
        set breed KupfferCells
        set size 0.6 * patch-size
        set color 35
        set kupfferCellInteractWithIL10 0
        set kupfferCellBindToIL10 0
        move-to one-of patches with [((pycor <= int (max-pycor - max-pycor / 1.1) + 25) and (pycor >= int (max-pycor - max-pycor / 1.1) - 6)) and not any? kupfferCells-here and portalTriadArea = 0]
        set counter17 counter17 + 1
      ]

      set amountOfKupfferCellFromMDMIPerLoopUpperLiver amountOfKupfferCellFromMDMIPerLoopUpperLiver - counter17
      set counter17 0
    ]

    set amountOfKupfferCellFromMDMIPerLoopLowerLiver amountOfKupfferCellFromMDMIPerLoopLowerLiver + transformRate * count MDMIs with[ycor < 0 and MDMIPhagocytizeSalmonella = 0 and MDMIPhagocytizeHepatocyteDebris = 0 and MDMIInteractWithApoptoticCD4TCell = 0 and MDMIInteractWithApoptoticCD8TCell = 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIInteractWithCRPTypeComplex = 0]
    if (amountOfKupfferCellFromMDMIPerLoopLowerLiver) >= 1
    [
      ask n-of (amountOfKupfferCellFromMDMIPerLoopLowerLiver) MDMIs with[ycor < 0 and MDMIPhagocytizeSalmonella = 0 and MDMIPhagocytizeHepatocyteDebris = 0 and MDMIInteractWithApoptoticCD4TCell = 0 and MDMIInteractWithApoptoticCD8TCell = 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIInteractWithCRPTypeComplex = 0]
      [
        set breed KupfferCells
        set size 0.6 * patch-size
        set color 35
        set kupfferCellInteractWithIL10 0
        set kupfferCellBindToIL10 0
        move-to one-of patches with [((pycor <= int (-(max-pycor - max-pycor / 1.1)) + 6) and (pycor >= int (-(max-pycor - max-pycor / 1.1)) - 25)) and not any? kupfferCells-here and portalTriadArea = 0]
        set counter18 counter18 + 1
      ]

      set amountOfKupfferCellFromMDMIPerLoopLowerLiver amountOfKupfferCellFromMDMIPerLoopLowerLiver - counter18
      set counter18 0
    ]

    ;;Release IL-10
    ask IL-10s with[IL10InteractWithMDMI = 1 and not any? MDMIs-here with[MDMIInteractWithIL10 = 1]]
    [
      set IL10InteractWithMDMI 0
      set IL10BindToMDMI 0
    ]
  ]

  repeat 7200
  [
    ask MDMIIL10-links with[end2 = one-of KupfferCells or end1 = one-of KupfferCells]
    [
      die
    ]
  ]
end

to MDMIWhoPhagocytizeSalmonellaUndergoApoptosisByInteractWithCD8TCellSubRoutine
  if (counter != 0)
  [
    ask MDMIs with[MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 1]
    [
      set MDMIWhoPhagocytizeSalmonellaUndergoApoptosisInduceByCD8TCellAt? MDMIWhoPhagocytizeSalmonellaUndergoApoptosisInduceByCD8TCellAt? + 1
    ]

    ask MDMIs with[MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 1 and MDMIWhoPhagocytizeSalmonellaUndergoApoptosisInduceByCD8TCellAt? >= timeOfMDMIWhoPhagocytizeSalmonellaDieByInteractWithCD8TCell]
    [
      die
    ]

    ;;Release Salmonella from dead MDMIs
    ask Salmonellas with[salmonellaReplicateWithinMDMI = 1 and not any? MDMIs-here with[MDMIPhagocytizeSalmonella = 1]]
    [
      set salmonellaReplicateWithinMDMI 0
      set salmonellaNewlyReleasedFromMDMI 1
    ]

   ;;Release IL-10 from dead MDMIs
   ask IL-10s with[IL10InteractWithMDMI = 1 and not any? MDMIs-here with[MDMIInteractWithIL10 = 1]]
   [
     set IL10InteractWithMDMI 0
     set IL10BindToMDMI 0
   ]

   ;;Assign a state variable to identify CD4 T cells that NOT interact with MDMIs that phagocytize Salmonella
   ask CD4TCells with[CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 1 and not any? MDMIs-here with[MDMIWhoPhagocytizeSalmonellaInteractWithCD4TCell = 1]]
   [
     set CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella 0
     set CD4TCellProduceTNFAlpha 0
     set CD4TCellProduceIL10 0
   ]

    ;;Assign a state variable to identify CD8 T cells that NOT interact with MDMIs that phagocytize Salmonella
    ask CD8TCells with[CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella = 1 and not any? MDMIs-here with[MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 1]]
    [
      set CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella 0
    ]
  ]
end
;;------------------------------------------------------------------------------------------------------------------------------------------

;;-------------------------Behaviors of MDMIIs in liver inflammation------------------------------------------------------------------------
to MDMIIPhagocytizeApoptoticNeutrophilSubRoutine
  if (counter != 0)
  [
    ask MDMIIs with[MDMIIBecomeApoptotic = 0 and any? ActivatedNeutrophils-here with[activatedNeutrophilUndergoApoptosisByNature = 1]]
    [
      set MDMIIInteractWithApoptoticNeutrophil 1
    ]

    ;;Assign a state variable to identify apoptotic neutrophils that are phagocytized by MDMIIs
    ask ActivatedNeutrophils with[any? MDMIIs-here with[MDMIIInteractWithApoptoticNeutrophil = 1] and activatedNeutrophilUndergoApoptosisByNature = 1]
    [
      set apoptoticActivatedNeutrophilInteractWithMDMII 1
    ]
  ]
end

to MDMIIProduceHMGB1ByPhagocytizeApoptoticNeutrophilSubRoutine
  if (counter != 0)
  [
    if (counter <= 12)
    [
      set maximumRateOfHMGB1BeingReleasedFromMDMIIPerHour maximumReleaseRateOfHMGB1ByMDMIIFrom8To12
    ]

    if (counter > 12 and counter <= 16)
    [
      set maximumRateOfHMGB1BeingReleasedFromMDMIIPerHour maximumReleaseRateOfHMGB1ByMDMIIFrom12To16
    ]

    if (counter > 16)
    [
      set maximumRateOfHMGB1BeingReleasedFromMDMIIPerHour maximumReleaseRateOfHMGB1ByMDMIIFrom16ToEnd
    ]

    if any? MDMIIs with[MDMIIProduceHMGB1 = 0 and MDMIIInteractWithApoptoticNeutrophil = 1 and MDMIIInteractWithIL10 = 0]
    [
      let HMGB1MaxReleaseRate maximumRateOfHMGB1BeingReleasedFromMDMIIPerHour
      let HMGB1ReleaseRate (HMGB1MaxReleaseRate * count MDMIIs with[MDMIIProduceHMGB1 = 0 and MDMIIInteractWithApoptoticNeutrophil = 1 and MDMIIInteractWithIL10 = 0])/(170000 + count MDMIIs with[MDMIIProduceHMGB1 = 0 and MDMIIInteractWithApoptoticNeutrophil = 1 and MDMIIInteractWithIL10 = 0])
      set HMGB1ReleaseAmountByMDMIIPerLoop HMGB1ReleaseAmountByMDMIIPerLoop + HMGB1ReleaseRate * count MDMIIs with[MDMIIProduceHMGB1 = 0 and MDMIIInteractWithApoptoticNeutrophil = 1 and MDMIIInteractWithIL10 = 0] / 2.82E-5
      set test9 HMGB1ReleaseAmountByMDMIIPerLoop
      if (HMGB1ReleaseAmountByMDMIIPerLoop >= 1)
      [
        ask one-of MDMIIs with[MDMIIProduceHMGB1 = 0 and MDMIIInteractWithApoptoticNeutrophil = 1 and MDMIIInteractWithIL10 = 0]
        [
          hatch HMGB1ReleaseAmountByMDMIIPerLoop
          [
            set breed HMGB-1s
            set size 0.7 * patch-size
            set color 65
            set shape "HMGB-1"
          ]
          set MDMIIProduceHMGB1 1
        ]

        set HMGB1ReleaseAmountByMDMIIPerLoop 0

        ask MDMIIs with[MDMIIProduceHMGB1 = 0 and MDMIIInteractWithApoptoticNeutrophil = 1 and MDMIIInteractWithIL10 = 0]
        [
          set MDMIIProduceHMGB1 1
        ]
      ]
    ]
  ]
end

to MDMIIProduceIL10ByPhagocytizeApoptoticNeutrophilOrApoptoticTCellSubRoutine
  if (counter != 0)
  [
    if any? MDMIIs with[MDMIIInteractWithIL10 = 0 and MDMIIProduceIL10 = 0 and (MDMIIInteractWithApoptoticNeutrophil = 1 or MDMIIInteractWithApoptoticCD4TCell = 1 or MDMIIInteractWithApoptoticCD8TCell = 1)]
    [
      let IL10MaxReleaseRate maximumReleaseRateOfIL10ByMDMIIPerHour
      let IL10ReleaseRate (IL10MaxReleaseRate * count MDMIIs with[MDMIIInteractWithIL10 = 0 and MDMIIProduceIL10 = 0 and (MDMIIInteractWithApoptoticNeutrophil = 1 or MDMIIInteractWithApoptoticCD4TCell = 1 or MDMIIInteractWithApoptoticCD8TCell = 1)])/(10000 + count MDMIIs with[MDMIIInteractWithIL10 = 0 and MDMIIProduceIL10 = 0 and (MDMIIInteractWithApoptoticNeutrophil = 1 or MDMIIInteractWithApoptoticCD4TCell = 1 or MDMIIInteractWithApoptoticCD8TCell = 1)])
      set IL10ReleaseAmountByMDMIIPerLoop IL10ReleaseAmountByMDMIIPerLoop + IL10ReleaseRate * count MDMIIs with[MDMIIInteractWithIL10 = 0 and MDMIIProduceIL10 = 0 and (MDMIIInteractWithApoptoticNeutrophil = 1 or MDMIIInteractWithApoptoticCD4TCell = 1 or MDMIIInteractWithApoptoticCD8TCell = 1)] / amountOfIL10BeingRepresentedByOneAgent
      set test13 IL10ReleaseAmountByMDMIIPerLoop
      if (IL10ReleaseAmountByMDMIIPerLoop >= 1)
      [
        ask one-of MDMIIs with[MDMIIInteractWithIL10 = 0 and MDMIIProduceIL10 = 0 and (MDMIIInteractWithApoptoticNeutrophil = 1 or MDMIIInteractWithApoptoticCD4TCell = 1 or MDMIIInteractWithApoptoticCD8TCell = 1)]
        [
          hatch IL10ReleaseAmountByMDMIIPerLoop
          [
            set breed IL-10s
            set size 0.7 * patch-size
            set color red
            set shape "IL-10"
          ]
          set MDMIIProduceIL10 1
        ]

        set IL10ReleaseAmountByMDMIIPerLoop 0

        ask MDMIIs with[MDMIIInteractWithIL10 = 0 and MDMIIProduceIL10 = 0 and (MDMIIInteractWithApoptoticNeutrophil = 1 or MDMIIInteractWithApoptoticCD4TCell = 1 or MDMIIInteractWithApoptoticCD8TCell = 1)]
        [
          set MDMIIProduceIL10 1
        ]
      ]
    ]
  ]
end

to MDMIIUndergoAgingByNatureSubRoutine
  if (counter != 0)
  [
    set MDMIIIncreaseAmountPerLoop (amountOfMDMIIFromRestingMonocytePerLoopUpperLiver + amountOfMDMIIFromRestingMonocytePerLoopLowerLiver)
    set amountOfMDMIIBeingKilledByNaturePerLoop 0.032 * count MDMIIs with[MDMIIBecomeApoptotic = 0]
    ifelse (amountOfMDMIIBeingKilledByNaturePerLoop) >= 1
    [
      ask n-of (amountOfMDMIIBeingKilledByNaturePerLoop) MDMIIs with[MDMIIBecomeApoptotic = 0]
      [
        set MDMIIBecomeApoptotic 1
        set MDMIIInteractWithIL10 0
        set MDMIIBindToIL10 0
        set MDMIIInteractWithApoptoticNeutrophil 0
        set MDMIIProduceIL10 0
        set MDMIIProduceHMGB1 0
        set MDMIIPhagocytizeHepatocyteDebris 0
        set MDMIIInteractWithApoptoticCD4TCell 0
        set MDMIIInteractWithApoptoticCD8TCell 0
      ]
    ]

    [
      set MDMIIIncreaseAmountPerLoop MDMIIIncreaseAmountPerLoop - amountOfMDMIIBeingKilledByNaturePerLoop
    ]

    if (MDMIIIncreaseAmountPerLoop < 0 or not any? Salmonellas)
    [
      if any? MDMIIs with[MDMIIBecomeApoptotic = 0]
      [
        ask one-of MDMIIs with[MDMIIBecomeApoptotic = 0]
        [
          set MDMIIBecomeApoptotic 1
          set MDMIIInteractWithIL10 0
          set MDMIIBindToIL10 0
          set MDMIIInteractWithApoptoticNeutrophil 0
          set MDMIIProduceIL10 0
          set MDMIIProduceHMGB1 0
          set MDMIIPhagocytizeHepatocyteDebris 0
          set MDMIIInteractWithApoptoticCD4TCell 0
          set MDMIIInteractWithApoptoticCD8TCell 0
        ]
      ]
      set MDMIIIncreaseAmountPerLoop MDMIIIncreaseAmountPerLoop + 1
    ]

    ask MDMIIs with[MDMIIBecomeApoptotic = 1]
    [
      set MDMIIDieInduceByNaturalApoptosisAt? MDMIIDieInduceByNaturalApoptosisAt? + 1
    ]

    ask MDMIIs with[MDMIIBecomeApoptotic = 1 and MDMIIDieInduceByNaturalApoptosisAt? >= 3]
    [
      die
    ]

    ;;Release IL-10 from apoptotic MDMIIs
    ask IL-10s with[IL10InteractWithMDMII = 1 and not any? MDMIIs-here with[MDMIIInteractWithIL10 = 1]]
    [
      set IL10InteractWithMDMII 0
      set IL10BindToMDMII 0
    ]
  ]

  repeat 3600
  [
    ask MDMIIIL10-links with[end2 = one-of IL-10s with[IL10InteractWithMDMII = 0]]
    [
      die
    ]
  ]
end

to MDMIITransformToKupfferCellSubRoutine
  if (counter != 0 and count KupfferCells < kupfferCellInitialNumber)
  [
    let transformRate rateOfMDMIITransformToKupfferCellLowerLevel + random-float (rateOfMDMIITransformToKupfferCellUpperLevel - rateOfMDMIITransformToKupfferCellLowerLevel)
    set amountOfKupfferCellFromMDMIIPerLoopUpperLiver amountOfKupfferCellFromMDMIIPerLoopUpperLiver + transformRate * count MDMIIs with[ycor > 0 and MDMIIInteractWithApoptoticNeutrophil = 0 and MDMIIPhagocytizeHepatocyteDebris = 0 and MDMIIInteractWithApoptoticCD4TCell = 0 and MDMIIInteractWithApoptoticCD8TCell = 0 and MDMIIBecomeApoptotic = 0]
    if (amountOfKupfferCellFromMDMIIPerLoopUpperLiver) >= 1
    [
      ask n-of (amountOfKupfferCellFromMDMIIPerLoopUpperLiver) MDMIIs with[ycor > 0 and MDMIIInteractWithApoptoticNeutrophil = 0 and MDMIIPhagocytizeHepatocyteDebris = 0 and MDMIIInteractWithApoptoticCD4TCell = 0 and MDMIIInteractWithApoptoticCD8TCell = 0 and MDMIIBecomeApoptotic = 0]
      [
        set breed KupfferCells
        set size 0.6 * patch-size
        set color gray
        set kupfferCellInteractWithIL10 0
        set kupfferCellBindToIL10 0
        move-to one-of patches with [((pycor <= int (max-pycor - max-pycor / 1.1) + 25) and (pycor >= int (max-pycor - max-pycor / 1.1) - 6)) and not any? kupfferCells-here and portalTriadArea = 0]
        set counter21 counter21 + 1
      ]

      set amountOfKupfferCellFromMDMIIPerLoopUpperLiver amountOfKupfferCellFromMDMIIPerLoopUpperLiver - counter21
      set counter21 0
    ]

    set amountOfKupfferCellFromMDMIIPerLoopLowerLiver amountOfKupfferCellFromMDMIIPerLoopLowerLiver + transformRate * count MDMIIs with[ycor < 0 and MDMIIInteractWithApoptoticNeutrophil = 0 and MDMIIPhagocytizeHepatocyteDebris = 0 and MDMIIInteractWithApoptoticCD4TCell = 0 and MDMIIInteractWithApoptoticCD8TCell = 0 and MDMIIBecomeApoptotic = 0]
    if (amountOfKupfferCellFromMDMIIPerLoopLowerLiver) >= 1
    [
      ask n-of (amountOfKupfferCellFromMDMIIPerLoopLowerLiver) MDMIIs with[ycor < 0 and MDMIIInteractWithApoptoticNeutrophil = 0 and MDMIIPhagocytizeHepatocyteDebris = 0 and MDMIIInteractWithApoptoticCD4TCell = 0 and MDMIIInteractWithApoptoticCD8TCell = 0 and MDMIIBecomeApoptotic = 0]
      [
        set breed KupfferCells
        set size 0.6 * patch-size
        set color gray
        set kupfferCellInteractWithIL10 0
        set kupfferCellBindToIL10 0
        move-to one-of patches with [((pycor <= int (-(max-pycor - max-pycor / 1.1)) + 6) and (pycor >= int (-(max-pycor - max-pycor / 1.1)) - 25)) and not any? kupfferCells-here and portalTriadArea = 0]
        set counter22 counter22 + 1
      ]

      set amountOfKupfferCellFromMDMIIPerLoopLowerLiver amountOfKupfferCellFromMDMIIPerLoopLowerLiver - counter22
      set counter22 0
    ]

    ;;Rlease IL-10s
    ask IL-10s with[IL10InteractWithMDMII = 1 and not any? MDMIIs-here with[MDMIIInteractWithIL10 = 1]]
    [
      set IL10InteractWithMDMII 0
    ]
  ]

  repeat 7200
  [
    ask MDMIIIL10-links with[end2 = one-of KupfferCells or end1 = one-of KupfferCells]
    [
      die
    ]
  ]
end
;;--------------------------------------------------------------------------------------------------------------------------------------------

;;----------------------------Behaviors of CD4 T cells in liver inflammation------------------------------------------------------------------
to CD4TCellMigrateFromPortalTriadToLiverSinusoidSubRoutine
  if (counter != 0 and any? MDMIs with[MDMIPhagocytizeSalmonella = 1] or (any? TNF-as and any? Histamines))
  [
    set AdjustedCD4TCellCarryCapacityInLiverSinusoid (CD4TCellCarryCapacityInLiverSinusoid - 26026575)
    let influxRate (influxRateOfCD4TCellToLiverSinusoidLowerLevel + random-float(influxRateOfCD4TCellToLiverSinusoidUpperLevel - influxRateOfCD4TCellToLiverSinusoidLowerLevel))
    set proliferatedCD4TCellPerLoop proliferatedCD4TCellPerLoop + influxRate * count CD4TCells  * (1 -  count CD4TCells / AdjustedCD4TCellCarryCapacityInLiverSinusoid)
    ask one-of CD4TCells with[CD4TCellInPortalTriad = 1]
    [
      if (proliferatedCD4TCellPerLoop >= 1)
      [
        hatch proliferatedCD4TCellPerLoop
      ]
      set proliferatedCD4TCellPerLoop proliferatedCD4TCellPerLoop - int (proliferatedCD4TCellPerLoop)
    ]

    ask n-of (count CD4TCells with[CD4TCellInPortalTriad = 1] - 1) CD4TCells with[CD4TCellInPortalTriad = 1]
    [
      move-to one-of patches with[pycor = 0 and portalTriadArea = 0]
      set CD4TCellInPortalTriad 0
    ]
  ]

end

to CD4TCellInteractWithAPCsAndImprovePhagocytosisRateSubRoutine
  if (counter != 0)
  [
    ;;CD4 T cells interact with kupffer cells who have intracellular Salmonella
    if any? KupfferCells with[kupfferCellInteractWithSalmonella = 1 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonellaPerLoop amountOfCD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonellaPerLoop + 0.02 * count CD4TCells with[CD4TCellInPortalTriad = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD4TCellUndergoApoptosisByNature = 0]
      if (amountOfCD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonellaPerLoop >= 1)
      [
        ifelse (amountOfCD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonellaPerLoop >= count KupfferCells with[kupfferCellInteractWithSalmonella = 1 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0])
        [
          repeat (count KupfferCells with[kupfferCellInteractWithSalmonella = 1 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0])
          [
            ask one-of CD4TCells with[CD4TCellInPortalTriad = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD4TCellUndergoApoptosisByNature = 0]
            [
              if any? KupfferCells with[kupfferCellInteractWithSalmonella = 1 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              [
                set movedCD4TCell 1
                move-to one-of KupfferCells with[kupfferCellInteractWithSalmonella = 1 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
                set CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella 1
              ]
            ]

            ask KupfferCells with[any? CD4TCells-here with[movedCD4TCell = 1] and not any? other KupfferCells-here with[targetKupfferCell = 1]]
            [
              set targetKupfferCell 1
              set kupfferCellWhoPhagocytizeSalmonellaInteractWithCD4TCell 1
            ]

            ask CD4TCells with[movedCD4TCell = 1]
            [
              ask link-neighbors
              [
                move-to one-of KupfferCells with[targetKupfferCell = 1]
              ]
              set movedCD4TCell 0
            ]

            ask KupfferCells with[targetKupfferCell = 1 and not any? CD4TCells-here with[movedCD4TCell = 1]]
            [
              set targetKupfferCell 0
            ]
          ]
          set amountOfCD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonellaPerLoop 0
        ]

        [
          repeat (amountOfCD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonellaPerLoop)
          [
            ask one-of CD4TCells with[CD4TCellInPortalTriad = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD4TCellUndergoApoptosisByNature = 0]
            [
              if any? KupfferCells with[kupfferCellInteractWithSalmonella = 1 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              [
                set movedCD4TCell 1
                move-to one-of KupfferCells with[kupfferCellInteractWithSalmonella = 1 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
                set CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella 1
                set counter119 counter119 + 1
              ]
            ]

            ask KupfferCells with[any? CD4TCells-here with[movedCD4TCell = 1] and not any? other KupfferCells-here with[targetKupfferCell = 1]]
            [
              set targetKupfferCell 1
              set kupfferCellWhoPhagocytizeSalmonellaInteractWithCD4TCell 1
            ]

            ask CD4TCells with[movedCD4TCell = 1]
            [
              ask link-neighbors
              [
                move-to one-of KupfferCells with[targetKupfferCell = 1]
              ]
              set movedCD4TCell 0
            ]

            ask KupfferCells with[targetKupfferCell = 1 and not any? CD4TCells-here with[movedCD4TCell = 1]]
            [
              set targetKupfferCell 0
            ]
          ]
          set amountOfCD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonellaPerLoop amountOfCD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonellaPerLoop - counter119
          set counter119 0
        ]
      ]
    ]

    ;;Kupffer cells that interact with CD4 T cells phagocytize Salmonella
    ask Salmonellas with[salmonellaReplicateWithinKupfferCell = 1 and any? KupfferCells-here with[kupfferCellKillBySalmonella = 1 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD4TCell = 1]]
    [
      set salmonellaPhagocytizeByKupfferCell 1
      set salmonellaReplicateWithinKupfferCell 0
    ]

    ask KupfferCells with[kupfferCellWhoPhagocytizeSalmonellaInteractWithCD4TCell = 1]
    [
      set kupfferCellKillBySalmonella 0
      set kupfferCellDieInduceBySalmonellaAt? 0
    ]

    ;;CD4 T cells interact with activated neutrophils who have intracellular Salmonella
    if any? ActivatedNeutrophils with[activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonellaPerLoop amountOfCD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonellaPerLoop + 0.02 * count CD4TCells with[CD4TCellInPortalTriad = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD4TCellUndergoApoptosisByNature = 0]
      if (amountOfCD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonellaPerLoop >= 1)
      [
        ifelse (amountOfCD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonellaPerLoop >= count ActivatedNeutrophils with[activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0])
        [
          repeat (count ActivatedNeutrophils with[activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0])
          [
            if any? CD4TCells with[CD4TCellInPortalTriad = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD4TCellUndergoApoptosisByNature = 0]
            [
              ask one-of CD4TCells with[CD4TCellInPortalTriad = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD4TCellUndergoApoptosisByNature = 0]
              [
                if any? ActivatedNeutrophils with[activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
                [
                  set movedCD4TCell 1
                  move-to one-of ActivatedNeutrophils with[activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
                  set CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella 1
                ]
              ]
            ]

            ask ActivatedNeutrophils with[any? CD4TCells-here with[movedCD4TCell = 1]]
            [
              set targetNeutrophil 1
              set activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD4TCell 1
            ]

            ask CD4TCells with[movedCD4TCell = 1]
            [
              ask link-neighbors
              [
                move-to one-of ActivatedNeutrophils with[targetNeutrophil = 1]
              ]
              set movedCD4TCell 0
            ]

            ask ActivatedNeutrophils with[targetNeutrophil = 1 and not any? CD4TCells-here with[movedCD4TCell = 1]]
            [
              set targetNeutrophil 0
            ]
          ]
          set amountOfCD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonellaPerLoop 0
        ]

        [
          repeat (amountOfCD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonellaPerLoop)
          [
            if any? CD4TCells with[CD4TCellInPortalTriad = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD4TCellUndergoApoptosisByNature = 0]
            [
              ask one-of CD4TCells with[CD4TCellInPortalTriad = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD4TCellUndergoApoptosisByNature = 0]
              [
                if any? ActivatedNeutrophils with[activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
                [
                  set movedCD4TCell 1
                  move-to one-of ActivatedNeutrophils with[activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
                  set CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella 1
                  set counter120 counter120 + 1
                ]
              ]
            ]

            ask ActivatedNeutrophils with[any? CD4TCells-here with[movedCD4TCell = 1]]
            [
              set targetNeutrophil 1
              set activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD4TCell 1
            ]

            ask CD4TCells with[movedCD4TCell = 1]
            [
              ask link-neighbors
              [
                move-to one-of ActivatedNeutrophils with[targetNeutrophil = 1]
              ]
              set movedCD4TCell 0
            ]

            ask ActivatedNeutrophils with[targetNeutrophil = 1 and not any? CD4TCells-here with[movedCD4TCell = 1]]
            [
              set targetNeutrophil 0
            ]
          ]
          set amountOfCD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonellaPerLoop amountOfCD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonellaPerLoop - counter120
          set counter120 0
        ]
      ]
    ]

    ;;CD4 T cells interact with MDMIs who have intracellular Salmonella
    if any? MDMIs with[(MDMIPhagocytizeSalmonella = 1 or MDMIKillBySalmonella = 1) and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCD4TCellInteractWithMDMIWhoPhagocytizeSalmonellaPerLoop amountOfCD4TCellInteractWithMDMIWhoPhagocytizeSalmonellaPerLoop + 0.02 * count CD4TCells with[CD4TCellInPortalTriad = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD4TCellUndergoApoptosisByNature = 0]
      if (amountOfCD4TCellInteractWithMDMIWhoPhagocytizeSalmonellaPerLoop >= 1)
      [
        ifelse (amountOfCD4TCellInteractWithMDMIWhoPhagocytizeSalmonellaPerLoop >= count MDMIs with[(MDMIPhagocytizeSalmonella = 1 or MDMIKillBySalmonella = 1) and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0])
        [
          repeat (count MDMIs with[(MDMIPhagocytizeSalmonella = 1 or MDMIKillBySalmonella = 1) and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0])
          [
            if any? CD4TCells with[CD4TCellInPortalTriad = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD4TCellUndergoApoptosisByNature = 0]
            [
              ask one-of CD4TCells with[CD4TCellInPortalTriad = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD4TCellUndergoApoptosisByNature = 0]
              [
                if any? MDMIs with[(MDMIPhagocytizeSalmonella = 1 or MDMIKillBySalmonella = 1) and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
                [
                  set movedCD4TCell 1
                  move-to one-of MDMIs with[(MDMIPhagocytizeSalmonella = 1 or MDMIKillBySalmonella = 1) and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
                  set CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella 1
                ]
              ]
            ]

            ask MDMIs with[any? CD4TCells-here with[movedCD4TCell = 1]]
            [
              set targetMDMI 1
              set MDMIWhoPhagocytizeSalmonellaInteractWithCD4TCell 1
            ]

            ask CD4TCells with[movedCD4TCell = 1]
            [
              ask link-neighbors
              [
                move-to one-of MDMIs with[targetMDMI = 1]
              ]
              set movedCD4TCell 0
            ]

            ask MDMIs with[targetMDMI = 1 and not any? CD4TCells-here with[movedCD4TCell = 1]]
            [
              set targetMDMI 0
            ]
          ]
          set amountOfCD4TCellInteractWithMDMIWhoPhagocytizeSalmonellaPerLoop 0
        ]

        [
          repeat (amountOfCD4TCellInteractWithMDMIWhoPhagocytizeSalmonellaPerLoop)
          [
            if any? CD4TCells with[CD4TCellInPortalTriad = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD4TCellUndergoApoptosisByNature = 0]
            [
              ask one-of CD4TCells with[CD4TCellInPortalTriad = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD4TCellUndergoApoptosisByNature = 0]
              [
                if any? MDMIs with[(MDMIPhagocytizeSalmonella = 1 or MDMIKillBySalmonella = 1) and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
                [
                  set movedCD4TCell 1
                  move-to one-of MDMIs with[(MDMIPhagocytizeSalmonella = 1 or MDMIKillBySalmonella = 1) and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
                  set CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella 1
                  set counter121 counter121 + 1
                ]
              ]
            ]

            ask MDMIs with[any? CD4TCells-here with[movedCD4TCell = 1]]
            [
              set targetMDMI 1
              set MDMIWhoPhagocytizeSalmonellaInteractWithCD4TCell 1
            ]

            ask CD4TCells with[movedCD4TCell = 1]
            [
              ask link-neighbors
              [
                move-to one-of MDMIs with[targetMDMI = 1]
              ]
              set movedCD4TCell 0
            ]

            ask MDMIs with[targetMDMI = 1 and not any? CD4TCells-here with[movedCD4TCell = 1]]
            [
              set targetMDMI 0
            ]
          ]
          set amountOfCD4TCellInteractWithMDMIWhoPhagocytizeSalmonellaPerLoop amountOfCD4TCellInteractWithMDMIWhoPhagocytizeSalmonellaPerLoop - counter121
          set counter121 0
        ]
      ]
    ]

    ;;MDMIs that interact with CD4 T cells phagocytize Salmonella
    ask Salmonellas with[salmonellaReplicateWithinMDMI = 1 and any? MDMIs-here with[MDMIKillBySalmonella = 1 and MDMIWhoPhagocytizeSalmonellaInteractWithCD4TCell = 1]]
    [
      set salmonellaPhagocytizeByMDMI 1
      set salmonellaReplicateWithinMDMI 0
    ]

    ask MDMIs with[MDMIWhoPhagocytizeSalmonellaInteractWithCD4TCell = 1]
    [
      set MDMIKillBySalmonella 0
      set MDMIDieInduceBySalmonellaAt? 0
    ]
  ]
end

to CD4TCellProduceTNFAlphaByInteractWithAPCsSubRoutine
  if (counter != 0)
  [
    ;;CD4 T cells that interact with APCs produce TNF-a
    if any? CD4TCells with[CD4TCellProduceTNFAlpha = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 1 and CD4TCellInteractWithIL10 = 0]
    [
      let TNFAlphaMaxReleaseRate maximumReleaseRateOfTNFAlphaByCD4TCellPerHour
      let TNFAlphaReleaseRate (TNFAlphaMaxReleaseRate * count CD4TCells with[CD4TCellProduceTNFAlpha = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 1 and CD4TCellInteractWithIL10 = 0])/(600000 + count CD4TCells with[CD4TCellProduceTNFAlpha = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 1 and CD4TCellInteractWithIL10 = 0])
      set TNFAlphaReleaseAmountByCD4TCellPerLoop TNFAlphaReleaseAmountByCD4TCellPerLoop + TNFAlphaReleaseRate * count CD4TCells with[CD4TCellProduceTNFAlpha = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 1 and CD4TCellInteractWithIL10 = 0] / amountOfTNFAlphaBeingRepresentedByOneAgent
      set test7 TNFAlphaReleaseAmountByCD4TCellPerLoop
      if (TNFAlphaReleaseAmountByCD4TCellPerLoop >= 1)
      [
        ask one-of CD4TCells with[CD4TCellProduceTNFAlpha = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 1 and CD4TCellInteractWithIL10 = 0]
        [
          hatch TNFAlphaReleaseAmountByCD4TCellPerLoop
          [
            set breed TNF-as
            set size 0.7 * patch-size
            set color 45
            set shape "TNF-a"
          ]
          set CD4TCellProduceTNFAlpha 1
        ]
        set TNFAlphaReleaseAmountByCD4TCellPerLoop 0

        ask CD4TCells with[CD4TCellProduceTNFAlpha = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 1 and CD4TCellInteractWithIL10 = 0]
        [
          set CD4TCellProduceTNFAlpha 1
        ]
      ]
    ]
  ]
end

to CD4TCellProduceIL10ByInteractWithAPCsSubRoutine
  if (counter != 0)
  [
    if any? CD4TCells with[(CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 1) and CD4TCellInteractWithIL10 = 0 and CD4TCellProduceIL10 = 0]
    [
      let IL10MaxReleaseRate maximumReleaseRateOfIL10ByCD4TCellPerHour
      let IL10ReleaseRate (IL10MaxReleaseRate * count CD4TCells with[CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 1 and CD4TCellInteractWithIL10 = 0 and CD4TCellProduceIL10 = 0])/(600000 + count CD4TCells with[CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 1 and CD4TCellInteractWithIL10 = 0 and CD4TCellProduceIL10 = 0])
      set IL10ReleaseAmountByCD4TCellPerLoop IL10ReleaseAmountByCD4TCellPerLoop + IL10ReleaseRate * count CD4TCells with[CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 1 and CD4TCellInteractWithIL10 = 0 and CD4TCellProduceIL10 = 0] / amountOfIL10BeingRepresentedByOneAgent
      set test14 IL10ReleaseAmountByCD4TCellPerLoop
      if (IL10ReleaseAmountByCD4TCellPerLoop >= 1)
      [
        ask one-of CD4TCells with[(CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 1) and CD4TCellInteractWithIL10 = 0 and CD4TCellProduceIL10 = 0]
        [
          hatch IL10ReleaseAmountByCD4TCellPerLoop
          [
            set breed IL-10s
            set size 0.7 * patch-size
            set color red
            set shape "IL-10"
          ]
          set CD4TCellProduceIL10 1
        ]

        set IL10ReleaseAmountByCD4TCellPerLoop 0

        ask CD4TCells with[(CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 1 or CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 1) and CD4TCellInteractWithIL10 = 0 and CD4TCellProduceIL10 = 0]
        [
          set CD4TCellProduceIL10 1
        ]
      ]
    ]
  ]
end

to apoptoticCD4TCellPhagocytizeByMDMI0rMDMIISubRoutine
  if (counter != 0)
  [
    ;;Apoptotic CD4 T cells are phagocytized by MDMIs (upper liver sinusoid)
    if any? MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfApoptoticCD4TCellPhagocytizeByMDMIPerLoopUpperLiver amountOfApoptoticCD4TCellPhagocytizeByMDMIPerLoopUpperLiver + 0.5 * count CD4TCells with[ycor > 0 and apoptoticCD4TCellPhagocytizeByMDMI = 0 and apoptoticCD4TCellPhagocytizeByMDMII = 0 and CD4TCellUndergoApoptosisByNature = 1]
      if (amountOfApoptoticCD4TCellPhagocytizeByMDMIPerLoopUpperLiver >= 1)
      [
        ask n-of (amountOfApoptoticCD4TCellPhagocytizeByMDMIPerLoopUpperLiver) CD4TCells with[ycor > 0 and apoptoticCD4TCellPhagocytizeByMDMI = 0 and apoptoticCD4TCellPhagocytizeByMDMII = 0 and CD4TCellUndergoApoptosisByNature = 1]
        [
          move-to one-of MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
          set apoptoticCD4TCellPhagocytizeByMDMI 1
          set counter124 counter124 + 1
        ]
        set amountOfApoptoticCD4TCellPhagocytizeByMDMIPerLoopUpperLiver amountOfApoptoticCD4TCellPhagocytizeByMDMIPerLoopUpperLiver - counter124
        set counter124 0
      ]
    ]

    ;;Apoptotic CD4 T cells are phagocytized by MDMIs (lower liver sinusoid)
    if any? MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfApoptoticCD4TCellPhagocytizeByMDMIPerLoopLowerLiver amountOfApoptoticCD4TCellPhagocytizeByMDMIPerLoopLowerLiver + 0.5 * count CD4TCells with[ycor < 0 and apoptoticCD4TCellPhagocytizeByMDMI = 0 and apoptoticCD4TCellPhagocytizeByMDMII = 0 and CD4TCellUndergoApoptosisByNature = 1]
      if (amountOfApoptoticCD4TCellPhagocytizeByMDMIPerLoopLowerLiver >= 1)
      [
        ask n-of (amountOfApoptoticCD4TCellPhagocytizeByMDMIPerLoopLowerLiver) CD4TCells with[ycor < 0 and apoptoticCD4TCellPhagocytizeByMDMI = 0 and apoptoticCD4TCellPhagocytizeByMDMII = 0 and CD4TCellUndergoApoptosisByNature = 1]
        [
          if any? MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
          [
            move-to one-of MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            set apoptoticCD4TCellPhagocytizeByMDMI 1
            set counter125 counter125 + 1
          ]
        ]
        set amountOfApoptoticCD4TCellPhagocytizeByMDMIPerLoopLowerLiver amountOfApoptoticCD4TCellPhagocytizeByMDMIPerLoopLowerLiver - counter125
        set counter125 0
      ]
    ]

    ;;Apoptotic CD4 T cells are phagocytized by MDMIIs (upper liver sinusoid)
    if any? MDMIIs with [ycor > 0 and MDMIIBecomeApoptotic = 0]
    [
      set amountOfApoptoticCD4TCellPhagocytizeByMDMIIPerLoopUpperLiver amountOfApoptoticCD4TCellPhagocytizeByMDMIIPerLoopUpperLiver + 0.5 * count CD4TCells with[ycor > 0 and CD4TCellInPortalTriad = 0 and apoptoticCD4TCellPhagocytizeByMDMI = 0 and apoptoticCD4TCellPhagocytizeByMDMII = 0 and CD4TCellUndergoApoptosisByNature = 1]
      if (amountOfApoptoticCD4TCellPhagocytizeByMDMIIPerLoopUpperLiver >= 1)
      [
        ask n-of (amountOfApoptoticCD4TCellPhagocytizeByMDMIIPerLoopUpperLiver) CD4TCells with[ycor > 0 and CD4TCellInPortalTriad = 0 and apoptoticCD4TCellPhagocytizeByMDMI = 0 and apoptoticCD4TCellPhagocytizeByMDMII = 0 and CD4TCellUndergoApoptosisByNature = 1]
        [
          move-to one-of MDMIIs with [ycor > 0 and MDMIIBecomeApoptotic = 0]
          set apoptoticCD4TCellPhagocytizeByMDMII 1
          set counter126 counter126 + 1
        ]
        set amountOfApoptoticCD4TCellPhagocytizeByMDMIIPerLoopUpperLiver amountOfApoptoticCD4TCellPhagocytizeByMDMIIPerLoopUpperLiver - counter126
        set counter126 0
      ]
    ]

    ;;Apoptotic CD4 T cells are phagocytized by MDMIIs (lower liver sinusoid)
    if any? MDMIIs with [ycor < 0 and MDMIIBecomeApoptotic = 0]
    [
      set amountOfApoptoticCD4TCellPhagocytizeByMDMIIPerLoopLowerLiver amountOfApoptoticCD4TCellPhagocytizeByMDMIIPerLoopLowerLiver + 0.5 * count CD4TCells with[ycor < 0 and CD4TCellInPortalTriad = 0 and apoptoticCD4TCellPhagocytizeByMDMI = 0 and apoptoticCD4TCellPhagocytizeByMDMII = 0 and CD4TCellUndergoApoptosisByNature = 1]
      if (amountOfApoptoticCD4TCellPhagocytizeByMDMIIPerLoopLowerLiver >= 1)
      [
        ask n-of (amountOfApoptoticCD4TCellPhagocytizeByMDMIIPerLoopLowerLiver) CD4TCells with[ycor < 0 and CD4TCellInPortalTriad = 0 and apoptoticCD4TCellPhagocytizeByMDMI = 0 and apoptoticCD4TCellPhagocytizeByMDMII = 0 and CD4TCellUndergoApoptosisByNature = 1]
        [
          move-to one-of MDMIIs with [ycor < 0 and MDMIIBecomeApoptotic = 0]
          set apoptoticCD4TCellPhagocytizeByMDMII 1
          set counter127 counter127 + 1
        ]
        set amountOfApoptoticCD4TCellPhagocytizeByMDMIIPerLoopLowerLiver amountOfApoptoticCD4TCellPhagocytizeByMDMIIPerLoopLowerLiver - counter127
        set counter127 0
      ]
    ]

    ask MDMIs with[any? CD4TCells-here with[apoptoticCD4TCellPhagocytizeByMDMI = 1] and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set MDMIInteractWithApoptoticCD4TCell 1
    ]

    ask MDMIIs with[any? CD4TCells-here with[apoptoticCD4TCellPhagocytizeByMDMII = 1] and MDMIIBecomeApoptotic = 0]
    [
      set MDMIIInteractWithApoptoticCD4TCell 1
    ]

    ask CD4TCells with[apoptoticCD4TCellPhagocytizeByMDMI = 1 or apoptoticCD4TCellPhagocytizeByMDMII = 1]
    [
      set apoptoticCD4TCellDieInduceByMDMIOrMDMIIAt? apoptoticCD4TCellDieInduceByMDMIOrMDMIIAt? + 1
    ]

    ask CD4TCells with[(apoptoticCD4TCellPhagocytizeByMDMI = 1 or apoptoticCD4TCellPhagocytizeByMDMII = 1) and apoptoticCD4TCellDieInduceByMDMIOrMDMIIAt? >= 2]
    [
      die
    ]

    ;;Assign a state variable to identify MDMIs and MDMIIs that NOT Interact With apoptotic CD4 T cells
    ask MDMIs with[MDMIInteractWithApoptoticCD4TCell = 1 and not any? CD4TCells-here with[apoptoticCD4TCellPhagocytizeByMDMI = 1]]
    [
      set MDMIInteractWithApoptoticCD4TCell 0
      set MDMIProduceIL10 0
    ]

    ask MDMIIs with[MDMIIInteractWithApoptoticCD4TCell = 1 and not any? CD4TCells-here with[apoptoticCD4TCellPhagocytizeByMDMII = 1]]
    [
      set MDMIIInteractWithApoptoticCD4TCell 0
      set MDMIIProduceIL10 0
    ]
  ]
end

to CD4TCellUndergoAgingByNatureSubRoutine
  if (counter != 0 and any? MDMIs with[MDMIPhagocytizeSalmonella = 1] or (any? TNF-as and any? Histamines))
  [
    set amountOfCD4TCellUndergoAgingByNaturePerLoop amountOfCD4TCellUndergoAgingByNaturePerLoop + 0.08 * count CD4TCells with[CD4TCellInPortalTriad = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD4TCellUndergoApoptosisByNature = 0]
    if (amountOfCD4TCellUndergoAgingByNaturePerLoop >= 1)
    [
      ask n-of (amountOfCD4TCellUndergoAgingByNaturePerLoop) CD4TCells with[CD4TCellInPortalTriad = 0 and CD4TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD4TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD4TCellUndergoApoptosisByNature = 0]
      [
        set CD4TCellUndergoApoptosisByNature 1
        set CD4TCellInteractWithIL10 0
        set CD4TCellBindToIL10 0
        set CD4TCellInteractWithBCell 0
        set CD4TCellBindToBCell 0
        set counter128 counter128 + 1
      ]

      set amountOfCD4TCellUndergoAgingByNaturePerLoop amountOfCD4TCellUndergoAgingByNaturePerLoop - counter128
      set counter128 0
    ]

    ;;Release IL-10 from apoptotic CD4 T cells
    ask IL-10s with[IL10InteractWithCD4TCell = 1 and not any? CD4TCells-here with[CD4TCellInteractWithIL10 = 1]]
    [
      set IL10InteractWithCD4TCell 0
      set IL10BindToCD4TCell 0
    ]

    ;;Release B cells from apoptotic CD4 T cells
    ask BCells with[BCellInteractWithCD4TCell = 1 and not any? CD4TCells-here with[CD4TCellInteractWithBCell = 1]]
    [
      set BCellInteractWithCD4TCell 0
    ]
  ]

  repeat 3600
  [
    ask CD4TCellIL10-links with[end2 = one-of IL-10s with[IL10InteractWithCD4TCell = 0]]
    [
      die
    ]
    ask CD4TCellBCell-links with[end1 = one-of CD4TCells with[CD4TCellInteractWithBCell = 0] or end2 = one-of CD4TCells with[CD4TCellInteractWithBCell = 0]]
    [
      die
    ]
  ]
end
;;----------------------------------------------------------------------------------------------------------------------------------------

;;---------------------Behaviors of CD8 T cells in liver inflammation---------------------------------------------------------------------
to CD8TCellMigrateFromPortalTriadToLiverSinusoidSubRoutine
  if (counter != 0 and any? MDMIs with[MDMIPhagocytizeSalmonella = 1] or (any? TNF-as and any? Histamines))
  [
    set AdjustedCD8TCellCarryCapacityInLiverSinusoid (CD8TCellCarryCapacityInLiverSinusoid - 4749375)
    set proliferatedCD8TCellPerLoop proliferatedCD8TCellPerLoop + influxRateOfCD8TCellToLiverSinusoidPerHour * count CD8TCells  * (1 -  count CD8TCells / AdjustedCD8TCellCarryCapacityInLiverSinusoid)
    ask one-of CD8TCells with[CD8TCellInPortalTriad = 1]
    [
      if (proliferatedCD8TCellPerLoop >= 1)
      [
        hatch proliferatedCD8TCellPerLoop
      ]

      set proliferatedCD8TCellPerLoop proliferatedCD8TCellPerLoop - int (proliferatedCD8TCellPerLoop)
    ]

    ask n-of (count CD8TCells with[CD8TCellInPortalTriad = 1] - 1) CD8TCells with[CD8TCellInPortalTriad = 1]
    [
      move-to one-of patches with[pycor = 0 and portalTriadArea = 0]
      set CD8TCellInPortalTriad 0
    ]
  ]
end

to CD8TCellInduceApoptosisOfKupfferCellOrNeutrophilOrMDMIWhoPhagocytizeSalmonellaSubRoutine
  if (counter != 0)
  [
    if any? KupfferCells with[kupfferCellInteractWithSalmonella = 1 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonellaPerLoop amountOfCD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonellaPerLoop + 0.33 * count CD8TCells with [CD8TCellInPortalTriad = 0 and CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD8TCellUndergoApoptosisByNature = 0]
      if (amountOfCD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonellaPerLoop >= 1)
      [
        ifelse (amountOfCD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonellaPerLoop >= count KupfferCells with[kupfferCellInteractWithSalmonella = 1 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0])
        [
          ask n-of(count KupfferCells with[kupfferCellInteractWithSalmonella = 1 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0])CD8TCells with [CD8TCellInPortalTriad = 0 and CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD8TCellUndergoApoptosisByNature = 0]
          [
            move-to one-of KupfferCells with[kupfferCellInteractWithSalmonella = 1 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            set CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella 1
          ]

          set amountOfCD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonellaPerLoop 0
        ]

        [
          ask n-of (amountOfCD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonellaPerLoop)CD8TCells with [CD8TCellInPortalTriad = 0 and CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD8TCellUndergoApoptosisByNature = 0]
          [
            move-to one-of KupfferCells with[kupfferCellInteractWithSalmonella = 1 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            set CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella 1
            set counter111 counter111 + 1
          ]

          set amountOfCD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonellaPerLoop amountOfCD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonellaPerLoop - counter111
          set counter111 0
        ]
      ]
    ]

    ask KupfferCells with[any? CD8TCells-here with[CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 1] and kupfferCellInteractWithSalmonella = 1 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and not any? other KupfferCells-here with[kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 1]]
    [
      set kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell 1
    ]

    if any? ActivatedNeutrophils with[activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonellaPerLoop amountOfCD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonellaPerLoop + 0.33 * count CD8TCells with [CD8TCellInPortalTriad = 0 and CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD8TCellUndergoApoptosisByNature = 0]
      if (amountOfCD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonellaPerLoop >= 1)
      [
        ifelse (amountOfCD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonellaPerLoop >= count ActivatedNeutrophils with[activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0])
        [
          ask n-of (count ActivatedNeutrophils with[activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0])CD8TCells with [CD8TCellInPortalTriad = 0 and CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD8TCellUndergoApoptosisByNature = 0]
          [
            move-to one-of ActivatedNeutrophils with[activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            set CD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonella 1
          ]
          set amountOfCD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonellaPerLoop 0
        ]

        [
          ask n-of (amountOfCD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonellaPerLoop) CD8TCells with [CD8TCellInPortalTriad = 0 and CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD8TCellUndergoApoptosisByNature = 0]
          [
            move-to one-of ActivatedNeutrophils with[activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            set CD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonella 1
            set counter112 counter112 + 1
          ]
          set amountOfCD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonellaPerLoop amountOfCD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonellaPerLoop - counter112
          set counter112 0
        ]
      ]
    ]

    ask ActivatedNeutrophils with[any? CD8TCells-here with[CD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 1] and activatedNeutrophilInteractWithSalmonella = 1 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell 1
    ]

    if any? MDMIs with[(MDMIPhagocytizeSalmonella = 1 or MDMIKillBySalmonella = 1) and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfCD8TCellInteractWithMDMIWhoPhagocytizeSalmonellaPerLoop amountOfCD8TCellInteractWithMDMIWhoPhagocytizeSalmonellaPerLoop + 0.33 * count CD8TCells with [CD8TCellInPortalTriad = 0 and CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD8TCellUndergoApoptosisByNature = 0]
      if (amountOfCD8TCellInteractWithMDMIWhoPhagocytizeSalmonellaPerLoop >= 1)
      [
        ifelse (amountOfCD8TCellInteractWithMDMIWhoPhagocytizeSalmonellaPerLoop >= count MDMIs with[(MDMIPhagocytizeSalmonella = 1 or MDMIKillBySalmonella = 1) and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0])
        [
          ask n-of (count MDMIs with[(MDMIPhagocytizeSalmonella = 1 or MDMIKillBySalmonella = 1) and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0])CD8TCells with [CD8TCellInPortalTriad = 0 and CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD8TCellUndergoApoptosisByNature = 0]
          [
            move-to one-of MDMIs with[(MDMIPhagocytizeSalmonella = 1 or MDMIKillBySalmonella = 1) and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            set CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella 1
          ]
          set amountOfCD8TCellInteractWithMDMIWhoPhagocytizeSalmonellaPerLoop 0
        ]

        [
          ask n-of (amountOfCD8TCellInteractWithMDMIWhoPhagocytizeSalmonellaPerLoop)CD8TCells with [CD8TCellInPortalTriad = 0 and CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD8TCellUndergoApoptosisByNature = 0]
          [
            move-to one-of MDMIs with[(MDMIPhagocytizeSalmonella = 1 or MDMIKillBySalmonella = 1) and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
            set CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella 1
            set counter113 counter113 + 1
          ]
          set amountOfCD8TCellInteractWithMDMIWhoPhagocytizeSalmonellaPerLoop amountOfCD8TCellInteractWithMDMIWhoPhagocytizeSalmonellaPerLoop - counter113
          set counter113 0
        ]
      ]
    ]

    ask MDMIs with[any? CD8TCells-here with[CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella = 1] and (MDMIPhagocytizeSalmonella = 1 or MDMIKillBySalmonella = 1) and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell 1
    ]
  ]
end

to apoptoticCD8TCellPhagocytizeByMDMIOrMDMIISubRoutine
  if (counter != 0)
  [
    ;;Apoptotic CD8 T cells are phagocytized by MDMIs (upper liver sinusoid)
    if any? MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfApoptoticCD8TCellPhagocytizeByMDMIPerLoopUpperLiver amountOfApoptoticCD8TCellPhagocytizeByMDMIPerLoopUpperLiver + 0.5 * count CD8TCells with[ycor > 0 and apoptoticCD8TCellPhagocytizeByMDMI = 0 and apoptoticCD8TCellPhagocytizeByMDMII = 0 and CD8TCellUndergoApoptosisByNature = 1]
      if (amountOfApoptoticCD8TCellPhagocytizeByMDMIPerLoopUpperLiver >= 1)
      [
        ask n-of (amountOfApoptoticCD8TCellPhagocytizeByMDMIPerLoopUpperLiver) CD8TCells with[ycor > 0 and apoptoticCD8TCellPhagocytizeByMDMI = 0 and apoptoticCD8TCellPhagocytizeByMDMII = 0 and CD8TCellUndergoApoptosisByNature = 1]
        [
          move-to one-of MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
          set apoptoticCD8TCellPhagocytizeByMDMI 1
          set counter114 counter114 + 1
        ]
        set amountOfApoptoticCD8TCellPhagocytizeByMDMIPerLoopUpperLiver amountOfApoptoticCD8TCellPhagocytizeByMDMIPerLoopUpperLiver - counter114
        set counter114 0
      ]
    ]

    ;;Apoptotic CD8 T cells are phagocytized by MDMIs (lower liver sinusoid)
    if any? MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfApoptoticCD8TCellPhagocytizeByMDMIPerLoopLowerLiver amountOfApoptoticCD8TCellPhagocytizeByMDMIPerLoopLowerLiver + 0.5 * count CD8TCells with[ycor < 0 and apoptoticCD8TCellPhagocytizeByMDMI = 0 and apoptoticCD8TCellPhagocytizeByMDMII = 0 and CD8TCellUndergoApoptosisByNature = 1]
      if (amountOfApoptoticCD8TCellPhagocytizeByMDMIPerLoopLowerLiver >= 1)
      [
        ask n-of (amountOfApoptoticCD8TCellPhagocytizeByMDMIPerLoopLowerLiver) CD8TCells with[ycor < 0 and apoptoticCD8TCellPhagocytizeByMDMI = 0 and apoptoticCD8TCellPhagocytizeByMDMII = 0 and CD8TCellUndergoApoptosisByNature = 1]
        [
          move-to one-of MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
          set apoptoticCD8TCellPhagocytizeByMDMI 1
          set counter115 counter115 + 1
        ]
        set amountOfApoptoticCD8TCellPhagocytizeByMDMIPerLoopLowerLiver amountOfApoptoticCD8TCellPhagocytizeByMDMIPerLoopLowerLiver - counter115
        set counter115 0
      ]
    ]

    ;;Apoptotic CD8 T cells are phagocytized by MDMIIs (upper liver sinusoid)
    if any? MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
    [
      set amountOfApoptoticCD8TCellPhagocytizeByMDMIIPerLoopUpperLiver amountOfApoptoticCD8TCellPhagocytizeByMDMIIPerLoopUpperLiver + 0.5 * count CD8TCells with[ycor > 0 and apoptoticCD8TCellPhagocytizeByMDMI = 0 and apoptoticCD8TCellPhagocytizeByMDMII = 0 and CD8TCellUndergoApoptosisByNature = 1]
      if (amountOfApoptoticCD8TCellPhagocytizeByMDMIIPerLoopUpperLiver >= 1)
      [
        ask n-of (amountOfApoptoticCD8TCellPhagocytizeByMDMIIPerLoopUpperLiver) CD8TCells with[ycor > 0 and apoptoticCD8TCellPhagocytizeByMDMI = 0 and apoptoticCD8TCellPhagocytizeByMDMII = 0 and CD8TCellUndergoApoptosisByNature = 1]
        [
          move-to one-of MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
          set apoptoticCD8TCellPhagocytizeByMDMII 1
          set counter116 counter116 + 1
        ]
        set amountOfApoptoticCD8TCellPhagocytizeByMDMIIPerLoopUpperLiver amountOfApoptoticCD8TCellPhagocytizeByMDMIIPerLoopUpperLiver - counter116
        set counter116 0
      ]
    ]

    ;;Apoptotic CD8 T cells are phagocytized by MDMIIs (lower liver sinusoid)
    if any? MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
    [
      set amountOfApoptoticCD8TCellPhagocytizeByMDMIIPerLoopLowerLiver amountOfApoptoticCD8TCellPhagocytizeByMDMIIPerLoopLowerLiver + 0.5 * count CD8TCells with[ycor < 0 and apoptoticCD8TCellPhagocytizeByMDMI = 0 and apoptoticCD8TCellPhagocytizeByMDMII = 0 and CD8TCellUndergoApoptosisByNature = 1]
      if (amountOfApoptoticCD8TCellPhagocytizeByMDMIIPerLoopLowerLiver >= 1)
      [
        ask n-of (amountOfApoptoticCD8TCellPhagocytizeByMDMIIPerLoopLowerLiver) CD8TCells with[ycor < 0 and apoptoticCD8TCellPhagocytizeByMDMI = 0 and apoptoticCD8TCellPhagocytizeByMDMII = 0 and CD8TCellUndergoApoptosisByNature = 1]
        [
          move-to one-of MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
          set apoptoticCD8TCellPhagocytizeByMDMII 1
          set counter117 counter117 + 1
        ]
        set amountOfApoptoticCD8TCellPhagocytizeByMDMIIPerLoopLowerLiver amountOfApoptoticCD8TCellPhagocytizeByMDMIIPerLoopLowerLiver - counter117
        set counter117 0
      ]
    ]

    ask MDMIs with[any? CD8TCells-here with[apoptoticCD8TCellPhagocytizeByMDMI = 1] and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set MDMIInteractWithApoptoticCD8TCell 1
    ]

    ask MDMIIs with[any? CD8TCells-here with[apoptoticCD8TCellPhagocytizeByMDMII = 1] and MDMIIBecomeApoptotic = 0]
    [
      set MDMIIInteractWithApoptoticCD8TCell 1
    ]

    ask CD8TCells with[apoptoticCD8TCellPhagocytizeByMDMI = 1 or apoptoticCD8TCellPhagocytizeByMDMII = 1]
    [
      set apoptoticCD8TCellDieInduceByMDMIOrMDMIIAt? apoptoticCD8TCellDieInduceByMDMIOrMDMIIAt? + 1
    ]

    ask CD8TCells with[(apoptoticCD8TCellPhagocytizeByMDMI = 1 or apoptoticCD8TCellPhagocytizeByMDMII = 1) and apoptoticCD8TCellDieInduceByMDMIOrMDMIIAt? >= 2]
    [
      die
    ]

    ;;Assign a state variable to identify MDMIs and MDMIIs that NOT Interact With apoptotic CD8 T cells
    ask MDMIs with[MDMIInteractWithApoptoticCD8TCell = 1 and not any? CD8TCells-here with[apoptoticCD8TCellPhagocytizeByMDMI = 1]]
    [
      set MDMIInteractWithApoptoticCD8TCell 0
      set MDMIProduceIL10 0
    ]

    ask MDMIIs with[MDMIIInteractWithApoptoticCD8TCell = 1 and not any? CD8TCells-here with[apoptoticCD8TCellPhagocytizeByMDMII = 1]]
    [
      set MDMIIInteractWithApoptoticCD8TCell 0
    ]
  ]
end

to CD8TCellUndergoAgingByNatureSubRoutine
  if (counter != 0 and any? MDMIs with[MDMIPhagocytizeSalmonella = 1] or (any? TNF-as and any? Histamines))
  [
    set amountOfCD8TCellUndergoAgingByNaturePerLoop amountOfCD8TCellUndergoAgingByNaturePerLoop + 0.0413 * count CD8TCells with[CD8TCellInPortalTriad = 0 and CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD8TCellUndergoApoptosisByNature = 0]
    if (amountOfCD8TCellUndergoAgingByNaturePerLoop >= 1)
    [
      ask n-of (amountOfCD8TCellUndergoAgingByNaturePerLoop) CD8TCells with[CD8TCellInPortalTriad = 0 and CD8TCellInteractWithKupfferCellWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithNeutrophilWhoPhagocytizeSalmonella = 0 and CD8TCellInteractWithMDMIWhoPhagocytizeSalmonella = 0 and CD8TCellUndergoApoptosisByNature = 0]
      [
        set CD8TCellUndergoApoptosisByNature 1
        set counter118 counter118 + 1
      ]

      set amountOfCD8TCellUndergoAgingByNaturePerLoop amountOfCD8TCellUndergoAgingByNaturePerLoop - counter118
      set counter118 0
    ]
  ]
end
;;----------------------------------------------------------------------------------------------------------------------------------------

;;----------------------------Behaviors of B cells in liver inflammation------------------------------------------------------------------
to BCellMigrateFromPortalTriadToLiverSinusoidSubRoutine
  if (counter != 0 and any? MDMIs with[MDMIPhagocytizeSalmonella = 1])
  [
    set AdjustedBCellCarryCapacityInLiverSinusoid (BCellCarryCapacityInLiverSinusoid - 27166425)
    let influxRate influxRateOfBCellToLiverSinusoidPerHourLowerLevel + random-float (influxRateOfBCellToLiverSinusoidPerHourUpperLevel - influxRateOfBCellToLiverSinusoidPerHourLowerLevel)
    set proliferatedBCellPerLoop proliferatedBCellPerLoop + influxRate * count BCells  * (1 -  count BCells / AdjustedBCellCarryCapacityInLiverSinusoid)
    ask one-of BCells with[BCellInPortalTriad = 1]
    [
      if (proliferatedBCellPerLoop >= 1)
      [
        hatch proliferatedBCellPerLoop
      ]

      set proliferatedBCellPerLoop proliferatedBCellPerLoop - int(proliferatedBCellPerLoop)
    ]

    ask n-of (count BCells with[BCellInPortalTriad = 1] - 1) BCells with[BCellInPortalTriad = 1]
    [
      move-to one-of patches with[pycor = 0 and portalTriadArea = 0]
      set BCellInPortalTriad 0
    ]
  ]
end

to BCellProduceAntibodySubRoutine
  if (counter != 0 and any? MDMIs with[MDMIPhagocytizeSalmonella = 1])
  [
    ask BCells with[BCellInPortalTriad = 0 and BCellInteractWithCD4TCell = 0 and BCellBindToCD4TCell = 0 and BCellUndergoApoptosisByNature = 0]
    [
      if any? CD4TCells with[CD4TCellInPortalTriad = 0 and CD4TCellUndergoApoptosisByNature = 0]
      [
        move-to one-of CD4TCells with[CD4TCellInPortalTriad = 0 and CD4TCellUndergoApoptosisByNature = 0]
        set BCellInteractWithCD4TCell 1
      ]
    ]

    let AntibodyMaxReleaseRate maximumReleaseRateOfAntibodyByBCellLowerLevelPerHour + random (maximumReleaseRateOfAntibodyByBCellUpperLevelPerHour - maximumReleaseRateOfAntibodyByBCellLowerLevelPerHour)
    let AntibodyReleaseRate (AntibodyMaxReleaseRate * count BCells with[BCellInteractWithCD4TCell = 1])/(100000 + count BCells with[BCellInteractWithCD4TCell = 1])
    set AntibodyReleaseAmountByBCellPerLoop AntibodyReleaseAmountByBCellPerLoop + AntibodyReleaseRate * count BCells with[BCellInteractWithCD4TCell = 1] / amountOfAntibodyBeingRepresentedByOneAgent
    if (AntibodyReleaseAmountByBCellPerLoop >= 1)
    [
      repeat AntibodyReleaseAmountByBCellPerLoop
      [
        if any? BCells with[BCellInteractWithCD4TCell = 1 and BCellProduceAntibody = 0]
        [
          ask one-of BCells with[BCellInteractWithCD4TCell = 1 and BCellProduceAntibody = 0]
          [
            hatch 1
            [
              set breed Antibodys
              set shape "Antibody"
              set color green
              set size 0.6 * patch-size
            ]
            set BCellProduceAntibody 1
          ]
        ]
      ]
      set AntibodyReleaseAmountByBCellPerLoop 0
    ]
  ]
end

to BCellUndergoAgingByNatureSubRoutine
  if (counter != 0 and any? MDMIs with[MDMIPhagocytizeSalmonella = 1])
  [
    set amountOfBCellUndergoAgingByNaturePerLoop amountOfBCellUndergoAgingByNaturePerLoop  + 3.5E-4 * count BCells with[BCellInPortalTriad = 0 and BCellUndergoApoptosisByNature = 0]
    if (amountOfBCellUndergoAgingByNaturePerLoop >= 1)
    [
      ask n-of (amountOfBCellUndergoAgingByNaturePerLoop) BCells with[BCellInPortalTriad = 0 and BCellUndergoApoptosisByNature = 0]
      [
        die
        set counter130 counter130 + 1
      ]
      set amountOfBCellUndergoAgingByNaturePerLoop amountOfBCellUndergoAgingByNaturePerLoop - counter130
      set counter130 0
    ]

    ;;Assign a state variable to identify CD4 T cells that NOT interact with B cells
    ask CD4TCells with[CD4TCellInteractWithBCell = 1 and not any? BCells-here with[BCellInteractWithCD4TCell = 1]]
    [
      set CD4TCellInteractWithBCell 0
      set CD4TCellBindToBCell 0
    ]
  ]
end
;;----------------------------------------------------------------------------------------------------------------------------------------

;;-------------------------------------Behaviors of Antibody in liver inflammation--------------------------------------------------------
to antibodyInteractWithSalmonellaSubRoutine
  if (counter != 0)
  [
    ;;Antibody interact with Salmonella (upper liver sinusoid)
    ask Antibodys with[ycor > 0 and antibodyInteractWithSalmonella = 0 and antibodyBindToSalmonella = 0]
    [
      if any? Salmonellas with[ycor > 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
      [
        move-to one-of Salmonellas with[ycor > 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
        set antibodyInteractWithSalmonella 1
      ]
    ]

    ;;Antibody interact with Salmonella (lower liver sinusoid)
    ask Antibodys with[ycor < 0 and antibodyInteractWithSalmonella = 0 and antibodyBindToSalmonella = 0]
    [
      if any? Salmonellas with[ycor < 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
      [
        move-to one-of Salmonellas with[ycor < 0 and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
        set antibodyInteractWithSalmonella 1
      ]
    ]

    ask Salmonellas with[any? Antibodys-here with[antibodyInteractWithSalmonella = 1] and salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
    [
      set salmonellaInteractWithAntibody 1
      set salmonellaNewlyReleasedFromKupfferCell 0
      set salmonellaNewlyReleasedFromSECs 0
      set salmonellaNewlyReleasedFromHepatocyte 0
      set salmonellaNewlyReleasedFromMDMI 0
    ]
  ]
end

to antibodyBindToSalmonellaFormComplexSubRoutine
  if (counter != 0)
  [
    repeat count Antibodys with[antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 0]
    [
      if any? Antibodys with[antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 0]
      [
        ask one-of Antibodys with[antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 0]
        [
          create-AntibodySalmonella-links-with Salmonellas-here with[salmonellaInteractWithAntibody = 1 and salmonellaBindToAntibody = 0]
          set antibodyBindToSalmonella 1
        ]

        ask Salmonellas with[salmonellaInteractWithAntibody = 1 and salmonellaBindToAntibody = 0 and any? Antibodys-here with[antibodyBindToSalmonella = 1]]
        [
          set salmonellaBindToAntibody 1
        ]
      ]
    ]
  ]
end

to antibodySalmonellaComplexPhagocytizeByKupfferCellSubRoutine
  if (counter != 0)
  [
    ;;Antibody-Salmonella complex move to kupffer cells (upper liver sinusoid)
    if any? kupfferCells with[ycor > 0 and kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfAntibodySalmonellaComplexMoveToKupfferCellPerLoopUpperLiver amountOfAntibodySalmonellaComplexMoveToKupfferCellPerLoopUpperLiver + percentageOfAntibodySalmonellaComplexMoveToKupfferCellPerHour * count Antibodys with[ycor > 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
      if (amountOfAntibodySalmonellaComplexMoveToKupfferCellPerLoopUpperLiver >= 1)
      [
        repeat (amountOfAntibodySalmonellaComplexMoveToKupfferCellPerLoopUpperLiver)
        [
          if any? Antibodys with[ycor > 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
          [
            ask one-of Antibodys with[ycor > 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
            [
              if any? kupfferCells with[ycor > 0 and kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              [
                set movedAntibody 1
                move-to one-of KupfferCells with[ycor > 0 and kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
                set antibodySalmonellaComplexPhagocytizeByKupfferCell 1
                set counter131 counter131 + 1
              ]
            ]
          ]

          ask KupfferCells with[ycor > 0 and any? Antibodys-here with[movedAntibody = 1]]
          [
            set targetKupfferCell 1
            set kupfferCellInteractWithAntibodySalmonellaComplex 1
          ]

          ask Antibodys with[ycor > 0 and movedAntibody = 1]
          [
            ask link-neighbors
            [
              move-to one-of KupfferCells with[ycor > 0 and targetKupfferCell = 1]
              set antibodyOpsonizedSalmonellaPhagocytizeByKupfferCell 1
            ]
            set movedAntibody 0
          ]

          ask KupfferCells with[ycor > 0 and targetKupfferCell = 1 and not any? Antibodys-here with[movedAntibody = 1]]
          [
            set targetKupfferCell 0
          ]
        ]
        set amountOfAntibodySalmonellaComplexMoveToKupfferCellPerLoopUpperLiver amountOfAntibodySalmonellaComplexMoveToKupfferCellPerLoopUpperLiver - counter131
        set counter131 0
      ]
    ]

    ;;Antibody-Salmonella complex move to kupffer cells (lower liver sinusoid)
    if any? kupfferCells with[ycor < 0 and kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfAntibodySalmonellaComplexMoveToKupfferCellPerLoopLowerLiver amountOfAntibodySalmonellaComplexMoveToKupfferCellPerLoopLowerLiver + percentageOfAntibodySalmonellaComplexMoveToKupfferCellPerHour * count Antibodys with[ycor < 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
      if (amountOfAntibodySalmonellaComplexMoveToKupfferCellPerLoopLowerLiver >= 1)
      [
        repeat (amountOfAntibodySalmonellaComplexMoveToKupfferCellPerLoopLowerLiver)
        [
          if any? Antibodys with[ycor < 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
          [
            ask one-of Antibodys with[ycor < 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
            [
              if any? kupfferCells with[ycor < 0 and kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              [
                set movedAntibody 1
                move-to one-of KupfferCells with[ycor < 0 and kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
                set antibodySalmonellaComplexPhagocytizeByKupfferCell 1
                set counter132 counter132 + 1
              ]
            ]
          ]

          ask KupfferCells with[ycor < 0 and any? Antibodys-here with[movedAntibody = 1]]
          [
            set targetKupfferCell 1
            set kupfferCellInteractWithAntibodySalmonellaComplex 1
          ]

          ask Antibodys with[ycor < 0 and movedAntibody = 1]
          [
            ask link-neighbors
            [
              move-to one-of KupfferCells with[ycor < 0 and targetKupfferCell = 1]
              set antibodyOpsonizedSalmonellaPhagocytizeByKupfferCell 1
            ]
            set movedAntibody 0
          ]

          ask KupfferCells with[ycor < 0 and targetKupfferCell = 1 and not any? Antibodys-here with[movedAntibody = 1]]
          [
            set targetKupfferCell 0
          ]
        ]
        set amountOfAntibodySalmonellaComplexMoveToKupfferCellPerLoopLowerLiver amountOfAntibodySalmonellaComplexMoveToKupfferCellPerLoopLowerLiver - counter132
        set counter132 0
      ]
    ]

    ;;Antibody-Salmonella complex are phagocytized by kupffer cells
    ask Antibodys with[antibodySalmonellaComplexPhagocytizeByKupfferCell = 1]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ;;Assign a state variable to identify kupffer cells that NOT interact with antibody-salmonella complex
    ask KupfferCells with[kupfferCellInteractWithAntibodySalmonellaComplex = 1 and not any? Antibodys-here with[antibodySalmonellaComplexPhagocytizeByKupfferCell = 1]]
    [
      set kupfferCellInteractWithAntibodySalmonellaComplex 0
    ]
  ]
end

to antibodySalmonellaComplexPhagocytizeByMastCellSubRoutine
  if (counter != 0)
  [
    ;;Antibody-Salmonella complex move to mast cells (upper liver sinusoid)
    if any? MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
    [
      set amountOfAntibodySalmonellaComplexMoveToMastCellPerLoopUpperLiver amountOfAntibodySalmonellaComplexMoveToMastCellPerLoopUpperLiver + percentageOfAntibodySalmonellaComplexMoveToMastCellPerHour * count Antibodys with[ycor > 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
      if (amountOfAntibodySalmonellaComplexMoveToMastCellPerLoopUpperLiver >= 1)
      [
        repeat (amountOfAntibodySalmonellaComplexMoveToMastCellPerLoopUpperLiver)
        [
          if any? Antibodys with[ycor > 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
          [
            ask one-of Antibodys with[ycor > 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
            [
              if any? MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
              [
                set movedAntibody 1
                move-to one-of MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0]
                set antibodySalmonellaComplexPhagocytizeByMastCell 1
                set counter133 counter133 + 1
              ]
            ]
          ]

          ask MastCells with[ycor > 0 and any? Antibodys-here with[movedAntibody = 1] and not any? other MastCells-here with[targetMastCell = 1]]
          [
            set targetMastCell 1
            set mastCellInteractWithAntibodySalmonellaComplex 1
          ]

          ask Antibodys with[ycor > 0 and movedAntibody = 1]
          [
            ask link-neighbors
            [
              move-to one-of MastCells with[ycor > 0 and targetMastCell = 1]
              set antibodyOpsonizedSalmonellaPhagocytizeByMastCell 1
            ]
            set movedAntibody 0
          ]

          ask MastCells with[ycor > 0 and targetMastCell = 1 and not any? Antibodys-here with[movedAntibody = 1]]
          [
            set targetMastCell 0
          ]
        ]
        set amountOfAntibodySalmonellaComplexMoveToMastCellPerLoopUpperLiver amountOfAntibodySalmonellaComplexMoveToMastCellPerLoopUpperLiver - counter133
        set counter133 0
      ]
    ]

    ;;Antibody-Salmonella complex move to mast cells (lower liver sinusoid)
    if any? MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
    [
      set amountOfAntibodySalmonellaComplexMoveToMastCellPerLoopLowerLiver amountOfAntibodySalmonellaComplexMoveToMastCellPerLoopLowerLiver + percentageOfAntibodySalmonellaComplexMoveToMastCellPerHour * count Antibodys with[ycor < 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
      if (amountOfAntibodySalmonellaComplexMoveToMastCellPerLoopLowerLiver >= 1)
      [
        repeat (amountOfAntibodySalmonellaComplexMoveToMastCellPerLoopLowerLiver)
        [
          if any? Antibodys with[ycor < 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
          [
            ask one-of Antibodys with[ycor < 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
            [
              if any? MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
              [
                set movedAntibody 1
                move-to one-of MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0]
                set antibodySalmonellaComplexPhagocytizeByMastCell 1
                set counter134 counter134 + 1
              ]
            ]
          ]

          ask MastCells with[ycor < 0 and any? Antibodys-here with[movedAntibody = 1] and not any? other MastCells-here with[targetMastCell = 1]]
          [
            set targetMastCell 1
            set mastCellInteractWithAntibodySalmonellaComplex 1
          ]

          ask Antibodys with[ycor < 0 and movedAntibody = 1]
          [
            ask link-neighbors
            [
              move-to one-of MastCells with[ycor < 0 and targetMastCell = 1]
              set antibodyOpsonizedSalmonellaPhagocytizeByMastCell 1
            ]
            set movedAntibody 0
          ]

          ask MastCells with[ycor < 0 and targetMastCell = 1 and not any? Antibodys-here with[movedAntibody = 1]]
          [
            set targetMastCell 0
          ]
        ]
        set amountOfAntibodySalmonellaComplexMoveToMastCellPerLoopLowerLiver amountOfAntibodySalmonellaComplexMoveToMastCellPerLoopLowerLiver - counter134
        set counter134 0
      ]
    ]

    ;;Antibody-Salmonella complex are phagocytized by mast cells
    ask Antibodys with[antibodySalmonellaComplexPhagocytizeByMastCell = 1]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ;;Assign a state variable to mast cells that NOT interact with antibody-salmonella complex
    ask mastCells with[mastCellInteractWithAntibodySalmonellaComplex = 1 and not any? Antibodys-here with[antibodySalmonellaComplexPhagocytizeByMastCell = 1]]
    [
      set mastCellInteractWithAntibodySalmonellaComplex 0
      set mastCellProduceTNFAlphaByAntibodySalmonellaComplex 0
      set mastCellProduceHistamine 0
    ]
  ]
end

to AntibodySalmonellaComplexPhagocytizeByNeutrophilSubRoutine
  if (counter != 0)
  [
    ;;Antibody-Salmonella complex move to neutrophils (upper liver sinusoid)
    if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfAntibodySalmonellaComplexMoveToNeutrophilPerLoopUpperLiver amountOfAntibodySalmonellaComplexMoveToNeutrophilPerLoopUpperLiver + percentageOfAntibodySalmonellaComplexMoveToNeutrophilPerHour * count Antibodys with[ycor > 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
      if (amountOfAntibodySalmonellaComplexMoveToNeutrophilPerLoopUpperLiver >= 1)
      [
        repeat (amountOfAntibodySalmonellaComplexMoveToNeutrophilPerLoopUpperLiver)
        [
          if any? Antibodys with[ycor > 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
          [
            ask one-of Antibodys with[ycor > 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
            [
              if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              [
                set movedAntibody 1
                move-to one-of ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
                set antibodySalmonellaComplexPhagocytizeByNeutrophil 1
                set counter135 counter135 + 1
              ]
            ]
          ]

          ask ActivatedNeutrophils with[ycor > 0 and any? Antibodys-here with[movedAntibody = 1]]
          [
            set targetNeutrophil 1
          ]

          ask Antibodys with[ycor > 0 and movedAntibody = 1]
          [
            ask link-neighbors
            [
              move-to one-of ActivatedNeutrophils with[ycor > 0 and targetNeutrophil = 1]
              set antibodyOpsonizedSalmonellaPhagocytizeByNeutrophil 1
            ]
            set movedAntibody 0
          ]

          ask ActivatedNeutrophils with[ycor > 0 and targetNeutrophil = 1 and not any? Antibodys-here with[movedAntibody = 1]]
          [
            set targetNeutrophil 0
          ]
        ]
        set amountOfAntibodySalmonellaComplexMoveToNeutrophilPerLoopUpperLiver amountOfAntibodySalmonellaComplexMoveToNeutrophilPerLoopUpperLiver - counter135
        set counter135 0
      ]
    ]

    ;;Antibody-Salmonella complex move to neutrophils (lower liver sinusoid)
    if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfAntibodySalmonellaComplexMoveToNeutrophilPerLoopLowerLiver amountOfAntibodySalmonellaComplexMoveToNeutrophilPerLoopLowerLiver + percentageOfAntibodySalmonellaComplexMoveToNeutrophilPerHour * count Antibodys with[ycor < 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
      if (amountOfAntibodySalmonellaComplexMoveToNeutrophilPerLoopLowerLiver >= 1)
      [
        repeat (amountOfAntibodySalmonellaComplexMoveToNeutrophilPerLoopLowerLiver)
        [
          if any? Antibodys with[ycor < 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
          [
            ask one-of Antibodys with[ycor < 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
            [
              if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              [
                set movedAntibody 1
                move-to one-of ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
                set antibodySalmonellaComplexPhagocytizeByNeutrophil 1
                set counter136 counter136 + 1
              ]
            ]
          ]

          ask ActivatedNeutrophils with[ycor < 0 and any? Antibodys-here with[movedAntibody = 1]]
          [
            set targetNeutrophil 1
          ]

          ask Antibodys with[ycor < 0 and movedAntibody = 1]
          [
            ask link-neighbors
            [
              move-to one-of ActivatedNeutrophils with[ycor < 0 and targetNeutrophil = 1]
              set antibodyOpsonizedSalmonellaPhagocytizeByNeutrophil 1
            ]
            set movedAntibody 0
          ]

          ask ActivatedNeutrophils with[ycor < 0 and targetNeutrophil = 1 and not any? Antibodys-here with[movedAntibody = 1]]
          [
            set targetNeutrophil 0
          ]
        ]
        set amountOfAntibodySalmonellaComplexMoveToNeutrophilPerLoopLowerLiver amountOfAntibodySalmonellaComplexMoveToNeutrophilPerLoopLowerLiver - counter136
        set counter136 0
      ]
    ]

    ;;Antibody-Salmonella complex are phagocytized by activated neutrophils
    ask Antibodys with[antibodySalmonellaComplexPhagocytizeByNeutrophil = 1]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]
  ]
end

to AntibodySalmonellaComplexPhagocytizeByMDMISubRoutine
  if (counter != 0)
  [
    ;;Antibody-Salmonella complex move to MDMIs (upper liver sinusoid)
    if any? MDMIs with[ycor > 0 and MDMIkillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfAntibodySalmonellaComplexMoveToMDMIPerLoopUpperLiver amountOfAntibodySalmonellaComplexMoveToMDMIPerLoopUpperLiver + percentageOfAntibodySalmonellaComplexMoveToMDMIPerHour * count Antibodys with[ycor > 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
      if (amountOfAntibodySalmonellaComplexMoveToMDMIPerLoopUpperLiver >= 1)
      [
        repeat (amountOfAntibodySalmonellaComplexMoveToMDMIPerLoopUpperLiver)
        [
          if any? Antibodys with[ycor > 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
          [
            ask one-of Antibodys with[ycor > 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
            [
              if any? MDMIs with[ycor > 0 and MDMIkillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              [
                set movedAntibody 1
                move-to one-of MDMIs with[ycor > 0 and MDMIkillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
                set antibodySalmonellaComplexPhagocytizeByMDMI 1
                set counter137 counter137 + 1
              ]
            ]
          ]

          ask MDMIs with[ycor > 0 and any? Antibodys-here with[movedAntibody = 1]]
          [
            set targetMDMI 1
            set MDMIInteractWithAntibodySalmonellaComplex 1
          ]

          ask Antibodys with[ycor > 0 and movedAntibody = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIs with[ycor > 0 and targetMDMI = 1]
              set antibodyOpsonizedSalmonellaPhagocytizeByMDMI 1
            ]
            set movedAntibody 0
          ]

          ask MDMIs with[ycor > 0 and targetMDMI = 1 and not any? Antibodys-here with[movedAntibody = 1]]
          [
            set targetMDMI 0
          ]
        ]
        set amountOfAntibodySalmonellaComplexMoveToMDMIPerLoopUpperLiver amountOfAntibodySalmonellaComplexMoveToMDMIPerLoopUpperLiver - counter137
        set counter137 0
      ]
    ]

    ;;Antibody-Salmonella complex move to MDMIs (lower liver sinusoid)
    if any? MDMIs with[ycor < 0 and MDMIkillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
    [
      set amountOfAntibodySalmonellaComplexMoveToMDMIPerLoopLowerLiver amountOfAntibodySalmonellaComplexMoveToMDMIPerLoopLowerLiver + percentageOfAntibodySalmonellaComplexMoveToMDMIPerHour * count Antibodys with[ycor < 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
      if (amountOfAntibodySalmonellaComplexMoveToMDMIPerLoopLowerLiver >= 1)
      [
        repeat (amountOfAntibodySalmonellaComplexMoveToMDMIPerLoopLowerLiver)
        [
          if any? Antibodys with[ycor < 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
          [
            ask one-of Antibodys with[ycor < 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
            [
              if any? MDMIs with[ycor < 0 and MDMIkillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
              [
                set movedAntibody 1
                move-to one-of MDMIs with[ycor < 0 and MDMIkillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0]
                set antibodySalmonellaComplexPhagocytizeByMDMI 1
                set counter138 counter138 + 1
              ]
            ]
          ]

          ask MDMIs with[ycor < 0 and any? Antibodys-here with[movedAntibody = 1]]
          [
            set targetMDMI 1
            set MDMIInteractWithAntibodySalmonellaComplex 1
          ]

          ask Antibodys with[ycor < 0 and movedAntibody = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIs with[ycor < 0 and targetMDMI = 1]
              set antibodyOpsonizedSalmonellaPhagocytizeByMDMI 1
            ]
            set movedAntibody 0
          ]

          ask MDMIs with[ycor < 0 and targetMDMI = 1 and not any? Antibodys-here with[movedAntibody = 1]]
          [
            set targetMDMI 0
          ]
        ]
        set amountOfAntibodySalmonellaComplexMoveToMDMIPerLoopLowerLiver amountOfAntibodySalmonellaComplexMoveToMDMIPerLoopLowerLiver - counter138
        set counter138 0
      ]
    ]

    ;;Antibody-Salmonella complex are phagocytized by MDMIs
    ask Antibodys with[antibodySalmonellaComplexPhagocytizeByMDMI = 1]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]

    ;;Assign a state variable to identify MDMIs that NOT interact with antibody-salmonella complex
    ask MDMIs with[MDMIInteractWithAntibodySalmonellaComplex = 1 and not any? Antibodys-here with[antibodySalmonellaComplexPhagocytizeByMDMI = 1]]
    [
      set MDMIInteractWithAntibodySalmonellaComplex 0
    ]
  ]
end

to AntibodySalmonellaComplexPhagocytizeByMDMIISubRoutine
  if (counter != 0)
  [
    ;;Antibody-Salmonella complex move to MDMIIs (upper liver sinusoid)
    if any? MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
    [
      set amountOfAntibodySalmonellaComplexMoveToMDMIIPerLoopUpperLiver amountOfAntibodySalmonellaComplexMoveToMDMIIPerLoopUpperLiver + percentageOfAntibodySalmonellaComplexMoveToMDMIIPerHour * count Antibodys with[ycor > 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
      if (amountOfAntibodySalmonellaComplexMoveToMDMIIPerLoopUpperLiver >= 1)
      [
        repeat (amountOfAntibodySalmonellaComplexMoveToMDMIIPerLoopUpperLiver)
        [
          if any? Antibodys with[ycor > 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
          [
            ask one-of Antibodys with[ycor > 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
            [
              if any? MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
              [
                set movedAntibody 1
                move-to one-of MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0]
                set antibodySalmonellaComplexPhagocytizeByMDMII 1
                set counter139 counter139 + 1
              ]
            ]
          ]

          ask MDMIIs with[ycor > 0 and any? Antibodys-here with[movedAntibody = 1]]
          [
            set targetMDMII 1
          ]

          ask Antibodys with[ycor > 0 and movedAntibody = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIIs with[ycor > 0 and targetMDMII = 1]
              set antibodyOpsonizedSalmonellaPhagocytizeByMDMII 1
            ]
            set movedAntibody 0
          ]

          ask MDMIIs with[ycor > 0 and targetMDMII = 1 and not any? Antibodys-here with[movedAntibody = 1]]
          [
            set targetMDMII 0
          ]
        ]
        set amountOfAntibodySalmonellaComplexMoveToMDMIIPerLoopUpperLiver amountOfAntibodySalmonellaComplexMoveToMDMIIPerLoopUpperLiver - counter139
        set counter139 0
      ]
    ]

    ;;Antibody-Salmonella complex move to MDMIIs (lower liver sinusoid)
    if any? MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
    [
      set amountOfAntibodySalmonellaComplexMoveToMDMIIPerLoopLowerLiver amountOfAntibodySalmonellaComplexMoveToMDMIIPerLoopLowerLiver + percentageOfAntibodySalmonellaComplexMoveToMDMIIPerHour * count Antibodys with[ycor < 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
      if (amountOfAntibodySalmonellaComplexMoveToMDMIIPerLoopLowerLiver >= 1)
      [
        repeat (amountOfAntibodySalmonellaComplexMoveToMDMIIPerLoopLowerLiver)
        [
          if any? Antibodys with[ycor < 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
          [
            ask one-of Antibodys with[ycor < 0 and antibodyInteractWithSalmonella = 1 and antibodyBindToSalmonella = 1 and antibodySalmonellaComplexPhagocytizeByMastCell = 0 and antibodySalmonellaComplexPhagocytizeByKupfferCell = 0 and antibodySalmonellaComplexPhagocytizeByNeutrophil = 0 and antibodySalmonellaComplexPhagocytizeByMDMI = 0 and antibodySalmonellaComplexPhagocytizeByMDMII = 0]
            [
              if any? MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
              [
                set movedAntibody 1
                move-to one-of MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0]
                set antibodySalmonellaComplexPhagocytizeByMDMII 1
                set counter140 counter140 + 1
              ]
            ]
          ]

          ask MDMIIs with[ycor < 0 and any? Antibodys-here with[movedAntibody = 1]]
          [
            set targetMDMII 1
          ]

          ask Antibodys with[ycor < 0 and movedAntibody = 1]
          [
            ask link-neighbors
            [
              move-to one-of MDMIIs with[ycor < 0 and targetMDMII = 1]
              set antibodyOpsonizedSalmonellaPhagocytizeByMDMII 1
            ]
            set movedAntibody 0
          ]

          ask MDMIIs with[ycor < 0 and targetMDMII = 1 and not any? Antibodys-here with[movedAntibody = 1]]
          [
            set targetMDMII 0
          ]
        ]
        set amountOfAntibodySalmonellaComplexMoveToMDMIIPerLoopLowerLiver amountOfAntibodySalmonellaComplexMoveToMDMIIPerLoopLowerLiver - counter140
        set counter140 0
      ]
    ]

    ;;Antibody-Salmonella complex are phagocytized by MDMIIs
    ask Antibodys with[antibodySalmonellaComplexPhagocytizeByMDMII = 1]
    [
      ask link-neighbors
      [
        die
      ]
        die
    ]
  ]
end

to antibodyUndergoCatabolismByNatureSubRoutine
  if (counter != 0)
  [
    let decayRate 0.0027 + random-float (0.0417 - 0.0027)
    ifelse (decayRate * count Antibodys) >= 1
    [
      ask n-of (decayRate * count Antibodys) Antibodys
      [
        die
      ]
    ]

    [
      set AntibodyReleaseAmountByBCellPerLoop AntibodyReleaseAmountByBCellPerLoop  - decayRate * count Antibodys
    ]

    if (AntibodyReleaseAmountByBCellPerLoop < 0)
    [
      if any? Antibodys
      [
        ask one-of Antibodys
        [
          die
        ]
      ]
      set AntibodyReleaseAmountByBCellPerLoop AntibodyReleaseAmountByBCellPerLoop + 1
    ]
  ]
end
;;--------------------------------------------------------------------------------------------------------------------------------------

;;--------------------------Behaviors of TNF-a in liver inflammation--------------------------------------------------------------------
to TNFAlphaUndergoCatabolismByNatureSubRoutine
  if (counter != 0)
  [
    set TNFAlphaIncreaseAmountPerLoop (TNFAlphaReleaseAmountByKupfferCellPerLoop + TNFAlphaReleaseAmountByApoptoticHepatocyte + TNFAlphaReleaseAmountByActivatedNeutrophilPerLoop + TNFAlphaReleaseAmountByMDMIPerLoop + TNFAlphaReleaseAmountByMastCellInteractWithAntibodySalmonellaComplexPerLoop + TNFAlphaReleaseAmountByMastCellInteractWithSalmonellaPerLoop + TNFAlphaReleaseAmountByCD4TCellPerLoop)
    ifelse (0.247 * count TNF-as) >= 1
    [
      ask n-of (0.247 * count TNF-as) TNF-as
      [
        die
      ]
    ]

    [
      set TNFAlphaIncreaseAmountPerLoop TNFAlphaIncreaseAmountPerLoop - 0.247 * count TNF-as
    ]

    if (TNFAlphaIncreaseAmountPerLoop < 0 or not any? Salmonellas)
    [
      if any? TNF-as
      [
        ask one-of TNF-as
        [
          die
        ]
      ]

      set TNFAlphaIncreaseAmountPerLoop TNFAlphaIncreaseAmountPerLoop + 1
    ]
  ]
end
;;------------------------------------------------------------------------------------------------------------------------------------------

;;------------------------------Behaviors of HMGB-1 in liver inflammation-------------------------------------------------------------------
to HMGB1UndergoCatabolismByNatureSubRoutine
  ifelse (HMGB1CurrentCount >= 0)
  [
    set HMGB1CurrentCount HMGB1CurrentCount + count HMGB-1s - 0.254 * HMGB1CurrentCount
  ]

  [
    set HMGB1CurrentCount 0
  ]

  ask HMGB-1s
  [
    die
  ]
end
;;------------------------------------------------------------------------------------------------------------------------------------------

;;------------------------------Behaviors of IL-10 in liver inflammation--------------------------------------------------------------------
to IL10InteractWithInflammatoryCellsSubRoutine
  if (counter != 0)
  [
    ;;IL-10 interact with kupffer cells (upper liver sinusoid)
    if any? KupfferCells with[ycor > 0 and kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and kupfferCellInteractWithIL10 = 0]
    [
      set amountOfIL10MoveToKupfferCellPerLoopUpperLiver amountOfIL10MoveToKupfferCellPerLoopUpperLiver + percentageOfIL10MoveToKupfferCellPerHour * count IL-10s with[ycor > 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
      if (amountOfIL10MoveToKupfferCellPerLoopUpperLiver >= 1)
      [
        ask n-of (amountOfIL10MoveToKupfferCellPerLoopUpperLiver) IL-10s with[ycor > 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
        [
          if any? KupfferCells with[ycor > 0 and kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and kupfferCellInteractWithIL10 = 0]
          [
            move-to one-of KupfferCells with[ycor > 0 and kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and kupfferCellInteractWithIL10 = 0]
            set IL10InteractWithKupfferCell 1
            set counter141 counter141 + 1
          ]
        ]
        set amountOfIL10MoveToKupfferCellPerLoopUpperLiver amountOfIL10MoveToKupfferCellPerLoopUpperLiver - counter141
        set counter141 0
      ]
    ]

    ;;IL-10 interact with kupffer cells (lower liver sinusoid)
    if any? KupfferCells with[ycor < 0 and kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and kupfferCellInteractWithIL10 = 0]
    [
      set amountOfIL10MoveToKupfferCellPerLoopLowerLiver amountOfIL10MoveToKupfferCellPerLoopLowerLiver + percentageOfIL10MoveToKupfferCellPerHour * count IL-10s with[ycor < 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
      if (amountOfIL10MoveToKupfferCellPerLoopLowerLiver >= 1)
      [
        ask n-of (amountOfIL10MoveToKupfferCellPerLoopLowerLiver) IL-10s with[ycor < 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
        [
          if any? KupfferCells with[ycor < 0 and kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and kupfferCellInteractWithIL10 = 0]
          [
            move-to one-of KupfferCells with[ycor < 0 and kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and kupfferCellInteractWithIL10 = 0]
            set IL10InteractWithKupfferCell 1
            set counter142 counter142 + 1
          ]
        ]
        set amountOfIL10MoveToKupfferCellPerLoopLowerLiver amountOfIL10MoveToKupfferCellPerLoopLowerLiver - counter142
        set counter142 0
      ]
    ]

    ask KupfferCells with[any? IL-10s-here with[IL10InteractWithKupfferCell = 1 and not any? KupfferCells-here with[kupfferCellInteractWithIL10 = 1]] and kupfferCellKillBySalmonella = 0 and kupfferCellUndergoApoptosisByNature = 0 and kupfferCellWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and kupfferCellInteractWithIL10 = 0 and not any? other KupfferCells-here with[kupfferCellInteractWithIL10 = 1]]
    [
      set kupfferCellInteractWithIL10 1
    ]

    ;;IL-10 interact with apoptotic hepatocytes (upper liver sinusoid)
    if any? Hepatocytes with[ycor > 0 and (hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteInteractWithNeutrophil = 0 and apoptoticHepatocyteInteractWithIL10 = 0]
    [
      set amountOfIL10MoveToApoptoticHepatocytePerLoopUpperLiver amountOfIL10MoveToApoptoticHepatocytePerLoopUpperLiver + percentageOfIL10MoveToApoptoticHepatocytePerHour * count IL-10s with[ycor > 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
      if (amountOfIL10MoveToApoptoticHepatocytePerLoopUpperLiver >= 1)
      [
        ask n-of (amountOfIL10MoveToApoptoticHepatocytePerLoopUpperLiver) IL-10s with[ycor > 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
        [
          if any? Hepatocytes with[ycor > 0 and (hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteInteractWithNeutrophil = 0 and apoptoticHepatocyteInteractWithIL10 = 0]
          [
            move-to one-of Hepatocytes with[ycor > 0 and (hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteInteractWithNeutrophil = 0 and apoptoticHepatocyteInteractWithIL10 = 0]
            set IL10InteractWithApoptoticHepatocyte 1
            set counter143 counter143 + 1
          ]
        ]
        set amountOfIL10MoveToApoptoticHepatocytePerLoopUpperLiver amountOfIL10MoveToApoptoticHepatocytePerLoopUpperLiver - counter143
        set counter143 0
      ]
    ]

    ;;IL-10 interact with apoptotic hepatocytes (lower liver sinusoid)
    if any? Hepatocytes with[ycor < 0 and (hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteInteractWithNeutrophil = 0 and apoptoticHepatocyteInteractWithIL10 = 0]
    [
      set amountOfIL10MoveToApoptoticHepatocytePerLoopLowerLiver amountOfIL10MoveToApoptoticHepatocytePerLoopLowerLiver + percentageOfIL10MoveToApoptoticHepatocytePerHour * count IL-10s with[ycor < 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
      if (amountOfIL10MoveToApoptoticHepatocytePerLoopLowerLiver >= 1)
      [
        ask n-of (amountOfIL10MoveToApoptoticHepatocytePerLoopLowerLiver) IL-10s with[ycor < 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
        [
          if any? Hepatocytes with[ycor < 0 and (hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteInteractWithNeutrophil = 0 and apoptoticHepatocyteInteractWithIL10 = 0]
          [
            move-to one-of Hepatocytes with[ycor < 0 and (hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteInteractWithNeutrophil = 0 and apoptoticHepatocyteInteractWithIL10 = 0]
            set IL10InteractWithApoptoticHepatocyte 1
            set counter144 counter144 + 1
          ]
        ]
        set amountOfIL10MoveToApoptoticHepatocytePerLoopLowerLiver amountOfIL10MoveToApoptoticHepatocytePerLoopLowerLiver - counter144
        set counter144 0
      ]
    ]

    ask Hepatocytes with[any? IL-10s-here with[IL10InteractWithApoptoticHepatocyte = 1 and not any? Hepatocytes-here with[apoptoticHepatocyteInteractWithIL10 = 1]] and (hepatocyteInteractWithSalmonella = 1 or hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 1) and apoptoticHepatocyteInteractWithNeutrophil = 0 and apoptoticHepatocyteInteractWithIL10 = 0]
    [
      set apoptoticHepatocyteInteractWithIL10 1
    ]

    ;;IL-10 interact with neutrophils (upper liver sinusoid)
    if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0]
    [
      set amountOfIL10MoveToActivatedNeutrophilPerLoopUpperLiver amountOfIL10MoveToActivatedNeutrophilPerLoopUpperLiver + percentageOfIL10MoveToActivatedNeutrophilPerHour * count IL-10s with[ycor > 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
      if (amountOfIL10MoveToActivatedNeutrophilPerLoopUpperLiver >= 1)
      [
        ask n-of (amountOfIL10MoveToActivatedNeutrophilPerLoopUpperLiver) IL-10s with[ycor > 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
        [
          if any? ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0]
          [
            move-to one-of ActivatedNeutrophils with[ycor > 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0]
            set IL10InteractWithActivatedNeutrophil 1
            set counter145 counter145 + 1
          ]
        ]
        set amountOfIL10MoveToActivatedNeutrophilPerLoopUpperLiver amountOfIL10MoveToActivatedNeutrophilPerLoopUpperLiver - counter145
        set counter145 0
      ]
    ]

    ;;IL-10 interact with neutrophils (lower liver sinusoid)
    if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0]
    [
      set amountOfIL10MoveToActivatedNeutrophilPerLoopLowerLiver amountOfIL10MoveToActivatedNeutrophilPerLoopLowerLiver + percentageOfIL10MoveToActivatedNeutrophilPerHour * count IL-10s with[ycor < 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
      if (amountOfIL10MoveToActivatedNeutrophilPerLoopLowerLiver >= 1)
      [
        ask n-of (amountOfIL10MoveToActivatedNeutrophilPerLoopLowerLiver) IL-10s with[ycor < 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
        [
          if any? ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0]
          [
            move-to one-of ActivatedNeutrophils with[ycor < 0 and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0]
            set IL10InteractWithActivatedNeutrophil 1
            set counter146 counter146 + 1
          ]
        ]
        set amountOfIL10MoveToActivatedNeutrophilPerLoopLowerLiver amountOfIL10MoveToActivatedNeutrophilPerLoopLowerLiver - counter146
        set counter146 0
      ]
    ]

    ask ActivatedNeutrophils with[any? IL-10s-here with[IL10InteractWithActivatedNeutrophil = 1 and not any? ActivatedNeutrophils-here with[activatedNeutrophilInteractWithIL10 = 1]] and activatedNeutrophilInteractWithKupfferCell = 0 and activatedNeutrophilUndergoApoptosisByNature = 0 and activatedNeutrophilWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and activatedNeutrophilInteractWithIL10 = 0]
    [
      set activatedNeutrophilInteractWithIL10 1
    ]

    ;;IL-10 interact with MDMIs (upper liver sinusoid)
    if any? MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0]
    [
      set amountOfIL10MoveToMDMIPerLoopUpperLiver amountOfIL10MoveToMDMIPerLoopUpperLiver + percentageOfIL10MoveToMDMIPerHour * count IL-10s with[ycor > 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
      if (amountOfIL10MoveToMDMIPerLoopUpperLiver >= 1)
      [
        ask n-of (amountOfIL10MoveToMDMIPerLoopUpperLiver) IL-10s with[ycor > 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
        [
          if any? MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0]
          [
            move-to one-of MDMIs with[ycor > 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0]
            set IL10InteractWithMDMI 1
            set counter147 counter147 + 1
          ]
        ]
        set amountOfIL10MoveToMDMIPerLoopUpperLiver amountOfIL10MoveToMDMIPerLoopUpperLiver - counter147
        set counter147 0
      ]
    ]

    ;;IL-10 interact with MDMIs (lower liver sinusoid)
    if any? MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0]
    [
      set amountOfIL10MoveToMDMIPerLoopLowerLiver amountOfIL10MoveToMDMIPerLoopLowerLiver + percentageOfIL10MoveToMDMIPerHour * count IL-10s with[ycor < 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
      if (amountOfIL10MoveToMDMIPerLoopLowerLiver >= 1)
      [
        ask n-of (amountOfIL10MoveToMDMIPerLoopLowerLiver) IL-10s with[ycor < 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
        [
          if any? MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0]
          [
            move-to one-of MDMIs with[ycor < 0 and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0]
            set IL10InteractWithMDMI 1
            set counter148 counter148 + 1
          ]
        ]
        set amountOfIL10MoveToMDMIPerLoopLowerLiver amountOfIL10MoveToMDMIPerLoopLowerLiver - counter148
        set counter148 0
      ]
    ]

    ask MDMIs with[any? IL-10s-here with[IL10InteractWithMDMI = 1 and not any? MDMIs-here with[MDMIInteractWithIL10 = 1]] and MDMIKillBySalmonella = 0 and MDMIBecomeApoptotic = 0 and MDMIWhoPhagocytizeSalmonellaInteractWithCD8TCell = 0 and MDMIInteractWithIL10 = 0]
    [
      set MDMIInteractWithIL10 1
    ]

    ;;IL-10 interact with MDMIIs (upper liver sinusoid)
    if any? MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0 and MDMIIInteractWithIL10 = 0]
    [
      set amountOfIL10MoveToMDMIIPerLoopUpperLiver amountOfIL10MoveToMDMIIPerLoopUpperLiver + percentageOfIL10MoveToMDMIIPerHour * count IL-10s with[ycor > 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
      if (amountOfIL10MoveToMDMIIPerLoopUpperLiver >= 1)
      [
        ask n-of (amountOfIL10MoveToMDMIIPerLoopUpperLiver) IL-10s with[ycor > 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
        [
          if any? MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0 and MDMIIInteractWithIL10 = 0]
          [
            move-to one-of MDMIIs with[ycor > 0 and MDMIIBecomeApoptotic = 0 and MDMIIInteractWithIL10 = 0]
            set IL10InteractWithMDMII 1
            set counter149 counter149 + 1
          ]
        ]
        set amountOfIL10MoveToMDMIIPerLoopUpperLiver amountOfIL10MoveToMDMIIPerLoopUpperLiver - counter149
        set counter149 0
      ]
    ]

    ;;IL-10 interact with MDMIIs (lower liver sinusoid)
    if any? MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0 and MDMIIInteractWithIL10 = 0]
    [
      set amountOfIL10MoveToMDMIIPerLoopLowerLiver amountOfIL10MoveToMDMIIPerLoopLowerLiver + percentageOfIL10MoveToMDMIIPerHour * count IL-10s with[ycor < 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
      if (amountOfIL10MoveToMDMIIPerLoopLowerLiver >= 1)
      [
        ask n-of (amountOfIL10MoveToMDMIIPerLoopLowerLiver) IL-10s with[ycor < 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
        [;;NOTE
          if any? MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0 and MDMIIInteractWithIL10 = 0]
          [
            move-to one-of MDMIIs with[ycor < 0 and MDMIIBecomeApoptotic = 0 and MDMIIInteractWithIL10 = 0]
            set IL10InteractWithMDMII 1
            set counter150 counter150 + 1
          ]
        ]
        set amountOfIL10MoveToMDMIIPerLoopLowerLiver amountOfIL10MoveToMDMIIPerLoopLowerLiver - counter150
        set counter150 0
      ]
    ]

    ask MDMIIs with[any? IL-10s-here with[IL10InteractWithMDMII = 1 and not any? MDMIIs-here with[MDMIIInteractWithIL10 = 1]] and MDMIIBecomeApoptotic = 0 and MDMIIInteractWithIL10 = 0]
    [
      set MDMIIInteractWithIL10 1
    ]

    ;;IL-10 interact with mast cells (upper liver sinusoid)
    if any? MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0 and mastCellInteractWithIL10 = 0]
    [
      set amountOfIL10MoveToMastCellPerLoopUpperLiver amountOfIL10MoveToMastCellPerLoopUpperLiver + percentageOfIL10MoveToMastCellPerHour * count IL-10s with[ycor > 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
      if (amountOfIL10MoveToMastCellPerLoopUpperLiver >= 1)
      [
        ask n-of (amountOfIL10MoveToMastCellPerLoopUpperLiver) IL-10s with[ycor > 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
        [
          if any? MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0 and mastCellInteractWithIL10 = 0]
          [
            move-to one-of MastCells with[ycor > 0 and mastCellUndergoApoptosisByNature = 0 and mastCellInteractWithIL10 = 0]
            set IL10InteractWithMastCell 1
            set counter151 counter151 + 1
          ]
        ]
        set amountOfIL10MoveToMastCellPerLoopUpperLiver amountOfIL10MoveToMastCellPerLoopUpperLiver - counter151
        set counter151 0
      ]
    ]

    ;;IL-10 interact with mast cells (lower liver sinusoid)
    if any? MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0 and mastCellInteractWithIL10 = 0]
    [
      set amountOfIL10MoveToMastCellPerLoopLowerLiver amountOfIL10MoveToMastCellPerLoopLowerLiver + percentageOfIL10MoveToMastCellPerHour * count IL-10s with[ycor < 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
      if (amountOfIL10MoveToMastCellPerLoopLowerLiver >= 1)
      [
        ask n-of (amountOfIL10MoveToMastCellPerLoopLowerLiver) IL-10s with[ycor < 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
        [
          if any? MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0 and mastCellInteractWithIL10 = 0]
          [
            move-to one-of MastCells with[ycor < 0 and mastCellUndergoApoptosisByNature = 0 and mastCellInteractWithIL10 = 0]
            set IL10InteractWithMastCell 1
            set counter152 counter152 + 1
          ]
        ]
        set amountOfIL10MoveToMastCellPerLoopLowerLiver amountOfIL10MoveToMastCellPerLoopLowerLiver - counter152
        set counter152 0
      ]
    ]

    ask MastCells with[any? IL-10s-here with[IL10InteractWithMastCell = 1 and not any? MastCells-here with[mastCellInteractWithIL10 = 1]] and mastCellUndergoApoptosisByNature = 0 and mastCellInteractWithIL10 = 0 and not any? other MastCells-here with[mastCellInteractWithIL10 = 1]]
    [
      set mastCellInteractWithIL10 1
    ]

    ;;IL-10 interact with CD4 T cells (upper liver sinusoid)
    if any? CD4TCells with[ycor > 0 and CD4TCellInPortalTriad = 0 and CD4TCellUndergoApoptosisByNature = 0 and CD4TCellInteractWithIL10 = 0]
    [
      set amountOfIL10MoveToCD4TCellPerLoopUpperLiver amountOfIL10MoveToCD4TCellPerLoopUpperLiver + percentageOfIL10MoveToCD4TCellPerHour * count IL-10s with[ycor > 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
      if (amountOfIL10MoveToCD4TCellPerLoopUpperLiver >= 1)
      [
        ask n-of (amountOfIL10MoveToCD4TCellPerLoopUpperLiver) IL-10s with[ycor > 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
        [
          if any? CD4TCells with[ycor > 0 and CD4TCellInPortalTriad = 0 and CD4TCellUndergoApoptosisByNature = 0 and CD4TCellInteractWithIL10 = 0]
          [
            move-to one-of CD4TCells with[ycor > 0 and CD4TCellInPortalTriad = 0 and CD4TCellUndergoApoptosisByNature = 0 and CD4TCellInteractWithIL10 = 0]
            set IL10InteractWithCD4TCell 1
            set counter153 counter153 + 1
          ]
        ]
        set amountOfIL10MoveToCD4TCellPerLoopUpperLiver amountOfIL10MoveToCD4TCellPerLoopUpperLiver - counter153
        set counter153 0
      ]
    ]

    ;;IL-10 interact with CD4 T cells (lower liver sinusoid)
    if any? CD4TCells with[ycor < 0 and CD4TCellInPortalTriad = 0 and CD4TCellUndergoApoptosisByNature = 0 and CD4TCellInteractWithIL10 = 0]
    [
      set amountOfIL10MoveToCD4TCellPerLoopLowerLiver amountOfIL10MoveToCD4TCellPerLoopLowerLiver + percentageOfIL10MoveToCD4TCellPerHour * count IL-10s with[ycor < 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
      if (amountOfIL10MoveToCD4TCellPerLoopLowerLiver >= 1)
      [
        ask n-of (amountOfIL10MoveToCD4TCellPerLoopLowerLiver) IL-10s with[ycor < 0 and IL10InteractWithKupfferCell = 0 and IL10InteractWithApoptoticHepatocyte = 0 and IL10InteractWithActivatedNeutrophil = 0 and IL10InteractWithMDMI = 0 and IL10InteractWithMDMII = 0 and IL10InteractWithMastCell = 0 and IL10InteractWithCD4TCell = 0]
        [
          if any? CD4TCells with[ycor < 0 and CD4TCellInPortalTriad = 0 and CD4TCellUndergoApoptosisByNature = 0 and CD4TCellInteractWithIL10 = 0]
          [
            move-to one-of CD4TCells with[ycor < 0 and CD4TCellInPortalTriad = 0 and CD4TCellUndergoApoptosisByNature = 0 and CD4TCellInteractWithIL10 = 0]
            set IL10InteractWithCD4TCell 1
            set counter154 counter154 + 1
          ]
        ]
        set amountOfIL10MoveToCD4TCellPerLoopLowerLiver amountOfIL10MoveToCD4TCellPerLoopLowerLiver - counter154
        set counter154 0
      ]
    ]

    ask CD4TCells with[any? IL-10s with[IL10InteractWithCD4TCell = 1 and not any? CD4TCells-here with[CD4TCellInteractWithIL10 = 1]] and CD4TCellInPortalTriad = 0 and CD4TCellUndergoApoptosisByNature = 0 and CD4TCellInteractWithIL10 = 0]
    [
      set CD4TCellInteractWithIL10 1
    ]
  ]
end

to IL10BindToInflammatoryCellsSubRoutine
  if (counter != 0)
  [
    ;;IL-10 binds to kupffer cells
    repeat count KupfferCells with[KupfferCellInteractWithIL10 = 1 and KupfferCellBindToIL10 = 0]
    [
      if any? KupfferCells with[KupfferCellInteractWithIL10 = 1 and KupfferCellBindToIL10 = 0]
      [
        ask one-of KupfferCells with[KupfferCellInteractWithIL10 = 1 and KupfferCellBindToIL10 = 0]
        [
          create-KupfferCellIL10-links-with IL-10s-here with[IL10InteractWithKupfferCell = 1 and IL10BindToKupfferCell = 0]
          set kupfferCellBindToIL10 1
        ]

        ask IL-10s with[IL10InteractWithKupfferCell = 1 and IL10BindToKupfferCell = 0 and any? KupfferCells-here with[kupfferCellBindToIL10 = 1]]
        [
          set IL10BindToKupfferCell 1
        ]
      ]
    ]

    ;;IL-10 binds to apoptotic hepatocytes
    repeat count Hepatocytes with[apoptoticHepatocyteInteractWithIL10 = 1 and apoptoticHepatocyteBindToIL10 = 0]
    [
      if any? Hepatocytes with[apoptoticHepatocyteInteractWithIL10 = 1 and apoptoticHepatocyteBindToIL10 = 0]
      [
        ask one-of Hepatocytes with[apoptoticHepatocyteInteractWithIL10 = 1 and apoptoticHepatocyteBindToIL10 = 0]
        [
          create-apoptoticHepatocyteIL10-links-with IL-10s-here with[IL10InteractWithapoptoticHepatocyte = 1 and IL10BindToapoptoticHepatocyte = 0]
          set apoptoticHepatocyteBindToIL10 1
        ]

        ask IL-10s with[IL10InteractWithapoptoticHepatocyte = 1 and IL10BindToapoptoticHepatocyte = 0 and any? Hepatocytes-here with[apoptoticHepatocyteBindToIL10 = 1]]
        [
          set IL10BindToapoptoticHepatocyte 1
        ]
      ]
    ]

    ;;IL-10 binds to neutrophils
    repeat count ActivatedNeutrophils with[activatedNeutrophilInteractWithIL10 = 1 and activatedNeutrophilBindToIL10 = 0]
    [
      if any? ActivatedNeutrophils with[activatedNeutrophilInteractWithIL10 = 1 and activatedNeutrophilBindToIL10 = 0]
      [
        ask one-of ActivatedNeutrophils with[activatedNeutrophilInteractWithIL10 = 1 and activatedNeutrophilBindToIL10 = 0]
        [
          create-NeutrophilIL10-links-with IL-10s-here with[IL10InteractWithActivatedNeutrophil = 1 and IL10BindToActivatedNeutrophil = 0]
          set activatedNeutrophilBindToIL10 1
        ]

        ask IL-10s with[IL10InteractWithActivatedNeutrophil = 1 and IL10BindToActivatedNeutrophil = 0 and any? ActivatedNeutrophils-here with[activatedNeutrophilBindToIL10 = 1]]
        [
          set IL10BindToactivatedNeutrophil 1
        ]
      ]
    ]

    ;;IL-10 binds to MDMIs
    repeat count MDMIs with[MDMIInteractWithIL10 = 1 and MDMIBindToIL10 = 0]
    [
      if any? MDMIs with[MDMIInteractWithIL10 = 1 and MDMIBindToIL10 = 0]
      [
        ask one-of MDMIs with[MDMIInteractWithIL10 = 1 and MDMIBindToIL10 = 0]
        [
          create-MDMIIL10-links-with IL-10s-here with[IL10InteractWithMDMI = 1 and IL10BindToMDMI = 0]
          set MDMIBindToIL10 1
        ]

        ask IL-10s with[IL10InteractWithMDMI = 1 and IL10BindToMDMI = 0 and any? MDMIs-here with[MDMIBindToIL10 = 1]]
        [
          set IL10BindToMDMI 1
        ]
      ]
    ]

    ;;IL-10 binds to MDMIIs
    repeat count MDMIIs with[MDMIIInteractWithIL10 = 1 and MDMIIBindToIL10 = 0]
    [
      if any? MDMIIs with[MDMIIInteractWithIL10 = 1 and MDMIIBindToIL10 = 0]
      [
        ask one-of MDMIIs with[MDMIIInteractWithIL10 = 1 and MDMIIBindToIL10 = 0]
        [
          create-MDMIIIL10-links-with IL-10s-here with[IL10InteractWithMDMII = 1 and IL10BindToMDMII = 0]
          set MDMIIBindToIL10 1
        ]

        ask IL-10s with[IL10InteractWithMDMII = 1 and IL10BindToMDMII = 0 and any? MDMIIs-here with[MDMIIBindToIL10 = 1]]
        [
          set IL10BindToMDMII 1
        ]
      ]
    ]

    ;;IL-10 binds to mast cells
    repeat count MastCells with[MastCellInteractWithIL10 = 1 and MastCellBindToIL10 = 0]
    [
      if any? MastCells with[MastCellInteractWithIL10 = 1 and MastCellBindToIL10 = 0]
      [
        ask one-of MastCells with[MastCellInteractWithIL10 = 1 and MastCellBindToIL10 = 0]
        [
          create-MastCellIL10-links-with IL-10s-here with[IL10InteractWithMastCell = 1 and IL10BindToMastCell = 0]
          set MastCellBindToIL10 1
        ]

        ask IL-10s with[IL10InteractWithMastCell = 1 and IL10BindToMastCell = 0 and any? MastCells-here with[MastCellBindToIL10 = 1]]
        [
          set IL10BindToMastCell 1
        ]
      ]
    ]

    ;;IL-10 binds to CD4 T cells
    repeat count CD4TCells with[CD4TCellInteractWithIL10 = 1 and CD4TCellBindToIL10 = 0]
    [
      if any? CD4TCells with[CD4TCellInteractWithIL10 = 1 and CD4TCellBindToIL10 = 0]
      [
        ask one-of CD4TCells with[CD4TCellInteractWithIL10 = 1 and CD4TCellBindToIL10 = 0]
        [
          create-CD4TCellIL10-links-with IL-10s-here with[IL10InteractWithCD4TCell = 1 and IL10BindToCD4TCell = 0]
          set CD4TCellBindToIL10 1
        ]

        ask IL-10s with[IL10InteractWithCD4TCell = 1 and IL10BindToCD4TCell = 0 and any? CD4TCells-here with[CD4TCellBindToIL10 = 1]]
        [
          set IL10BindToCD4TCell 1
        ]
      ]
    ]
  ]
end

to IL10UndergoCatabolismByNatureSubRoutine
  if (counter != 0)
  [
    set IL10ReleaseAmountPerLoop (IL10ReleaseAmountByKupfferCellPerLoop + IL10ReleaseAmountByActivatedNeutrophilPerLoop + IL10ReleaseAmountByMDMIPerLoop + IL10ReleaseAmountByMDMIIPerLoop + IL10ReleaseAmountByCD4TCellPerLoop)
    ifelse (0.014 * count IL-10s) >= 1
    [
      ask n-of (0.014 * count IL-10s) IL-10s
      [
        die
      ]
    ]

    [
      set IL10ReleaseAmountPerLoop IL10ReleaseAmountPerLoop - 0.014 * count IL-10s
    ]

    if (IL10ReleaseAmountPerLoop < 0 or not any? Salmonellas)
    [
      if any? IL-10s
      [
        ask one-of IL-10s
        [
          die
        ]
      ]
      set IL10ReleaseAmountPerLoop IL10ReleaseAmountPerLoop + 1
    ]

    ;;Assign a state variable to identify kupffer cells that NOT interact with IL-10
    ask KupfferCells with[kupfferCellInteractWithIL10 = 1 and not any? IL-10s-here with[IL10InteractWithKupfferCell = 1]]
    [
      set kupfferCellInteractWithIL10 0
    ]

    ;;Assign a state variable to identify apoptotic hepatocytes that NOT interact with IL-10
    ask Hepatocytes with[apoptoticHepatocyteInteractWithIL10 = 1 and not any? IL-10s-here with[IL10InteractWithApoptoticHepatocyte = 1]]
    [
      set apoptoticHepatocyteInteractWithIL10 0
    ]

    ;;Assign a state variable to identify neutrophils that NOT interact with IL-10
    ask ActivatedNeutrophils with[ActivatedNeutrophilInteractWithIL10 = 1 and not any? IL-10s-here with[IL10InteractWithActivatedNeutrophil = 1]]
    [
      set ActivatedNeutrophilInteractWithIL10 0
    ]

    ;;Assign a state variable to identify mast cells that NOT interact with IL-10
    ask MastCells with[MastCellInteractWithIL10 = 1 and not any? IL-10s-here with[IL10InteractWithMastCell = 1]]
    [
      set MastCellInteractWithIL10 0
    ]

    ;;Assign a state variable to identify MDMIs that NOT interact with IL-10
    ask MDMIs with[MDMIInteractWithIL10 = 1 and not any? IL-10s-here with[IL10InteractWithMDMI = 1]]
    [
      set MDMIInteractWithIL10 0
    ]

    ;;Assign a state variable to identify MDMIIs that NOT interact with IL-10
    ask MDMIIs with[MDMIIInteractWithIL10 = 1 and not any? IL-10s-here with[IL10InteractWithMDMII = 1]]
    [
      set MDMIIInteractWithIL10 0
    ]

    ;;Assign a state variable to identify CD4 T cells that NOT interact with IL-10
    ask CD4TCells with[CD4TCellInteractWithIL10 = 1 and not any? IL-10s-here with[IL10InteractWithCD4TCell = 1]]
    [
      set CD4TCellInteractWithIL10 0
    ]
  ]
end
;;---------------------------------------------------------------------------------------------------------------------------------------

;;-------------------Behaviors of histamine in liver inflammation------------------------------------------------------------------------
to histamineUndergoApoptosisByNatureSubRoutine
  if (counter != 0)
  [
    set histamineIncreaseAmountPerLoop histamineReleaseAmountByMastCellPerLoop
    ifelse (0.0023 * count Histamines) >= 1
    [
      ask n-of (0.0023 * count Histamines) Histamines
      [
        die
      ]
    ]

    [
      set histamineIncreaseAmountPerLoop histamineIncreaseAmountPerLoop - 0.0023 * count Histamines
    ]

    if (histamineIncreaseAmountPerLoop < 0 or not any? Salmonellas)
    [
      if any? Histamines
      [
        ask one-of Histamines
        [
          die
        ]
      ]
      set histamineIncreaseAmountPerLoop histamineIncreaseAmountPerLoop + 1
    ]
  ]
end
;;----------------------------------------------------------------------------------------------------------------------------------------------

;;------------------------------------------------------Plot function---------------------------------------------------------------------------
to Plot_1s
  if (counter > 0)
  [
    set-current-plot "Salmonella Count"
    set-current-plot-pen "Salmonella"
    plot count Salmonellas

    set-current-plot "Kupffer Cell Count"
    set-current-plot-pen "Kupffer Cell"
    plot count KupfferCells

    set-current-plot "Hepatocyte Count"
    set-current-plot-pen "Hepatocyte"
    plot count Hepatocytes

    set-current-plot "CRP Count"
    set-current-plot-pen "CRP"
    plot count CRPs

    set-current-plot "Hepatocyte Debris Count"
    set-current-plot-pen "Hepatocyte Debris"
    plot count HepatocyteDebrises

    set-current-plot "Mast Cell Count"
    set-current-plot-pen "Mast Cell"
    plot count MastCells

    set-current-plot "TNF-a Count"
    set-current-plot-pen "TNF-a"
    plot count TNF-as

    set-current-plot "Resting Neutrophil Count"
    set-current-plot-pen "Resting Neutrophil"
    plot count RestingNeutrophils

    set-current-plot "Activated Neutrophil Count"
    set-current-plot-pen "Activated Neutrophil"
    plot count ActivatedNeutrophils

    set-current-plot "HMGB-1 Count"
    set-current-plot-pen "HMGB-1"
    plot HMGB1CurrentCount

    set-current-plot "Resting Monocyte Count"
    set-current-plot-pen "Resting Monocyte"
    plot count RestingMonocytes

    set-current-plot "IL-10 Count"
    set-current-plot-pen "IL-10"
    plot count IL-10s

    set-current-plot "NETs Count"
    set-current-plot-pen "NETs"
    plot count NETs

    set-current-plot "MDMI Count"
    set-current-plot-pen "MDMI"
    plot count MDMIs

    set-current-plot "MDMII Count"
    set-current-plot-pen "MDMII"
    plot count MDMIIs

    set-current-plot "CD4 T Cell Count"
    set-current-plot-pen "CD4 T Cell"
    plot count CD4TCells

    set-current-plot "CD8 T Cell Count"
    set-current-plot-pen "CD8 T Cell"
    plot count CD8TCells

    set-current-plot "B Cell Count"
    set-current-plot-pen "B Cell"
    plot count BCells

    set-current-plot "TNF-a vs HMGB-1 vs IL-10 Count"
    set-current-plot-pen "TNF-a"
    plot count TNF-as
    set-current-plot-pen "HMGB-1"
    plot HMGB1CurrentCount
    set-current-plot-pen "IL-10"
    plot count IL-10s

    set-current-plot "Activated Neutrophil vs MDMI vs MDMII Count"
    set-current-plot-pen "Activated Neutrophil"
    plot count ActivatedNeutrophils
    set-current-plot-pen "MDMI"
    plot count MDMIs
    set-current-plot-pen "MDMII"
    plot count MDMIIs
  ]
end

;;--------------------------------------------------------Run therapeutic target simulation----------------------------------------------------
to add-antimicrobial-agents
  set-default-shape Antimicrobials "antimicrobial"
  repeat antimicrobialInitialNumber
  [
    ask one-of patches with [sinusoidArea = 1 and portalTriadArea = 0 and not any? KupfferCells-here and (pycor < int (max-pycor - max-pycor / 1.1) - 6) and (pycor > int (-(max-pycor - max-pycor / 1.1)) + 6)]
    [
      sprout-Antimicrobials 1
      [
        set size 0.9 * patch-size
        set color 65
      ]
    ]
  ]
end

to add-anti-TNF-a-agents
  set-default-shape AntiTNF-as "default"
  repeat antiTNFAlphaInitialNumber
  [
    ask one-of patches with [sinusoidArea = 1 and portalTriadArea = 0 and not any? KupfferCells-here and (pycor < int (max-pycor - max-pycor / 1.1) - 6) and (pycor > int (-(max-pycor - max-pycor / 1.1)) + 6)]
    [
      sprout-AntiTNF-as 1
      [
        set size 0.9 * patch-size
        set color yellow
      ]
    ]
  ]
end

to add-anti-HMGB-1-agents
  set-default-shape AntiHMGB-1s "default"
  repeat antiHMGB1InitialNumber
  [
    ask one-of patches with [sinusoidArea = 1 and portalTriadArea = 0 and not any? KupfferCells-here and (pycor < int (max-pycor - max-pycor / 1.1) - 6) and (pycor > int (-(max-pycor - max-pycor / 1.1)) + 6)]
    [
      sprout-AntiHMGB-1s 1
      [
        set size 0.9 * patch-size
        set color green
      ]
    ]
  ]
end

to antimicrobialAgentTreatment
  repeat (count Antimicrobials with [antimicrobialBindToSalmonella = 0])
  [
    if any? Antimicrobials with [antimicrobialBindToSalmonella = 0]
    [
      ask one-of Antimicrobials with [antimicrobialBindToSalmonella = 0]
      [
        if any? Salmonellas with [salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
        [
          move-to one-of Salmonellas with [salmonellaPhagocytizeByKupfferCell = 0 and salmonellaReplicateWithinKupfferCell = 0 and salmonellaReplicateWithinSECs = 0 and salmonellaReplicateWithinHepatocyte = 0 and salmonellaInteractWithNET = 0 and salmonellaPhagocytizeByNeutrophil = 0 and salmonellaBindToMastCell = 0 and salmonellaPhagocytizeByMDMI = 0 and salmonellaReplicateWithinMDMI = 0 and salmonellaInteractWithCRP = 0 and salmonellaInteractWithAntibody = 0]
          set antimicrobialBindToSalmonella 1
        ]
      ]
    ]
  ]

  ask Salmonellas with [any? Antimicrobials-here with [antimicrobialBindToSalmonella = 1]]
  [
    die
  ]

  ask Antimicrobials with [antimicrobialBindToSalmonella = 1 and not any? Salmonellas-here]
  [
    die
  ]

end

to antiHMGB1AgentTreatment

if (HMGB1CurrentCount > 0)
[
  ifelse (HMGB1CurrentCount > count antiHMGB-1s)
  [
    set HMGB1CurrentCount HMGB1CurrentCount - count antiHMGB-1s
    ask antiHMGB-1s
    [
      die
    ]
  ]

  [
    ask n-of (HMGB1CurrentCount) antiHMGB-1s
    [
      die
    ]
    set HMGB1CurrentCount 0
  ]
]
end

to antiTNFAlphaAgentTreatment
  repeat (count AntiTNF-as with [antiTNF-aBindToTNF-a = 0])
  [
    if any? AntiTNF-as with [antiTNF-aBindToTNF-a = 0]
    [
      ask one-of AntiTNF-as with [antiTNF-aBindToTNF-a = 0]
      [
        if any? TNF-as with [TNFAlphaInteractWithHepatocyte = 0 and TNFAlphaInteractWithAntiTNFAlpha = 0]
        [
          move-to one-of TNF-as with [TNFAlphaInteractWithHepatocyte = 0 and TNFAlphaInteractWithAntiTNFAlpha = 0]
          set antiTNF-aBindToTNF-a 1
        ]
      ]

      ask TNF-as with [any? antiTNF-as-here]
      [
        set TNFAlphaInteractWithAntiTNFAlpha 1
      ]
    ]
  ]

  ask TNF-as with [TNFAlphaInteractWithAntiTNFAlpha = 1 and any? AntiTNF-as-here with [antiTNF-aBindToTNF-a = 1]]
  [
    die
  ]

  ask AntiTNF-as with [antiTNF-aBindToTNF-a = 1 and not any? TNF-as-here]
  [
    die
  ]
end
@#$#@#$#@
GRAPHICS-WINDOW
1019
11
1792
805
200
200
1.903
1
10
1
1
1
0
1
1
1
-200
200
-200
200
1
1
1
ticks
30.0

BUTTON
463
256
576
289
NIL
InitialSetting
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
73
13
245
38
Initial Conditions
20
115.0
1

MONITOR
1853
377
1956
422
Hepatocyte Count
count hepatocytes
17
1
11

TEXTBOX
1487
414
1652
445
Liver Sinusoids
25
0.0
1

SLIDER
63
44
253
77
salmonellaInitialNumber
salmonellaInitialNumber
0
40000
1700
1
1
NIL
HORIZONTAL

SLIDER
253
45
443
78
restingNeutrophilInitialNumber
restingNeutrophilInitialNumber
0
10000
1000
1
1
NIL
HORIZONTAL

SLIDER
65
80
249
113
restingMonocyteInitialNumber
restingMonocyteInitialNumber
0
10000
1000
1
1
NIL
HORIZONTAL

SLIDER
254
81
443
114
CD4TCellInitialNumber
CD4TCellInitialNumber
0
10000
739
1
1
NIL
HORIZONTAL

SLIDER
67
114
250
147
CD8TCellInitialNumber
CD8TCellInitialNumber
0
10000
482
1
1
NIL
HORIZONTAL

SLIDER
254
115
444
148
BCellInitialNumber
BCellInitialNumber
0
10000
3235
1
1
NIL
HORIZONTAL

BUTTON
580
256
690
290
NIL
AIRSimulation
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

PLOT
1793
12
1998
170
Salmonella Count
Infection Time (hrs)
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"Salmonella" 1.0 0 -14439633 true "" ""

MONITOR
701
255
929
300
Infection Time
ticks
17
1
11

TEXTBOX
3023
10
3312
39
Salmonella System Parameter
20
115.0
1

MONITOR
1855
173
1959
218
Salmonella Count
count Salmonellas
17
1
11

PLOT
2001
12
2196
170
Kupffer Cell Count
Infection Time (hrs)
NIL
0.0
10.0
0.0
10.0
true
false
"plot kupfferCellInitialNumber" ""
PENS
"Kupffer Cell" 1.0 0 -9276814 true "" ""

INPUTBOX
3341
110
3623
170
salmonellaReplicationRateInKupfferCellUpperLevelPerHour
1.04
1
0
Number

INPUTBOX
3023
111
3336
171
salmonellaReplicationRateInKupfferCellLowerLevelPerHour
0.42
1
0
Number

INPUTBOX
3025
594
3257
654
lowerTimeOfKupfferCellKillBySalmonella
6
1
0
Number

INPUTBOX
3261
594
3502
654
upperTimeOfKupfferCellKillBySalmonella
14
1
0
Number

MONITOR
2051
170
2165
215
Kupffer Cell Count
count KupfferCells
17
1
11

INPUTBOX
3022
234
3335
294
salmonellaReplicationRateInHepatocyteLowerLevelPerHour
0.05
1
0
Number

INPUTBOX
3339
234
3623
294
salmonellaReplicationRateInHepatocyteUpperLevelPerHour
0.26
1
0
Number

PLOT
1792
215
2005
375
Hepatocyte Count
Infection Time (hrs)
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"Hepatocyte" 1.0 0 -16777216 true "" ""

PLOT
2006
216
2203
373
Hepatocyte Debris Count
Infection Time
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"Hepatocyte Debris" 1.0 0 -16777216 true "" ""

INPUTBOX
4343
116
4614
176
maximumReleaseRateOfTNFAlphaByMastCellPerHour
1.52E-7
1
0
Number

TEXTBOX
3026
559
3323
588
Kupffer Cell System Parameter
20
115.0
1

PLOT
2401
215
2601
370
TNF-a Count
Infection Time (hrs)
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"TNF-a" 1.0 0 -1184463 true "" ""

MONITOR
2461
371
2543
416
TNF-a Count
count TNF-as
17
1
11

MONITOR
2037
376
2176
421
Hepatocyte Debris Count
count HepatocyteDebrises
17
1
11

INPUTBOX
4585
343
4815
403
restingNeutrophilCarryCapacityInLiverSinusoid
6900
1
0
Number

TEXTBOX
4342
252
4681
285
Resting Neutrophil System Parameter
20
115.0
1

INPUTBOX
4338
406
4632
466
rateOfRestingNeutrophilUndergoAgingPerHourLowerLevel
0.05
1
0
Number

INPUTBOX
4634
406
5118
466
rateOfRestingNeutrophilUndergoAgingPerHourUpperLevel
0.095
1
0
Number

PLOT
1793
425
2018
579
Resting Neutrophil Count
Infection Time (hrs)
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"Resting Neutrophil" 1.0 0 -5204280 true "" ""

MONITOR
1846
580
1977
625
Resting Neutrophil Count
count RestingNeutrophils
17
1
11

INPUTBOX
4333
499
4630
559
activationRateOfRestingNeutrophilPerHourLowerLevel
0.21
1
0
Number

INPUTBOX
4639
499
5119
559
activationRateOfRestingNeutrophilPerHourUpperLevel
0.46
1
0
Number

MONITOR
2041
579
2192
624
Activated Neutrophil Count
count ActivatedNeutrophils
17
1
11

PLOT
2018
426
2209
578
Activated Neutrophil Count
Infection Time (hrs)
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"Activated Neutrophil" 1.0 0 -16777216 true "" ""

INPUTBOX
4593
565
5118
625
phagocytizeRateOfSalmonellaByActivatedNeutrophilPerHourLowerLevel
2.94
1
0
Number

INPUTBOX
4766
698
5122
758
phagocytizeRateOfSalmonellaByActivatedNeutrophilPerHourUpperLevel
12.94
1
0
Number

TEXTBOX
4337
469
4695
507
Activated Neutrophil System Parameter
20
115.0
1

TEXTBOX
3020
851
3322
885
Hepatocyte System Parameter
20
115.0
1

MONITOR
-2479
314
-66
359
NIL
count Hepatocytes with [hepatocyteInteractWithSalmonella = 0 and hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 0 and apoptoticHepatocyteInteractWithNeutrophil = 0 and apoptoticHepatocyteBecomeHepatocyteDebris = 0 and apoptoticHepatocyteReleaseHMGB1 = 0 and apoptoticHepatocyteReleaseTNFAlpha = 0] * (1 - count Hepatocytes with [hepatocyteInteractWithSalmonella = 0 and hepatocyteBecomeApoptoticByInteractWithTNFAlpha = 0 and apoptoticHepatocyteInteractWithNeutrophil = 0 and apoptoticHepatocyteBecomeHepatocyteDebris = 0 and apoptoticHepatocyteReleaseHMGB1 = 0 and apoptoticHepatocyteReleaseTNFAlpha = 0])
17
1
11

MONITOR
67
196
249
241
NIL
hepatocyteInitialNumber
17
1
11

INPUTBOX
4333
628
4687
688
killingRateOfApoptoticHepatocyteByNeutrophilPerHourLowerLevel
0.05
1
0
Number

INPUTBOX
4689
627
5121
687
killingRateOfApoptoticHepatocyteByNeutrophilPerHourUpperLevel
0.2
1
0
Number

PLOT
2601
214
2811
370
HMGB-1 Count
Infection Time (hrs)
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"HMGB-1" 1.0 0 -13840069 true "" ""

MONITOR
2662
370
2756
415
HMGB-1 Count
HMGB1CurrentCount
0
1
11

INPUTBOX
4557
886
4821
946
apoptoticRateOfActivatedNeutrophilByNaturePerHour
0.098
1
0
Number

INPUTBOX
5397
43
5729
103
influxRateOfRestingMonocyteToLiverSinusoidPerHourLowerLevel
1
1
0
Number

INPUTBOX
5730
43
6054
103
influxRateOfRestingMonocyteToLiverSinusoidPerHourUpperLevel
1.75
1
0
Number

INPUTBOX
5153
106
5453
166
restingMonocyteCarryCapacityInLiverSinusoid
1400
1
0
Number

TEXTBOX
5164
10
5495
41
Resting Monocyte System Parameter
20
115.0
1

INPUTBOX
5455
105
5748
165
activationRateOfRestingMonocytePerHourLowerLevel
0.25
1
0
Number

INPUTBOX
5752
104
6054
164
activationRateOfRestingMonocytePerHourUpperLevel
4.82
1
0
Number

INPUTBOX
5151
172
5465
232
apoptoticRateOfRestingMonocyteByAgingPerHourLowerLevel
0.0069
1
0
Number

INPUTBOX
5468
172
5783
232
apoptoticRateOfRestingMonocyteByAgingPerHourUpperLevel
0.021
1
0
Number

PLOT
2401
11
2600
171
Resting Monocyte Count
Infection Time (hrs)
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"Resting Monocyte" 1.0 0 -10141563 true "" ""

MONITOR
2437
170
2574
215
Resting Monocyte Count
count RestingMonocytes
17
1
11

PLOT
2811
215
3013
372
IL-10 Count
Infection Time (hrs)
NIL
0.0
10.0
0.0
1.0
true
false
"" ""
PENS
"IL-10" 1.0 0 -2674135 true "" ""

MONITOR
2882
373
2955
418
IL-10 Count
count IL-10s
17
1
11

PLOT
2209
426
2403
577
NETs Count
Infection Time (hrs)
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"NETs" 1.0 0 -7500403 true "" ""

MONITOR
2277
578
2355
623
NETs Count
count NETs
17
1
11

PLOT
2604
10
2808
172
MDMI Count
Infection Time (hrs)
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"MDMI" 1.0 0 -10649926 true "" ""

MONITOR
2657
172
2763
217
MDMI Count
count MDMIs
17
1
11

MONITOR
2882
171
2968
216
MDMII Count
count MDMIIs
17
1
11

PLOT
2811
11
3015
173
MDMII Count
Infection Time (hrs)
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"MDMII" 1.0 0 -2064490 true "" ""

TEXTBOX
5150
241
5381
276
MDMI System Parameter
20
115.0
1

INPUTBOX
3766
299
3961
359
salmonellaCarryCapacityInMDMI
4558000
1
0
Number

INPUTBOX
5147
333
5435
393
rateOfMDMITransformToKupfferCellLowerLevel
0.0063
1
0
Number

INPUTBOX
5371
267
5661
327
rateOfMDMITransformToKupfferCellUpperLevel
0.0079
1
0
Number

TEXTBOX
5143
474
5376
502
MDMII System Parameter
20
115.0
1

INPUTBOX
5143
502
5403
562
rateOfMDMIITransformToKupfferCellLowerLevel
0.0063
1
0
Number

INPUTBOX
5407
504
5665
564
rateOfMDMIITransformToKupfferCellUpperLevel
0.0079
1
0
Number

INPUTBOX
4342
48
4576
108
proliferateRateOfMastCellPerHourLowerLevel
9.45E-4
1
0
Number

INPUTBOX
4578
49
5116
109
proliferateRateOfMastCellPerHourUpperLevel
0.0031
1
0
Number

TEXTBOX
4344
10
4609
38
Mast Cell System Parameter
20
115.0
1

PLOT
2200
10
2398
170
Mast Cell Count
Infection Time (hrs)
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"Mast Cell" 1.0 0 -14835848 true "" ""

MONITOR
2259
171
2359
216
Mast Cell Count
count MastCells
17
1
11

PLOT
2403
423
2601
577
CD4 T Cell Count
Infection Time (hrs)
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"CD4 T Cell" 1.0 0 -14454117 true "" ""

PLOT
2602
424
2814
580
CD8 T Cell Count
Infection Time (hrs)
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"CD8 T Cell" 1.0 0 -3508570 true "" ""

MONITOR
2462
579
2558
624
CD4TCell Count
count CD4TCells
17
1
11

MONITOR
2659
582
2759
627
CD8TCell Count
count CD8TCells
17
1
11

INPUTBOX
6110
49
6369
109
influxRateOfCD4TCellToLiverSinusoidLowerLevel
0.00124
1
0
Number

INPUTBOX
6371
48
6636
108
influxRateOfCD4TCellToLiverSinusoidUpperLevel
0.0275
1
0
Number

INPUTBOX
6640
48
6845
108
CD4TCellCarryCapacityInLiverSinusoid
27400000
1
0
Number

TEXTBOX
6114
10
6387
36
CD4 T Cell System Parameter
20
115.0
1

INPUTBOX
6101
225
6344
285
influxRateOfCD8TCellToLiverSinusoidPerHour
0.0625
1
0
Number

INPUTBOX
6351
226
6572
286
CD8TCellCarryCapacityInLiverSinusoid
5000000
1
0
Number

TEXTBOX
6110
190
6375
221
CD8 T Cell System Parameter
20
115.0
1

INPUTBOX
6097
341
6397
401
influxRateOfBCellToLiverSinusoidPerHourLowerLevel
4.3E-4
1
0
Number

INPUTBOX
6695
341
6887
401
BCellCarryCapacityInLiverSinusoid
28600000
1
0
Number

INPUTBOX
6403
341
6691
401
influxRateOfBCellToLiverSinusoidPerHourUpperLevel
0.024
1
0
Number

TEXTBOX
6101
308
6338
332
B Cell System Parameter
20
115.0
1

PLOT
2814
424
3013
581
B Cell Count
Infection Time (hrs)
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"B Cell" 1.0 0 -8630108 true "" ""

MONITOR
2875
580
2955
625
B Cell Count
count BCells
17
1
11

INPUTBOX
3506
594
3961
654
timeOfKupfferCellWhoPhagocytizeSalmonellaDieByInteractWithCD8TCell
4
1
0
Number

INPUTBOX
4643
759
5123
819
timeOfActivatedNeutrophilWhoPhagocytizeSalmonellaDieByInteractWithCD8TCell
4
1
0
Number

INPUTBOX
5440
334
6055
394
timeOfMDMIWhoPhagocytizeSalmonellaDieByInteractWithCD8TCell
4
1
0
Number

TEXTBOX
7236
10
7463
38
IL-10 System Parameter
20
115.0
1

INPUTBOX
7236
38
7470
98
percentageOfIL10MoveToKupfferCellPerHour
0.143
1
0
Number

INPUTBOX
7479
36
7773
96
percentageOfIL10MoveToActivatedNeutrophilPerHour
0.143
1
0
Number

INPUTBOX
7529
101
7765
161
percentageOfIL10MoveToMDMIPerHour
0.143
1
0
Number

INPUTBOX
7769
100
8015
160
percentageOfIL10MoveToMDMIIPerHour
0.143
1
0
Number

INPUTBOX
7778
37
8012
97
percentageOfIL10MoveToMastCellPerHour
0.143
1
0
Number

INPUTBOX
7235
168
7480
228
percentageOfIL10MoveToCD4TCellPerHour
0.143
1
0
Number

INPUTBOX
3023
364
3225
424
timeOfSalmonellaKillByKupfferCell
6
1
0
Number

INPUTBOX
3022
172
3510
232
salmonellaReplicationRateInSECsPerHour
0.32
1
0
Number

INPUTBOX
3515
172
3958
232
salmonellaCarryCapacityInSECs
67000
1
0
Number

INPUTBOX
3632
110
3957
170
salmonellaCarryCapacityInKupfferCell
4558000
1
0
Number

INPUTBOX
3628
235
3958
295
salmonellaCarryCapacityInHepatocyte
817000
1
0
Number

INPUTBOX
3579
492
3961
552
percentageOfSalmonellaBeingTrappedByNETPerHour
0.2279
1
0
Number

TEXTBOX
4334
949
4558
974
NET System Parameter
20
115.0
1

INPUTBOX
6449
507
6795
567
percentageOfAntibodySalmonellaComplexMoveToMastCellPerHour
0.2
1
0
Number

TEXTBOX
6093
471
6345
495
Antibody System Parameter
20
115.0
1

INPUTBOX
6091
505
6445
565
percentageOfAntibodySalmonellaComplexMoveToKupfferCellPerHour
0.2
1
0
Number

INPUTBOX
6797
507
7159
567
percentageOfAntibodySalmonellaComplexMoveToNeutrophilPerHour
0.2
1
0
Number

INPUTBOX
6092
569
6455
629
percentageOfAntibodySalmonellaComplexMoveToMDMIPerHour
0.2
1
0
Number

INPUTBOX
6458
570
6823
630
percentageOfAntibodySalmonellaComplexMoveToMDMIIPerHour
0.2
1
0
Number

PLOT
2205
215
2399
369
CRP Count
Infection Time (hrs)
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"CRP" 1.0 0 -11221820 true "" ""

MONITOR
2270
373
2343
418
CRP Count
count CRPs
17
1
11

TEXTBOX
7238
234
7450
264
CRP System Parameter
20
115.0
1

INPUTBOX
7233
264
7483
324
percentageOfCRPBindToSalmonellaPerHour
0.167
1
0
Number

INPUTBOX
7231
328
7621
388
percentageOfCRPSalmonellaComplexMoveToKupfferCellPerHour
0.2
1
0
Number

INPUTBOX
7486
264
7768
324
percentageOfCRPBindToApoptoticKupfferCellPerHour
0.167
1
0
Number

INPUTBOX
7224
392
7613
452
percentageOfCRPApoptoticKupfferCellComplexMoveToKupfferCellPerHour
0.2
1
0
Number

INPUTBOX
7772
264
8035
324
percentageOfCRPBindToHepatocyteDebrisPerHour
0.167
1
0
Number

INPUTBOX
8038
261
8313
321
percentageOfCRPBindToApoptoticNeutrophilPerHour
0.167
1
0
Number

INPUTBOX
8318
262
8576
322
percentageOfCRPBindToApoptoticMDMIPerHour
0.167
1
0
Number

INPUTBOX
8580
261
8841
321
percentageOfCRPBindToApoptoticMDMIIPerHour
0.167
1
0
Number

INPUTBOX
7224
459
7615
519
percentageOfCRPHepatocyteDebrisComplexMoveToKupfferCellPerHour
0.2
1
0
Number

INPUTBOX
7220
524
7622
584
percentageOfCRPApoptoticNeutrophilComplexMoveToKupfferCellPerHour
0.2
1
0
Number

INPUTBOX
7218
588
7615
648
percentageOfCRPApoptoticMDMIComplexMoveToKupfferCellPerHour
0.2
1
0
Number

INPUTBOX
7218
652
7624
712
percentageOfCRPApoptoticMDMIIComplexMoveToKupfferCellPerHour
0.2
1
0
Number

INPUTBOX
7619
391
7996
451
percentageOfCRPApoptoticKupfferCellComplexMoveToMastCellPerHour
0.2
1
0
Number

INPUTBOX
7628
650
8004
710
percentageOfCRPApoptoticMDMIIComplexMoveToMastCellPerHour
0.2
1
0
Number

INPUTBOX
7624
583
8000
643
percentageOfCRPApoptoticMDMIComplexMoveToMastCellPerHour
0.2
1
0
Number

INPUTBOX
7628
518
7998
583
percentageOfCRPApoptoticNeutrophilComplexMoveToMastCellPerHour
0.2
1
0
Number

INPUTBOX
7623
457
7997
517
percentageOfCRPHepatocyteDebrisComplexMoveToMastCellPerHour
0.2
1
0
Number

INPUTBOX
7628
326
8007
386
percentageOfCRPSalmonellaComplexMoveToMastCellPerHour
0.2
1
0
Number

INPUTBOX
8013
328
8360
388
percentageOfCRPSalmonellaComplexMoveToNeutrophilPerHour
0.2
1
0
Number

INPUTBOX
8005
391
8356
451
percentageOfCRPApoptoticKupfferCellMoveToNeutrophilPerHour
0.2
1
0
Number

INPUTBOX
8006
459
8360
519
percentageOfCRPHepatocyteDebrisMoveToNeutrophilPerHour
0.2
1
0
Number

INPUTBOX
8008
520
8358
580
percentageOfCRPApoptoticNeutrophilMoveToNeutrophilPerHour
0.2
1
0
Number

INPUTBOX
8011
582
8356
642
percentageOfCRPApoptoticMDMIMoveToNeutrophilPerHour
0.2
1
0
Number

INPUTBOX
8011
649
8354
709
percentageOfCRPApoptoticMDMIIMoveToNeutrophilPerHour
0.2
1
0
Number

INPUTBOX
8370
329
8684
389
percentageOfCRPSalmonellaComplexMoveToMDMIPerHour
0.2
1
0
Number

INPUTBOX
8366
396
8676
456
percentageOfCRPApoptoticKupfferCellMoveToMDMIPerHour
0.2
1
0
Number

INPUTBOX
8367
460
8674
520
percentageOfCRPHepatocyteDebrisMoveToMDMIPerHour
0.2
1
0
Number

INPUTBOX
8368
522
8681
582
percentageOfCRPApoptoticNeutrophilMoveToMDMIPerHour
0.2
1
0
Number

INPUTBOX
8363
582
8677
642
percentageOfCRPApoptoticMDMIMoveToMDMIPerHour
0.2
1
0
Number

INPUTBOX
8364
646
8678
706
percentageOfCRPApoptoticMDMIIMoveToMDMIPerHour
0.2
1
0
Number

INPUTBOX
8692
331
9015
391
percentageOfCRPSalmonellaComplexMoveToMDMIIPerHour
0.2
1
0
Number

INPUTBOX
8682
398
9016
458
percentageOfCRPApoptoticKupfferCellMoveToMDMIIPerHour
0.2
1
0
Number

INPUTBOX
8684
462
9011
522
percentageOfCRPHepatocyteDebrisMoveToMDMIIPerHour
0.2
1
0
Number

INPUTBOX
8687
526
9014
586
percentageOfCRPApoptoticNeutrophilMoveToMDMIIPerHour
0.2
1
0
Number

INPUTBOX
8684
649
9002
709
percentageOfCRPApoptoticMDMIIMoveToMDMIIPerHour
0.2
1
0
Number

INPUTBOX
8686
587
8986
647
percentageOfCRPApoptoticMDMIMoveToMDMIIPerHour
0.2
1
0
Number

SWITCH
462
37
602
70
any?Salmonella
any?Salmonella
0
1
-1000

TEXTBOX
469
10
689
36
Knock Out Experiments
20
115.0
1

SWITCH
610
37
753
70
any?KupfferCell
any?KupfferCell
0
1
-1000

SWITCH
462
73
634
106
any?Hepatocyte
any?Hepatocyte
0
1
-1000

SWITCH
822
73
999
106
any?CRP
any?CRP
0
1
-1000

SWITCH
637
73
820
106
any?HepatocyteDebris
any?HepatocyteDebris
0
1
-1000

SWITCH
756
38
884
71
any?MastCell
any?MastCell
0
1
-1000

SWITCH
890
38
1000
71
any?SECs
any?SECs
0
1
-1000

SWITCH
463
110
670
143
any?RestingNeutrophil
any?RestingNeutrophil
0
1
-1000

SWITCH
674
110
866
143
any?ActivatedNeutrophil
any?ActivatedNeutrophil
0
1
-1000

SWITCH
869
110
999
143
any?NET
any?NET
0
1
-1000

SWITCH
464
145
684
178
any?RestingMonocyte
any?RestingMonocyte
0
1
-1000

SWITCH
688
145
845
178
any?MDMI
any?MDMI
0
1
-1000

SWITCH
848
145
999
178
any?MDMII
any?MDMII
0
1
-1000

SWITCH
463
182
599
215
any?CD4TCell
any?CD4TCell
0
1
-1000

SWITCH
602
182
734
215
any?CD8TCell
any?CD8TCell
0
1
-1000

SWITCH
736
182
863
215
any?BCell
any?BCell
0
1
-1000

SWITCH
865
182
999
215
any?Antibody
any?Antibody
0
1
-1000

SWITCH
463
218
598
251
any?TNFAlpha
any?TNFAlpha
0
1
-1000

SWITCH
602
218
798
251
any?HMGB1
any?HMGB1
0
1
-1000

SWITCH
803
219
998
252
any?IL10
any?IL10
0
1
-1000

INPUTBOX
3233
363
3457
423
timeOfSalmonellaDieInduceByNeutrophil
2
1
0
Number

INPUTBOX
3461
364
3661
424
timeOfSalmonellaDieInduceByMDMI
2
1
0
Number

INPUTBOX
8848
262
9094
322
rateOfCRPUndergoApoptosisByNaturePerHour
0.26
1
0
Number

INPUTBOX
4332
695
4576
755
percentageOfNeutrophilBeingKilledByKupfferCellPerHour
0.05
1
0
Number

INPUTBOX
5153
44
5394
104
timeOfRestingMonocyteInfluxIntoLiverSinusoid
2
1
0
Number

INPUTBOX
7234
101
7522
161
percentageOfIL10MoveToApoptoticHepatocytePerHour
0.143
1
0
Number

PLOT
1795
640
2075
803
TNF-a vs HMGB-1 vs IL-10 Count
Infection Time (hrs)
pg
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"TNF-a" 1.0 0 -1184463 true "" ""
"HMGB-1" 1.0 0 -13840069 true "" ""
"IL-10" 1.0 0 -2674135 true "" ""

PLOT
2080
640
2393
803
Activated Neutrophil vs MDMI vs MDMII Count
Infection Time (hrs)
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"Activated Neutrophil" 1.0 0 -14737633 true "" ""
"MDMI" 1.0 0 -13345367 true "" ""
"MDMII" 1.0 0 -2674135 true "" ""

INPUTBOX
3022
42
3389
102
percentageOfSalmonellaPhagocytizeByKupfferCellLowerLevel
0.9
1
0
Number

INPUTBOX
3394
42
3956
102
percentageOfSalmonellaPhagocytizeByKupfferCellUpperLevel
0.95
1
0
Number

INPUTBOX
5668
506
6053
566
maximumReleaseRateOfIL10ByMDMIIPerHour
2.02E-5
1
0
Number

INPUTBOX
3734
659
3965
719
amountOfIL10BeingRepresentedByOneAgent
1.23E-5
1
0
Number

INPUTBOX
6107
115
6411
175
maximumReleaseRateOfIL10ByCD4TCellPerHour
9.69E-7
1
0
Number

INPUTBOX
4332
760
4641
820
maximumReleaseRateOfIL10ByNeutrophilPerHour
1.03E-4
1
0
Number

INPUTBOX
3012
1070
3268
1130
maximumReleaseRateOfCRPByHepatocytePerHour
2.0E-7
1
0
Number

INPUTBOX
3276
1070
3506
1130
amountOfCRPBeingRepresentedByOneAgent
1.25E-5
1
0
Number

INPUTBOX
3012
1135
3382
1195
maximumReleaseRateOfHMGB1ByApoptoticHepatocytePerHour
6.25E-5
1
0
Number

INPUTBOX
3388
719
3655
779
amountOfTNFAlphaBeingRepresentedByOneAgent
2.82E-5
1
0
Number

INPUTBOX
3808
1072
4265
1132
maximumRateOfTNFAlphaBeingReleasedFromApoptoticHepatocytePerHour
9.18E-5
1
0
Number

INPUTBOX
5147
399
5460
459
maximumReleaseRateOfTNFAlphaByMDMIPerHour
1.7E-4
1
0
Number

INPUTBOX
3643
1004
3903
1064
timeOfHepatocyteBecomeDebrisLowerLevel
2
1
0
Number

INPUTBOX
5464
400
6055
460
maximumReleaseRateOfIL10ByMDMIPerHour
2.02E-5
1
0
Number

INPUTBOX
3020
787
3286
847
maximumReleaseRateOfIL10ByKupfferCellPerHour
7.38E-4
1
0
Number

TEXTBOX
3010
1202
3355
1229
Hepatocyte Debris System Parameter
20
115.0
1

INPUTBOX
5139
634
5346
694
timeOfApoptoticMDMIICRPComplexDie
1
1
0
Number

INPUTBOX
5140
568
5409
628
maximumReleaseRateOfHMGB1ByMDMIIFrom8To12
0.038
1
0
Number

INPUTBOX
5411
568
5686
628
maximumReleaseRateOfHMGB1ByMDMIIFrom12To16
0.169
1
0
Number

INPUTBOX
5688
570
6055
630
maximumReleaseRateOfHMGB1ByMDMIIFrom16ToEnd
0.497
1
0
Number

INPUTBOX
5665
267
6056
327
timeOfApoptoticMDMICRPComplexDie
1
1
0
Number

INPUTBOX
5149
266
5367
326
timeOfMonocyteInfluxIntoSiteOfInfection
6
1
0
Number

INPUTBOX
4331
985
4564
1045
amountOfNETBeingRepresentedByOneAgent
3.2E-7
1
0
Number

INPUTBOX
4334
564
4590
624
timeOfNeutrophilStartToInfluxIntoSiteOfInfection
2
1
0
Number

INPUTBOX
4580
697
4763
757
timeOfNeutrophilKillByKupfferCell
2
1
0
Number

INPUTBOX
4333
823
4624
883
maximumReleaseRateOfTNFAlphaByNeutrophilFrom0To1
0.27
1
0
Number

INPUTBOX
4628
824
5125
884
maximumReleaseRateOfTNFAlphaByNeutrophilFrom1ToEnd
2
1
0
Number

INPUTBOX
4826
886
5126
946
timeOfApoptoticNeutrophilKillByMDMII
1
1
0
Number

INPUTBOX
4332
887
4553
947
timeOfApoptoticNeutrophilCRPComplexDie
1
1
0
Number

INPUTBOX
4337
344
4582
404
timeOfNeutrophilStartToInfluxIntoLiverSinusoid
1
1
0
Number

INPUTBOX
4338
281
4627
341
influxRateOfRestingNeutrophilToLiverSinusoidFrom0To1
14
1
0
Number

INPUTBOX
4631
282
5118
342
influxRateOfRestingNeutrophilToLiverSinusoidFrom1To4
0.39
1
0
Number

INPUTBOX
4818
344
5118
404
influxRateOfRestingNeutrophilToLiverSinusoidFrom4ToEnd
0.125
1
0
Number

INPUTBOX
4342
182
5117
242
maximumReleaseRateOfHistamineByMastCellIfInteractWithAntibodySalmonellaComplexPerHour
0.18
1
0
Number

INPUTBOX
4618
117
5116
177
maximumReleaseRateOfTNFAlphaByMastCellIfInteractWithAntibodySalmonellaComplexPerHour
1.76E-4
1
0
Number

INPUTBOX
3008
1233
3220
1293
timeOfHepatocyteDebrisCRPComplexDie
1
1
0
Number

INPUTBOX
3017
881
3309
941
hepatocyteReplicationRatePerHourFrom0To98LowerLevel
0.00265
1
0
Number

INPUTBOX
3310
882
3605
942
hepatocyteReplicationRatePerHourFrom0To98UpperLevel
0.00317
1
0
Number

INPUTBOX
3608
882
3919
942
hepatocyteReplicationRatePerHourFrom98To135LowerLevel
0.00408
1
0
Number

INPUTBOX
3921
881
4262
941
hepatocyteReplicationRatePerHourFrom98To135UpperLevel
0.0068
1
0
Number

INPUTBOX
3016
945
3328
1005
hepatocyteReplicationRatePerHourFrom135To173LowerLevel
0.00132
1
0
Number

INPUTBOX
3330
945
3636
1005
hepatocyteReplicationRatePerHourFrom135To173UpperLevel
0.00395
1
0
Number

INPUTBOX
3638
945
3950
1005
hepatocyteReplicationRatePerHourFrom173To247LowerLevel
0.00408
1
0
Number

INPUTBOX
3952
944
4264
1004
hepatocyteReplicationRatePerHourFrom173To247UpperLevel
0.00527
1
0
Number

INPUTBOX
3014
1005
3330
1065
hepatocyteReplicationRatePerHourFrom247ToEndLowerLevel
0.00212
1
0
Number

INPUTBOX
3332
1005
3641
1065
hepatocyteReplicationRatePerHourFrom247ToEndUpperLevel
0.00265
1
0
Number

INPUTBOX
3906
1005
4264
1065
timeOfHepatocyteBecomeDebrisUpperLevel
3
1
0
Number

INPUTBOX
3659
721
3965
781
timeOfApoptoticKupfferCellCRPComplexDie
1
1
0
Number

INPUTBOX
3024
657
3377
717
maximumReleaseRateOfTNFAlphaFromKupfferCellPerHourFrom0To3
2.3E-4
1
0
Number

INPUTBOX
3380
658
3730
718
maximumReleaseRateOfTNFAlphaFromKupfferCellPerHourFrom3To6
8.36E-5
1
0
Number

INPUTBOX
3023
722
3384
782
maximumReleaseRateOfTNFAlphaFromKupfferCellPerHourFrom6To10
2.09E-5
1
0
Number

INPUTBOX
3021
297
3258
357
salmonellaReplicationRateInMDMIFrom0To10
0.9
1
0
Number

INPUTBOX
3259
298
3511
358
salmonellaReplicationRateInMDMIFrom10To16
10.9
1
0
Number

INPUTBOX
3514
298
3764
358
salmonellaReplicationRateInMDMIFrom16To25
2.7
1
0
Number

INPUTBOX
3024
428
3313
488
maximumNumberOfSalmonellaBeingKilledByKupfferCell
50
1
0
Number

INPUTBOX
3319
428
3608
488
maximumNumberOfSalmonellaBeingKilledByNeutrophil
17
1
0
Number

INPUTBOX
3611
428
3961
488
maximumNumberOfSalmonellaBeingKilledByMDMI
30
1
0
Number

INPUTBOX
3024
492
3288
552
maximumNumberOfSalmonellaResideWithinSECs
3
1
0
Number

INPUTBOX
3291
493
3577
553
maximumNumberOfSalmonellaResideWithinHepatocyte
15
1
0
Number

INPUTBOX
3669
364
3960
424
timeOfSalmonellaCRPComplexDie
1
1
0
Number

INPUTBOX
6418
115
6703
175
maximumReleaseRateOfTNFAlphaByCD4TCellPerHour
6.94E-7
1
0
Number

MONITOR
252
197
365
242
NIL
SECsInitialNumber
17
1
11

MONITOR
67
244
213
289
NIL
kupfferCellInitialNumber
17
1
11

MONITOR
214
244
366
289
NIL
mastCellInitialNumber
17
1
11

INPUTBOX
6400
405
6708
465
maximumReleaseRateOfAntibodyByBCellUpperLevelPerHour
0.00281
1
0
Number

INPUTBOX
6711
405
6962
465
amountOfAntibodyBeingRepresentedByOneAgent
5.31
1
0
Number

INPUTBOX
6097
404
6399
464
maximumReleaseRateOfAntibodyByBCellLowerLevelPerHour
4.88E-4
1
0
Number

BUTTON
54
641
221
674
NIL
add-antimicrobial-agents
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
853
612
1008
672
salmonellaHighLevelLow
2304
1
0
Number

INPUTBOX
541
680
696
740
HMGB-1MediumLevelLow
400
1
0
Number

INPUTBOX
851
679
1006
739
HMGB-1HighLevelLow
800
1
0
Number

INPUTBOX
539
613
694
673
salmonellaMediumLevelLow
1152
1
0
Number

SWITCH
57
571
252
604
conductTherapeuticTest?
conductTherapeuticTest?
1
1
-1000

INPUTBOX
56
696
211
756
antimicrobialInitialNumber
200
1
0
Number

INPUTBOX
371
696
526
756
antiHMGB1InitialNumber
800
1
0
Number

INPUTBOX
541
745
697
805
TNF-aMediumLevelLow
600
1
0
Number

INPUTBOX
701
746
852
806
TNF-aMediumLevelHigh
1200
1
0
Number

BUTTON
224
641
382
674
NIL
add-anti-TNF-a-agents
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
385
641
525
674
NIL
add-anti-HMGB-1-agents
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
74
759
193
804
Antimicrobial Count
count Antimicrobials
17
1
11

MONITOR
389
761
511
806
AntiHMGB-1 Count
count AntiHMGB-1s
17
1
11

INPUTBOX
695
612
850
672
salmonellaMediumLevelHigh
2304
1
0
Number

INPUTBOX
698
679
853
739
HMGB-1MediumLevelHigh
800
1
0
Number

INPUTBOX
855
749
1010
809
TNF-aHighLevelLow
1200
1
0
Number

SWITCH
548
570
891
603
IncorporateTherapyWheneverSystemStatesChange
IncorporateTherapyWheneverSystemStatesChange
1
1
-1000

MONITOR
228
759
344
804
AntiTNF-a Count
count antiTNF-as
17
1
11

INPUTBOX
257
572
412
632
TimeOfTherapyIncorporation
0
1
0
Number

TEXTBOX
406
399
670
430
Hypothetical Therapy Tests
20
115.0
1

INPUTBOX
211
695
368
755
antiTNFAlphaInitialNumber
1000
1
0
Number

TEXTBOX
1496
55
1717
95
Site of Hepatocytes
25
0.0
1

TEXTBOX
1031
384
1102
449
Portal Triad
25
9.9
1

TEXTBOX
1720
389
1788
454
Portal Triad
25
9.9
1

TEXTBOX
1038
527
1086
552
SECs
20
0.0
1

TEXTBOX
1497
725
1717
762
Site of Hepatocytes
25
0.0
1

TEXTBOX
1116
351
1262
381
Kupffer Cells
25
9.9
1

TEXTBOX
1118
455
1263
485
Kupffer Cells
25
9.9
1

TEXTBOX
1223
521
1582
551
Sinusoid Endothelial Cell (SECs)
25
9.9
1

TEXTBOX
1224
283
1585
316
Sinusoid Endothelial Cell (SECs)
25
9.9
1

TEXTBOX
1128
570
1299
607
Space of Disse
25
9.9
1

TEXTBOX
1125
233
1290
266
Space of Disse
25
9.9
1

TEXTBOX
81
463
428
538
Incorporate anti-agent treatment(s) at predefined time point(s)
20
115.0
1

TEXTBOX
557
463
950
519
Incorporate anti-agent type treatment(s) whenever the system changes
20
115.0
1

INPUTBOX
3509
1071
3803
1131
rateOfHepatocyteBeingInfectedBySalmonellaPerHour
0.003
1
0
Number

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

activatedneutrophil
false
0
Circle -7500403 true true 15 15 240
Circle -13791810 true false 45 90 88
Circle -2064490 true false 81 36 108
Circle -2064490 true false 71 161 67
Circle -7500403 true true 158 143 134

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

antibody
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

antimicrobial
true
0
Circle -7500403 true true 54 69 192
Circle -7500403 true true 69 69 42
Circle -7500403 true true 127 52 44
Circle -7500403 true true 187 67 44
Circle -7500403 true true 67 217 44
Circle -7500403 true true 127 232 44
Circle -7500403 true true 187 217 44
Circle -7500403 true true 217 172 44
Circle -7500403 true true 217 112 44
Circle -7500403 true true 187 67 44
Circle -7500403 true true 37 112 44
Circle -7500403 true true 37 172 44

antitnf-a
true
0
Rectangle -7500403 true true 135 90 165 255

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

bcell
false
0
Polygon -13791810 true false 90 90 75 30 120 75 120 15 150 60 165 15 180 60 225 30 210 75 255 75 225 105 285 120 240 150 285 165 225 180 270 240 225 210 225 255 195 225 195 270 165 240 135 285 135 240 90 270 105 225 30 240 75 195 30 180 75 165 15 135 60 120 30 75 75 90 45 30 90 90
Circle -13345367 true false 75 75 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

cd4tcell
false
0
Polygon -7500403 true true 90 105 75 45 120 90 120 30 150 75 165 30 180 75 225 45 210 90 255 90 225 120 285 135 240 165 285 180 225 195 270 255 225 225 225 270 195 240 195 285 165 255 135 300 135 255 90 285 105 240 30 255 75 210 30 195 75 180 15 150 60 135 30 90 75 105 45 45 90 105
Circle -1184463 true false 75 90 150

cd8tcell
false
0
Polygon -14835848 true false 90 105 75 45 120 90 120 30 150 75 165 30 180 75 225 45 210 90 255 90 225 120 285 135 240 165 285 180 225 195 270 255 225 225 225 270 195 240 195 285 165 255 135 300 135 255 90 285 105 240 30 255 75 210 30 195 75 180 15 150 60 135 30 90 75 105 45 45 90 105
Circle -13840069 true false 75 90 150

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

crp
true
0
Rectangle -7500403 true true 75 45 210 75
Polygon -7500403 true true 210 45 210 30 255 60 210 90 210 75
Rectangle -7500403 true true 105 105 240 135
Polygon -7500403 true true 105 105 105 90 45 120 105 150 105 135
Rectangle -7500403 true true 75 165 210 195
Polygon -7500403 true true 210 165 210 150 255 180 210 210 210 195
Rectangle -7500403 true true 105 225 240 255
Polygon -7500403 true true 105 225 105 210 45 240 105 270 105 255
Line -7500403 true 255 60 45 120
Line -7500403 true 60 120 255 180
Line -7500403 true 255 180 45 240
Line -7500403 true 75 75 45 120
Line -7500403 true 45 120 75 165
Line -7500403 true 75 165 45 240
Line -7500403 true 255 60 240 105
Line -7500403 true 240 135 255 180
Line -7500403 true 255 180 240 225

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

hepatocyte
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120
Circle -6459832 true false 129 144 42

hepatocytedebris
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 105 195 75 210 60 240 75 240 75 270 90 255 105 270 120 270 150 240 180 270 195 270 210 255 225 270 225 240 240 240 225 210 180 195
Circle -16777216 true false 108 138 85

histamine
true
0
Circle -7500403 true true 90 60 120
Circle -7500403 true true 163 58 92
Circle -7500403 true true 45 105 90
Circle -7500403 true true 56 26 67
Circle -7500403 true true 120 120 90
Circle -7500403 true true 116 26 67

hmgb-1
true
0
Rectangle -7500403 true true 75 45 210 75
Polygon -7500403 true true 210 45 210 30 255 60 210 90 210 75
Rectangle -7500403 true true 105 105 240 135
Polygon -7500403 true true 105 105 105 90 45 120 105 150 105 135
Rectangle -7500403 true true 75 165 210 195
Polygon -7500403 true true 210 165 210 150 255 180 210 210 210 195
Rectangle -7500403 true true 105 225 240 255
Polygon -7500403 true true 105 225 105 210 45 240 105 270 105 255
Line -7500403 true 255 60 45 120
Line -7500403 true 60 120 255 180
Line -7500403 true 255 180 45 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

il-10
true
0
Rectangle -7500403 true true 75 45 210 75
Polygon -7500403 true true 210 45 210 30 255 60 210 90 210 75
Rectangle -7500403 true true 105 105 240 135
Polygon -7500403 true true 105 105 105 90 45 120 105 150 105 135
Rectangle -7500403 true true 75 165 210 195
Polygon -7500403 true true 210 165 210 150 255 180 210 210 210 195
Rectangle -7500403 true true 105 225 240 255
Polygon -7500403 true true 105 225 105 210 45 240 105 270 105 255
Line -7500403 true 255 60 45 120
Line -7500403 true 60 120 255 180
Line -7500403 true 255 180 45 240

kupffer cell
true
0
Polygon -7500403 true true 105 135 75 45 135 120 270 120 195 150 255 210 180 165 105 240 135 180 45 180 105 165 15 120 105 135
Circle -2064490 true false 118 133 32

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

mast cell
true
0
Circle -7500403 true true 99 129 42
Circle -7500403 true true 84 99 42
Circle -7500403 true true 114 99 42
Circle -7500403 true true 69 114 42
Circle -7500403 true true 129 129 42
Circle -7500403 true true 84 144 42
Circle -7500403 true true 114 159 42
Circle -7500403 true true 54 144 42
Circle -7500403 true true 84 174 42
Circle -7500403 true true 144 159 42
Circle -7500403 true true 159 129 42
Circle -7500403 true true 144 99 42
Circle -7500403 true true 129 69 42
Circle -7500403 true true 99 69 42
Circle -7500403 true true 69 84 42
Circle -7500403 true true 39 114 42
Circle -7500403 true true 54 174 42
Circle -7500403 true true 114 189 42
Circle -7500403 true true 174 159 42
Circle -7500403 true true 144 174 42
Circle -7500403 true true 174 114 42
Circle -7500403 true true 159 84 42
Circle -7500403 true true 189 129 42
Circle -8630108 true false 132 117 66

mdmi
true
0
Circle -7500403 true true 54 69 192
Circle -7500403 true true 96 6 108
Circle -6459832 true false 86 146 67

mdmii
true
0
Circle -7500403 true true 54 69 192
Circle -7500403 true true 96 6 108
Circle -6459832 true false 86 146 67

nets
true
0
Rectangle -7500403 true true 60 60 225 75
Rectangle -7500403 true true 60 105 225 120
Rectangle -7500403 true true 60 150 225 165
Rectangle -7500403 true true 60 195 225 210
Rectangle -7500403 true true 60 240 225 255
Rectangle -7500403 true true 90 45 105 270
Rectangle -7500403 true true 135 45 150 270
Rectangle -7500403 true true 180 45 195 270

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

resting monocyte
false
0
Circle -7500403 true true 0 0 300
Circle -8630108 true false 11 71 127

resting neutrophil
false
0
Circle -7500403 true true 0 0 300
Circle -8630108 true false 45 90 88
Circle -8630108 true false 111 51 108
Circle -8630108 true false 26 161 67

salmonella
true
0
Circle -7500403 true true 30 90 90
Rectangle -7500403 true true 75 90 195 180
Circle -7500403 true true 150 90 90
Circle -7500403 true true 90 75 30
Circle -7500403 true true 165 75 30
Circle -7500403 true true 90 165 30
Circle -7500403 true true 165 165 30

sec
true
0
Rectangle -7500403 true true 75 60 225 210
Circle -955883 true false 105 120 30
Rectangle -955883 true false 120 120 180 150
Circle -955883 true false 165 120 30

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

signal
true
0
Line -7500403 true 90 75 180 45
Line -7500403 true 90 75 180 105
Line -7500403 true 180 105 90 135
Line -7500403 true 90 135 180 150
Line -7500403 true 180 150 90 180
Line -7500403 true 90 180 180 210

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tnf-a
true
0
Rectangle -7500403 true true 75 45 210 75
Polygon -7500403 true true 210 45 210 30 255 60 210 90 210 75
Rectangle -7500403 true true 105 105 240 135
Polygon -7500403 true true 105 105 105 90 45 120 105 150 105 135
Rectangle -7500403 true true 75 165 210 195
Polygon -7500403 true true 210 165 210 150 255 180 210 210 210 195
Rectangle -7500403 true true 105 225 240 255
Polygon -7500403 true true 105 225 105 210 45 240 105 270 105 255
Line -7500403 true 255 60 45 120
Line -7500403 true 60 120 255 180
Line -7500403 true 255 180 45 240

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270

@#$#@#$#@
NetLogo 5.3.1
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180

@#$#@#$#@
0
@#$#@#$#@
