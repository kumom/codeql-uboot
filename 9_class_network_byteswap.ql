import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation i |
      i.getMacroName() in ["ntohl", "ntohll", "ntohs"]
      and this = i.getExpr()
    ) 
  }
}

from NetworkByteSwap n
select n, "Network byte swap"