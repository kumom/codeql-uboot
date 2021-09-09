import cpp

from MacroInvocation i
where i.getMacroName() in ["ntohl", "ntohll", "ntohs"]
select i
