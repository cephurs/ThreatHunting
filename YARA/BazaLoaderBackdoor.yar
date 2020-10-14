/*
  BazaLoader - this file is free for commerical use and basis for production detection
*/

import "vt"

rule BazaLoader
{
  strings:
    $0 = {EB62F22BA4D8A2FA901C4AB2FB359AC0D87112401153B270E63AB6FD13FD7B0CA0A25623BEDEEAD93351CFD48C6259D7AEAFAAB3D3CE4717511172ECBD0C49310DF2E572DD12281C50096DCE8E356C460375D66DF76742BEDCB060317E6516857B9AAF6A9295D94AD1964734ABA0CA84135209C5C204A90632C62EB53F21C72399DE60FC08BC59D9B686BAABC730801764F7BDF136154C4AAFEE1955FA864B85B811D4F180EFD187EC15DA730CC131DF65BAB6736F2F}
    $1 = {7D01F3052B1445765FC3D9F39155A8F4A90DB231418BA4A708BFC50C6792550D690269F60D26A15BB66CF61ED732B15CC8E08FF4922144E2D9112E432F10EE6D448F5FEA1F2841C0DBF19CFF61D9C9AED0DCC54A132B69FA447A5930DDE57029020449B7350C9FABC96EB597613EE91E194129}
    $2 = {DEA52967EBBE22ACD331AC32591D48C502601DA062D5D29112A4E552491CD5E9B7BADFDC2A7D33D10FAD920F49A9A1D9479A32B79BE135AE31ADE0A997238452488EFCE0EA51D4D4E68FC481E47E6D15DC0E090ADE015751254AB455E2C16130A43078075C28D2A6F0C2098405}
    $3 = {FDD93385CCBA9FDDCF644DE6CDDC6FC358729AC63E5886A4E4FAF17AF3B33317125BB29C0AFF1AB0B7B19DAD5A05921857EABF0752D9ADD44A6EF7A694E245AD734126AFF404E29912DA19AC357189D01EF99D}
    $4 = {53A34F3BACAAFE2E934DFB4F8A100FFCF9F677DAE597408B95C5C03E91C3D359CB30DA7458EC3504CC1BD9A5D999101B5D64F664A459DED22CBF133F81DCE09DEE4540D62ABF0631928A406F305552E907}
    $5 = {B327623C1D329755FB2714E830F0E15AF068A7A55C0855AA6ABD7D240E9866F4F48BD5A789A0D8BB2F08389F6D861665CB12FF1D27D7FA1130396DA98E2678DCEEB64E10EB91E27452DB3DF63FE4FFBC31}
    $6 = {0D28A372A74A07BC354D1C7F26AB71E598D6BBEF3518A1E485ACAC553F41546AA0FA8493D96973A08CE40B6DC68FD027DF0228B5F72C57799FC13EA86ABA20480642F911182B73079E}
    $7 = {19A506CD3D13C83F4FA33583D0F13D1C63EF705B470509514C66D89D7544F54D84E1B39F4CACA9E2649D32AE960136A97E80A240CF2E0BD9811656DF25276D1F4A3DE8CB}
    $8 = {E66FA71C63D7EC0AB63DD328FC477AABFC10D191858D7BE93165C5CEB6B48C9ECC66A40FD4B926818ABCEC4E45B37F7732446D0B0ED91174B1CF32F69EB2519F}
    $9 = {B351C1F9803A9517D998BB8287BC0C449DFCA5688993D167BDA761512BE891C2E3B101E1BFAAF015A3CDFF82F509EEF6E0A9E04F6CD15107C1059D572A496409}
    $10 = {FA8EB085E90B613617B3CC7BA6E9CC34364D2966C90DEA0894F364EA2B085338F5B35CDBA3B6C414CCB69F01EFFB3C4BCE9F38CC4384ABD8A4E032DFE39CD53C}
//    $11 = {3F50524F5350454B54204C454E494E47524144534B49592C20444F4D2038302C204B4F525055532036362C204554203820504F4D2058204B4F4D2032312C3232}
  condition:
    vt.metadata.new_file and
    all of them
}

rule BazaSignature
{
  strings:
    $0 = {7777772E676C6F62616C7369676E2E636F6D}
    $1 = {50524F5350454B54204C454E494E47524144534B49592C20444F4D2038302C204B4F525055532036362C204554203820504F4D2058204B4F4D2032312C323231}
  condition:
    vt.metadata.new_file and
    all of them
}

