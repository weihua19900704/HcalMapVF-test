ifeq ($(strip $(CalibCalorimetry/HcalAlgos)),)
ALL_COMMONRULES += src_CalibCalorimetry_HcalAlgos_src
src_CalibCalorimetry_HcalAlgos_src_parent := CalibCalorimetry/HcalAlgos
src_CalibCalorimetry_HcalAlgos_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CalibCalorimetry_HcalAlgos_src,src/CalibCalorimetry/HcalAlgos/src,LIBRARY))
CalibCalorimetryHcalAlgos := self/CalibCalorimetry/HcalAlgos
CalibCalorimetry/HcalAlgos := CalibCalorimetryHcalAlgos
CalibCalorimetryHcalAlgos_files := $(patsubst src/CalibCalorimetry/HcalAlgos/src/%,%,$(wildcard $(foreach dir,src/CalibCalorimetry/HcalAlgos/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CalibCalorimetryHcalAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/CalibCalorimetry/HcalAlgos/BuildFile
CalibCalorimetryHcalAlgos_LOC_USE := self  boost root clhep FWCore/Framework FWCore/MessageLogger DataFormats/HcalDetId CondFormats/HcalObjects DataFormats/HcalDigi CalibFormats/HcalObjects
CalibCalorimetryHcalAlgos_EX_LIB   := CalibCalorimetryHcalAlgos
CalibCalorimetryHcalAlgos_EX_USE   := $(foreach d,$(CalibCalorimetryHcalAlgos_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibCalorimetryHcalAlgos_PACKAGE := self/src/CalibCalorimetry/HcalAlgos/src
ALL_PRODS += CalibCalorimetryHcalAlgos
CalibCalorimetryHcalAlgos_INIT_FUNC        += $$(eval $$(call Library,CalibCalorimetryHcalAlgos,src/CalibCalorimetry/HcalAlgos/src,src_CalibCalorimetry_HcalAlgos_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
