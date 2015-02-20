ifeq ($(strip $(DataFormats/HcalDetId)),)
ALL_COMMONRULES += src_DataFormats_HcalDetId_src
src_DataFormats_HcalDetId_src_parent := DataFormats/HcalDetId
src_DataFormats_HcalDetId_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_HcalDetId_src,src/DataFormats/HcalDetId/src,LIBRARY))
DataFormatsHcalDetId := self/DataFormats/HcalDetId
DataFormats/HcalDetId := DataFormatsHcalDetId
DataFormatsHcalDetId_files := $(patsubst src/DataFormats/HcalDetId/src/%,%,$(wildcard $(foreach dir,src/DataFormats/HcalDetId/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsHcalDetId_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/HcalDetId/BuildFile
DataFormatsHcalDetId_LOC_USE := self  FWCore/Utilities boost rootrflx
DataFormatsHcalDetId_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsHcalDetIdCapabilities,DataFormatsHcalDetId,$(SCRAMSTORENAME_LIB),src/DataFormats/HcalDetId/src))
DataFormatsHcalDetId_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsHcalDetId,0,src/DataFormats/HcalDetId/src/classes.h,src/DataFormats/HcalDetId/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsHcalDetId_EX_LIB   := DataFormatsHcalDetId
DataFormatsHcalDetId_EX_USE   := $(foreach d,$(DataFormatsHcalDetId_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsHcalDetId_PACKAGE := self/src/DataFormats/HcalDetId/src
ALL_PRODS += DataFormatsHcalDetId
DataFormatsHcalDetId_INIT_FUNC        += $$(eval $$(call Library,DataFormatsHcalDetId,src/DataFormats/HcalDetId/src,src_DataFormats_HcalDetId_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