/*
  BazaLoader
*/

import "vt"

rule BazaLoader
{
  strings:
    $0 = {EB62F22BA4D8A2FA901C4AB2FB359AC0D87112401153B270E63AB6FD13FD7B0CA0A25623BEDEEAD93351CFD48C6259D7AEAFAAB3D3CE4717511172ECBD0C49310DF2E572DD12281C50096DCE8E356C460375D66DF76742BEDCB060317E6516857B9AAF6A9295D94AD1964734ABA0CA84135209C5C204A90632C62EB53F21C72399DE60FC08BC59D9B686BAABC730801764F7BDF136154C4AAFEE1955FA864B85B811D4F180EFD187EC15DA730CC131DF65BAB6736F2F}
    $1 = {7D01F3052B1445765FC3D9F39155A8F4A90DB231418BA4A708BFC50C6792550D690269F60D26A15BB66CF61ED732B15CC8E08FF4922144E2D9112E432F10EE6D448F5FEA1F2841C0DBF19CFF61D9C9AED0DCC54A132B69FA447A5930DDE57029020449B7350C9FABC96EB597613EE91E194129}
    $2 = {DEA52967EBBE22ACD331AC32591D48C502601DA062D5D29112A4E552491CD5E9B7BADFDC2A7D33D10FAD920F49A9A1D9479A32B79BE135AE31ADE0A997238452488EFCE0EA51D4D4E68FC481E47E6D15DC0E090ADE015751254AB455E2C16130A43078075C28D2A6F0C2098405}
    $3 = {FDD93385CCBA9FDDCF644DE6CDDC6FC358729AC63E5886A4E4FAF17AF3B33317125BB29C0AFF1AB0B7B19DAD5A05921857EABF0752D9ADD44A6EF7A694E245AD734126AFF404E29912DA19AC357189D01EF99D}
    $4 = {53A34F3BACAAFE2E934DFB4F8A100FFCF9F677DAE597408B95C5C03E91C3D359CB30DA7458EC3504CC1BD9A5D999101B5D64F664A459DED22CBF133F81DCE09DEE4540D62ABF0631928A406F305552E907}
    $5 = {B327623C1D329755FB2714E830F0E15AF068A7A55C0855AA6ABD7D240E9866F4F48BD5A789A0D8BB2F08389F6D861665CB12FF1D27D7FA1130396DA98E2678DCEEB64E10EB91E27452DB3DF63FE4FFBC31}
    $6 = {0D28A372A74A07BC354D1C7F26AB71E598D6BBEF3518A1E485ACAC553F41546AA0FA8493D96973A08CE40B6DC68FD027DF0228B5F72C57799FC13EA86ABA20480642F911182B73079E}
    $7 = {19A506CD3D13C83F4FA33583D0F13D1C63EF705B470509514C66D89D7544F54D84E1B39F4CACA9E2649D32AE960136A97E80A240CF2E0BD9811656DF25276D1F4A3DE8CB}
    $8 = {E66FA71C63D7EC0AB63DD328FC477AABFC10D191858D7BE93165C5CEB6B48C9ECC66A40FD4B926818ABCEC4E45B37F7732446D0B0ED91174B1CF32F69EB2519F}
    $9 = {B351C1F9803A9517D998BB8287BC0C449DFCA5688993D167BDA761512BE891C2E3B101E1BFAAF015A3CDFF82F509EEF6E0A9E04F6CD15107C1059D572A496409}
    $10 = {FA8EB085E90B613617B3CC7BA6E9CC34364D2966C90DEA0894F364EA2B085338F5B35CDBA3B6C414CCB69F01EFFB3C4BCE9F38CC4384ABD8A4E032DFE39CD53C}
//    $11 = {3F50524F5350454B54204C454E494E47524144534B49592C20444F4D2038302C204B4F525055532036362C204554203820504F4D2058204B4F4D2032312C3232}
  condition:
    vt.metadata.new_file and
    all of them
}

rule BazaSignature
{
  strings:
    $0 = {7777772E676C6F62616C7369676E2E636F6D}
    $1 = {50524F5350454B54204C454E494E47524144534B49592C20444F4D2038302C204B4F525055532036362C204554203820504F4D2058204B4F4D2032312C323231}
  condition:
    vt.metadata.new_file and
    all of them
}

rule BazaSignature2
{
  strings:
    $0 = "Infinite Programming Limited" ascii wide
    $1 = "DigiCert EV Code Signing CA (SHA2)" ascii wide
  condition:
    vt.metadata.new_file and
    all of them
}

