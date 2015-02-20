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
