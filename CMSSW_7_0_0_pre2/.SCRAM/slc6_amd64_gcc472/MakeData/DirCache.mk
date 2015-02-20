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
ifeq ($(strip $(CondFormats/HcalObjects)),)
ALL_COMMONRULES += src_CondFormats_HcalObjects_src
src_CondFormats_HcalObjects_src_parent := CondFormats/HcalObjects
src_CondFormats_HcalObjects_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CondFormats_HcalObjects_src,src/CondFormats/HcalObjects/src,LIBRARY))
CondFormatsHcalObjects := self/CondFormats/HcalObjects
CondFormats/HcalObjects := CondFormatsHcalObjects
CondFormatsHcalObjects_files := $(patsubst src/CondFormats/HcalObjects/src/%,%,$(wildcard $(foreach dir,src/CondFormats/HcalObjects/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CondFormatsHcalObjects_BuildFile    := $(WORKINGDIR)/cache/bf/src/CondFormats/HcalObjects/BuildFile
CondFormatsHcalObjects_LOC_USE := self  CondFormats/Common DataFormats/DetId DataFormats/HcalDetId Geometry/CaloTopology FWCore/Utilities FWCore/MessageLogger rootrflx
CondFormatsHcalObjects_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CondFormatsHcalObjectsCapabilities,CondFormatsHcalObjects,$(SCRAMSTORENAME_LIB),src/CondFormats/HcalObjects/src))
CondFormatsHcalObjects_PRE_INIT_FUNC += $$(eval $$(call LCGDict,CondFormatsHcalObjects,0,src/CondFormats/HcalObjects/src/classes.h,src/CondFormats/HcalObjects/src/classes_def.xml,$(SCRAMSTORENAME_LIB), --fail_on_warnings,Capabilities))
CondFormatsHcalObjects_EX_LIB   := CondFormatsHcalObjects
CondFormatsHcalObjects_EX_USE   := $(foreach d,$(CondFormatsHcalObjects_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsHcalObjects_PACKAGE := self/src/CondFormats/HcalObjects/src
ALL_PRODS += CondFormatsHcalObjects
CondFormatsHcalObjects_INIT_FUNC        += $$(eval $$(call Library,CondFormatsHcalObjects,src/CondFormats/HcalObjects/src,src_CondFormats_HcalObjects_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
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