rule BazaYo
{
  strings:
    $0 = {C0716311FF63B363A3B9C166C1F1C191BD61708F2D9FDF6494F985A9074C97B3ADBDAAD611FCBB6B30F6CDD9304B96D39111664D767055E3212CBD9E0726C949E67C5BF0D7C8E8B6A9D2AD7A243BEA237C6ED6F2AD1EAE7EF679CD6C4E89E22CE725F43BD5EF7849D1E16D30671BD5ED95460A9845A897FAF9D7D61ED54372F99AC4F7DC76600F477C6D38E44B504F7704DC77BA03BBD8C6EF2A02603B4734B1394B13A3A3738C6F73E2FB4747C20CBE41BCD792C558DA8AFDF8854E6D8DA2E58D5FC72A8E56CE69084D49D8A16EE2A262178E0901D00DA390D4A6F9303C7360215E7544F50EF5654A7C7C9C5A04B790375D3EF10BC82F259BA1D455308206BC308205}
    $1 = {417070506F6C69637947657450726F636573735465726D696E6174696F6E4D6574686F64}
  condition:
    vt.metadata.new_file and
    all of them
}

rule BazaLo
{
  strings:
    $0 = {15000B8342000C8867000F9288001198A100129CB600139FC800129ED40012A2DA0013A3E10013A3E80013A3EB0013A1F00013A2F00013A1F00013A2F00013A2F00013A2F00013A1F00013A1F00013A2F00013A2F00013A2F00013A1F00013A2F00013A2F00013A1F00013A1F00013A1F00013A1F00013A2F00013A1F00013A1F00013A1F00013A1F00013A1F00013A3F00013A2F00013A1F00013A1F00013A2F00013A1F00013A2F00013A2F00013A2F00013A2F00013A2F00013A2F00013A0F00013}
    $1 = {50726976617465204F7267616E697A6174696F6E31}
    $2 = {5669727475616C416C6C6F6345784E756D61}
    $3 = {F00018BFF00018C0F00019C0F00018C0F00019C0F00018C0F00019C0F00019C0F00117B3F08488B9F0D2D2DAF0D2D2DAF0D2D2DBEED2D2DCEAD2D2DCE7D1D1DBE1D0D0DADACDCDD8D3CDCDD5C7C6C6D2B6C2C2CCA1B7B9C388A9A9B2689E9EA6429D9DAA15}
    $4 = {F00013A2F00013A1F00013A2F00013A2F00013A2F00013A2F00013A2F00013A2F00013A1F00013A1F00013A2F00013A2F00013A2EB0013A3E80013A4E10012A2DA00129ED400119EC800129CB7001198A2000E9389000C8867000B8143000B8B16}
    $5 = {4200119E670014AB890016B4A10017B8B60016BAC80018BCD40018BFDA0018C0E10019C1E70019C0EA0018C0EE0019C0F00019C1F00019C0F00018BFF00019C0F00019C1F00018C0F00019C0F0}
    $6 = {FBFF6471DEFF0F24CBFF2539D0FF4554D7FF606DDCFF7782E2FF9299E8FFA6ADECFFB4B9EFFFC4C5F2FFCBCBF4FFD1D1F5FFD1D1F5FFC9C9F3FFBFC2F1FFAFB5EEFF979EE8FF6F}
  condition:
    vt.metadata.new_file and
    all of them
}

rule BazaFiiii
{
  strings:
    $0 = {F00018BFF00018C0F00019C0F00018C0F00019C0F00018C0F00019C0F00019C0F00117B3F08488B9F0D2D2DAF0D2D2DAF0D2D2DBEED2D2DCEAD2D2DCE7D1D1DBE1D0D0DADACDCDD8D3CDCDD5C7C6C6D2B6C2C2CCA1B7B9C388A9A9B2689E9EA6429D9DAA1500}
    $1 = {F00013A2F00013A2F00013A2F00013A1F00013A1F00013A2F00013A2F00013A2EB0013A3E80013A4E10012A2DA00129ED400119EC800129CB7001198A2000E9389000C8867000B8143}
  condition:
    vt.metadata.new_file and
    all of them
}

rule BazaSignature3
{
  strings:
    $0 = "SNAB-RESURS, OOO" ascii wide
    $1 = "DigiCert EV Code Signing CA (SHA2)" ascii wide
  condition:
    vt.metadata.new_file and
    all of them
}
