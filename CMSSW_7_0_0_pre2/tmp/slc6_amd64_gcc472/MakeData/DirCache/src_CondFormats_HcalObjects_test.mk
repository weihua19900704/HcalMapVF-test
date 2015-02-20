ALL_COMMONRULES += src_CondFormats_HcalObjects_test
src_CondFormats_HcalObjects_test_parent := CondFormats/HcalObjects
src_CondFormats_HcalObjects_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CondFormats_HcalObjects_test,src/CondFormats/HcalObjects/test,TEST))
