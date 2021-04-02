CPUMiner-Multi
==============

This is a multi-threaded CPU miner,
fork of [pooler](//github.com/pooler)'s cpuminer (see AUTHORS for list of contributors).

This fork adds support for Minotaur and MinotaurX.

#### Table of contents

* [Algorithms](#algorithms)
* [Dependencies](#dependencies)
* [Download](#download)
* [Build](#build)
* [Usage instructions](#usage-instructions)
* [Donations](#donations)
* [Credits](#credits)
* [License](#license)

Algorithms
==========
#### Currently supported
 * ✓ __scrypt__ (Litecoin, Dogecoin, Feathercoin, ...)
 * ✓ __scrypt:N__
 * ✓ __scrypt-jane:N__
 * ✓ __sha256d__ (Bitcoin, Freicoin, Peercoin/PPCoin, Terracoin, ...)
 * ✓ __allium__ (Garlicoin, Tuxcoin)
 * ✓ __axiom__ (Axiom Shabal-256 based MemoHash)
 * ✓ __bastion__ (Joincoin [J])
 * ✓ __bitcore__ Permuted serie of 10 algos (BitCore)
 * ✓ __blake__ (Saffron [SFR] Blake-256)
 * ✓ __blake2s__ (NevaCoin Blake2-S 256)
 * ✓ __blake2b__ (Not SIA one)
 * ✓ __bmw__ (Midnight [MDT] BMW-256)
 * ✓ __minotaur__ (Ring [RNG])
 * ✓ __cryptonight__ (Bytecoin [BCN], Monero [XMR])
 * ✓ __cryptonight-light__ (Aeon)
 * ✓ __decred__ (Blake256-14 [DCR])
 * ✓ __dmd-gr__ (Diamond-Groestl)
 * ✓ __fresh__ (FreshCoin)
 * ✓ __geek__ (GeekCash [GEEK])
 * ✓ __groestl__ (Groestlcoin)
 * ✓ __jha__ (JackpotCoin, SweepStake)
 * ✓ __lbry__ (LBRY Credits [LBC])
 * ✓ __lyra2RE__ (Cryptocoin)
 * ✓ __lyra2REv2__
 * ✓ __lyra2REv3__ (VertCoin [VTC])
 * ✓ __myr-gr__ Myriad-Groestl (MyriadCoin [MYR])
 * ✓ __minotaur__ Minotaur (Ring [RNG])
 * ✓ __neoscrypt__ (Feathercoin)
 * ✓ __nist5__ (MistCoin [MIC], TalkCoin [TAC], ...)
 * ✓ __pentablake__ (Joincoin)
 * ✓ __pluck__ (Supcoin [SUP])
 * ✓ __quark__ (Quarkcoin)
 * ✓ __qubit__ (GeoCoin)
 * ✓ __skein__ (Skeincoin, Myriadcoin, Xedoscoin, ...)
 * ✓ __skein2__ (Woodcoin)
 * ✓ __s3__ (OneCoin)
 * ✓ __sia__ (Reversed Blake2B for SIA [SC])
 * ✓ __sib__ X11 + gost streebog (SibCoin)
 * ✓ __timetravel__ Permuted serie of 8 algos (MachineCoin [MAC])
 * ✓ __tribus__ 3 of the top NIST5 algos (Denarius [DNR])
 * ✓ __vanilla__ (Blake-256 8-rounds - double sha256 [VNL])
 * ✓ __veltor__ (Veltor [VLT])
 * ✓ __xevan__ x17 x 2 on bigger header (BitSend [BSD])
 * ✓ __x11evo__ (Revolver [XRE])
 * ✓ __x11__ (Darkcoin [DRK], Hirocoin, Limecoin, ...)
 * ✓ __x12__ (GalaxyCash [GCH])
 * ✓ __x13__ (Sherlockcoin, [ACE], [B2B], [GRC], [XHC], ...)
 * ✓ __x14__ (X14, Webcoin [WEB])
 * ✓ __x15__ (RadianceCoin [RCE])
 * ✓ __x16r__ (Ravencoin [RVN])
 * ✓ __x16s__ (Pigeoncoin [PGN])
 * ✓ __x17__ (Verge [XVG])
 * ✓ __x20r__
 * ✓ __zr5__ (Ziftrcoin [ZRC])

#### Implemented, but untested
 * ? hefty1 (Heavycoin)
 * ? keccak (Maxcoin  HelixCoin, CryptoMeth, Galleon, 365coin, Slothcoin, BitcointalkCoin)
 * ? keccakc (Creativecoin)
 * ? luffa (Joincoin, Doomcoin)
 * ? rainforest
 * ? shavite3 (INKcoin)

#### Planned support for
 * *scrypt-jane* (YaCoin, CopperBars, Pennies, Tickets, etc..)
 
Dependencies
============
 * libcurl http://curl.haxx.se/libcurl/
 * jansson http://www.digip.org/jansson/ (jansson source is included in-tree)
 * openssl libcrypto https://www.openssl.org/
 * pthreads
 * zlib (for curl/ssl)

Download
========
 * Windows releases: https://github.com/litecoincash-project/cpuminer-multi/releases
 * Git tree:   https://github.com/litecoincash-project/cpuminer-multi
   * Clone with `git clone https://github.com/litecoincash-project/cpuminer-multi`

Build
=====

#### Basic *nix build instructions:
 * just use `./build.sh`
_OR_

```
 ./autogen.sh	# only needed if building from git repo
 ./nomacro.pl	# only needed if building on Mac OS X or with Clang
 ./configure CFLAGS="*-march=native*" --with-crypto --with-curl
 # Use -march=native if building for a single machine
 make
```

#### Note for Debian/Ubuntu users:

```
 apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev make g++
```

#### Note for OS X users:

```
 brew install openssl curl
 ./build.sh # if curl was installed to /usr/local/opt, else update build.sh paths in darwin section
```

#### Note for pi64 users:

```
 ./autogen.sh
 ./configure --disable-assembly CFLAGS="-Ofast -march=native" --with-crypto --with-curl
```

#### Notes for AIX users:
 * To build a 64-bit binary, export OBJECT_MODE=64
 * GNU-style long options are not supported, but are accessible via configuration file

#### Windows build (Cross-compiled from Ubuntu 20.04 on WSL2)

```
 # Get build tools
 sudo apt install git automake autoconf make mingw-w64-x86-64-dev mingw-w64-tools mingw-w64

 # Get dependencies
 wget http://curl.haxx.se/download/curl-7.40.0.tar.gz
 wget ftp://sourceware.org/pub/pthreads-win32/pthreads-w32-2-9-1-release.tar.gz
 wget https://www.openssl.org/source/openssl-1.1.1k.tar.gz
 wget https://zlib.net/zlib-1.2.11.tar.gz
 tar zxf *.tar.gz
 mkdir win64_deps
 DEPS="${PWD}/win64_deps"

 # Build dependency: curl
 cd curl-7.40.0
 ./configure --with-winssl --enable-static --prefix=$DEPS --host=x86_64-w64-mingw32 --disable-shared --disable-ldap
 make install
 cd ..

 # Build dependency: pthreads
 cd pthreads-w32-2-9-1-release/
 cp config.h pthreads_win32_config.h
 make -f GNUmakefile CROSS="x86_64-w64-mingw32-" clean GC-static
 cp libpthreadGC2.a ${DEPS}/lib/libpthread.a
 cp pthread.h semaphore.h sched.h ${DEPS}/include
 cd ..

 # Build dependency: zlib
 cd zlib-1.2.11/
 make -f win32/Makefile.gcc BINARY_PATH=${DEPS}/bin INCLUDE_PATH=${DEPS}/include LIBRARY_PATH=${DEPS}/lib SHARED_MODE=1 PREFIX=x86_64-w64-mingw32- install
 cd ..

 # Build dependency: openssl
 cd openssl-1.1.1k
 ./Configure --prefix=${DEPS}/openssl --cross-compile-prefix=x86_64-w64-mingw32- no-idea no-mdc2 no-rc5 no-shared mingw64
 make depend && make && make install
 cd ..

 # Build the miner
 autoreconf -fi -I${DEPS}/share/aclocal
 ./configure --host=x86_64-w64-mingw32 \
    CFLAGS="-DWIN32 -DCURL_STATICLIB -O3 -I${DEPS}/include -DPTW32_STATIC_LIB -DOPENSSL_NO_ASM -DUSE_ASM" \
    --with-crypto=${DEPS}/openssl --with-curl=${DEPS} \
    LDFLAGS="-static -L${DEPS}/lib" 
 make
```

#### Architecture-specific notes:
 * ARM:
   * No runtime CPU detection. The miner can take advantage of some instructions specific to ARMv5E and later processors, but the decision whether to use them is made at compile time, based on compiler-defined macros.
   * To use NEON instructions, add `"-mfpu=neon"` to CFLAGS.
 * x86:
   * The miner checks for SSE2 instructions support at runtime, and uses them if they are available.
 * x86-64:	
   * The miner can take advantage of AVX, AVX2 and XOP instructions, but only if both the CPU and the operating system support them.
     * Linux supports AVX starting from kernel version 2.6.30.
     * FreeBSD supports AVX starting with 9.1-RELEASE.
     * Mac OS X added AVX support in the 10.6.8 update.
     * Windows supports AVX starting from Windows 7 SP1 and Windows Server 2008 R2 SP1.
   * The configure script outputs a warning if the assembler doesn't support some instruction sets. In that case, the miner can still be built, but unavailable optimizations are left off.

Usage instructions
==================
Run "cpuminer --help" to see options.

### Connecting through a proxy

Use the --proxy option.

To use a SOCKS proxy, add a socks4:// or socks5:// prefix to the proxy host  
Protocols socks4a and socks5h, allowing remote name resolving, are also available since libcurl 7.18.0.

If no protocol is specified, the proxy is assumed to be a HTTP proxy.  
When the --proxy option is not used, the program honors the http_proxy and all_proxy environment variables.

Donations
=========
Donations for the work done in this fork are accepted :

Tanner :
* LCC: `CashCFfv8CmdWo6wyMGQWtmQnaToyhgsWr`

Tanguy Pruvot :
* BTC: `1FhDPLPpw18X4srecguG3MxJYe4a1JsZnd`

Lucas Jones :
* MRO: `472haywQKoxFzf7asaQ4XKBc2foAY4ezk8HiN63ifW4iAbJiLnfmJfhHSR9XmVKw2WYPnszJV9MEHj9Z5WMK9VCNHaGLDmJ`
* BTC: `139QWoktddChHsZMWZFxmBva4FM96X2dhE`

Credits
=======
CPUMiner-multi was forked from pooler's CPUMiner, and has been started by Lucas Jones.
* [tpruvot](https://github.com/tpruvot) added all the recent features and newer algorythmns
* [Wolf9466](https://github.com/wolf9466) helped with Intel AES-NI support for CryptoNight
* Tanner from LCC added Minotaur and MinotaurX

License
=======
GPLv2.  See COPYING for details.
