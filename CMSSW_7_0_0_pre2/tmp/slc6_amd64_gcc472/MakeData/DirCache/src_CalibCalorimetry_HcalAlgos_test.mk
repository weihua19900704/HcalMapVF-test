ALL_COMMONRULES += src_CalibCalorimetry_HcalAlgos_test
src_CalibCalorimetry_HcalAlgos_test_parent := CalibCalorimetry/HcalAlgos
src_CalibCalorimetry_HcalAlgos_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CalibCalorimetry_HcalAlgos_test,src/CalibCalorimetry/HcalAlgos/test,TEST))
