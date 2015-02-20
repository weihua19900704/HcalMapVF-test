static  const char* clnames[] = {
  "LCGReflex/HcalCalibDetId",
  "LCGReflex/HcalCastorDetId",
  "LCGReflex/HcalDcsDetId",
  "LCGReflex/HcalDetId",
  "LCGReflex/HcalZDCDetId",
  "LCGReflex/CastorElectronicsId",
  "LCGReflex/HcalElectronicsId",
  "LCGReflex/HcalTrigTowerDetId",
  "LCGReflex/HcalOtherDetId",
  "LCGReflex/HcalFrontEndId",
  "LCGReflex/std::vector<CastorElectronicsId>",
  "LCGReflex/std::vector<HcalFrontEndId>",
  "LCGReflex/std::vector<HcalElectronicsId>",
};
extern "C" void SEAL_CAPABILITIES (const char**& names, int& n )
{names = clnames;n = sizeof(clnames)/sizeof(char*);}
