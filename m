Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXr9-0006eF-25
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 08:37:00 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1iRXr7-00022e-VD
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 09:36:57 +0100
References: <2c00f789-0630-5dca-d0a6-3aa33b03e1ce@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <8d65f106-9325-5aa9-4e5d-556ecda205ce@pengutronix.de>
Date: Mon, 4 Nov 2019 09:36:57 +0100
MIME-Version: 1.0
In-Reply-To: <2c00f789-0630-5dca-d0a6-3aa33b03e1ce@pengutronix.de>
Content-Type: multipart/mixed; boundary="------------8DA3CB0F947B4B4A8F349FB0"
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [BUG] Padding inserted by linker breaks magicvar linker array
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.
--------------8DA3CB0F947B4B4A8F349FB0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 11/4/19 8:42 AM, Ahmad Fatoum wrote:
> [1]: master at time of writing is 27ee6010 "console_simple: fix linking error when
>      ARCH_HAS_CTRLC enabled". To reproduce the issue I've added a single dummy initcall.
>      I can provide defconfig if requested.

I missed mentioning that I am building for ARCH=x86 compiling as 64-bit EFI
payload with gcc (Debian 8.3.0-6) 8.3.0 Configured with:
../src/configure -v --with-pkgversion='Debian 8.3.0-6'
 --with-bugurl=file:///usr/share/doc/gcc-8/README.Bugs
 --enable-languages=c,ada,c++,go,brig,d,fortran,objc,obj-c++ --prefix=/usr
 --with-gcc-major-version-only --program-suffix=-8
 --program-prefix=x86_64-linux-gnu- --enable-shared --enable-linker-build-id
 --libexecdir=/usr/lib --without-included-gettext --enable-threads=posix
 --libdir=/usr/lib --enable-nls --enable-bootstrap --enable-clocale=gnu
 --enable-libstdcxx-debug --enable-libstdcxx-time=yes
 --with-default-libstdcxx-abi=new --enable-gnu-unique-object
 --disable-vtable-verify --enable-libmpx --enable-plugin --enable-default-pie
 --with-system-zlib --with-target-system-zlib --enable-objc-gc=auto
 --enable-multiarch --disable-werror --with-arch-32=i686 --with-abi=m64
 --with-multilib-list=m32,m64,mx32 --enable-multilib --with-tune=generic
 --enable-offload-targets=nvptx-none --without-cuda-driver
 --enable-checking=release --build=x86_64-linux-gnu --host=x86_64-linux-gnu
 --target=x86_64-linux-gnu

While at it, I attached the defconfig. The magicvar crash is reproducible
after applying this patch:

diff --git a/common/startup.c b/common/startup.c
index c6e119966a0d..42c83d0ccd3c 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -361,6 +361,9 @@ void __noreturn start_barebox(void)
 	}
 }
 
+static int dummy1(void) { return 0; }
+pure_initcall(dummy1);
+
 void __noreturn hang (void)
 {
 	puts ("### ERROR ### Please RESET the board ###\n");


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--------------8DA3CB0F947B4B4A8F349FB0
Content-Type: text/plain; charset=UTF-8;
 name="efi_crash_defconfig"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="efi_crash_defconfig"

Q09ORklHX01NVT15CkNPTkZJR19NQUxMT0NfU0laRT0weDAKQ09ORklHX01BTExPQ19UTFNG
PXkKQ09ORklHX0hVU0hfRkFOQ1lfUFJPTVBUPXkKQ09ORklHX0NNRExJTkVfRURJVElORz15
CkNPTkZJR19BVVRPX0NPTVBMRVRFPXkKQ09ORklHX01FTlU9eQojIENPTkZJR19USU1FU1RB
TVAgaXMgbm90IHNldApDT05GSUdfQk9PVE1fU0hPV19UWVBFPXkKQ09ORklHX0JPT1RNX1ZF
UkJPU0U9eQpDT05GSUdfQk9PVE1fSU5JVFJEPXkKQ09ORklHX0JPT1RNX09GVFJFRT15CkNP
TkZJR19CTFNQRUM9eQpDT05GSUdfQ09OU09MRV9BQ1RJVkFURV9BTEw9eQpDT05GSUdfUEFS
VElUSU9OX0RJU0tfRUZJPXkKIyBDT05GSUdfUEFSVElUSU9OX0RJU0tfRUZJX0dQVF9OT19G
T1JDRSBpcyBub3Qgc2V0CiMgQ09ORklHX1BBUlRJVElPTl9ESVNLX0VGSV9HUFRfQ09NUEFS
RSBpcyBub3Qgc2V0CkNPTkZJR19ERUZBVUxUX0VOVklST05NRU5UX0dFTkVSSUNfTkVXPXkK
Q09ORklHX1BPTExFUj15CkNPTkZJR19TVEFURT15CkNPTkZJR19ERUJVR19MTD15CkNPTkZJ
R19VQlNBTj15CkNPTkZJR19VQlNBTl9OT19BTElHTk1FTlQ9eQpDT05GSUdfQ01EX0RNRVNH
PXkKQ09ORklHX0xPTkdIRUxQPXkKQ09ORklHX0NNRF9JT01FTT15CkNPTkZJR19DTURfTUVN
SU5GTz15CkNPTkZJR19DTURfR089eQpDT05GSUdfQ01EX0xPQURCPXkKQ09ORklHX0NNRF9S
RVNFVD15CkNPTkZJR19DTURfVUlNQUdFPXkKQ09ORklHX0NNRF9QQVJUSVRJT049eQpDT05G
SUdfQ01EX0VYUE9SVD15CkNPTkZJR19DTURfTE9BREVOVj15CkNPTkZJR19DTURfUFJJTlRF
TlY9eQpDT05GSUdfQ01EX01BR0lDVkFSPXkKQ09ORklHX0NNRF9NQUdJQ1ZBUl9IRUxQPXkK
Q09ORklHX0NNRF9TQVZFRU5WPXkKQ09ORklHX0NNRF9GSUxFVFlQRT15CkNPTkZJR19DTURf
TE49eQpDT05GSUdfQ01EX01ENVNVTT15CkNPTkZJR19DTURfVU5DT01QUkVTUz15CkNPTkZJ
R19DTURfTEVUPXkKQ09ORklHX0NNRF9NU0xFRVA9eQpDT05GSUdfQ01EX1JFQURGPXkKQ09O
RklHX0NNRF9TTEVFUD15CkNPTkZJR19DTURfREhDUD15CkNPTkZJR19DTURfUElORz15CkNP
TkZJR19DTURfVEZUUD15CkNPTkZJR19DTURfRUNIT19FPXkKQ09ORklHX0NNRF9FRElUPXkK
Q09ORklHX0NNRF9NRU5VPXkKQ09ORklHX0NNRF9NRU5VVFJFRT15CkNPTkZJR19DTURfUkVB
RExJTkU9eQpDT05GSUdfQ01EX1RJTUVPVVQ9eQpDT05GSUdfQ01EX0NSQz15CkNPTkZJR19D
TURfQ1JDX0NNUD15CkNPTkZJR19DTURfTU09eQpDT05GSUdfQ01EX0RFVEVDVD15CkNPTkZJ
R19DTURfRkxBU0g9eQpDT05GSUdfQ01EX1BPV0VST0ZGPXkKQ09ORklHX0NNRF9XRD15CkNP
TkZJR19DTURfMjA0OD15CkNPTkZJR19DTURfQkFSRUJPWF9VUERBVEU9eQpDT05GSUdfQ01E
X09GX05PREU9eQpDT05GSUdfQ01EX09GX1BST1BFUlRZPXkKQ09ORklHX0NNRF9PRlRSRUU9
eQpDT05GSUdfQ01EX1RJTUU9eQpDT05GSUdfQ01EX1NUQVRFPXkKQ09ORklHX05FVD15CkNP
TkZJR19ORVRfTkZTPXkKQ09ORklHX05FVF9ORVRDT05TT0xFPXkKQ09ORklHX0RSSVZFUl9T
RVJJQUxfRUZJX1NURElPPXkKQ09ORklHX0RSSVZFUl9ORVRfRUZJX1NOUD15CiMgQ09ORklH
X1NQSSBpcyBub3Qgc2V0CkNPTkZJR19ESVNLPXkKQ09ORklHX0ZJTlRFS19TVVBFUklPPXkK
Q09ORklHX1NNU0NfU1VQRVJJTz15CkNPTkZJR19XQVRDSERPRz15CkNPTkZJR19XQVRDSERP
R19FRkk9eQpDT05GSUdfRlNfRVhUND15CkNPTkZJR19GU19URlRQPXkKQ09ORklHX0ZTX05G
Uz15CkNPTkZJR19GU19FRkk9eQpDT05GSUdfRlNfRUZJVkFSRlM9eQpDT05GSUdfRlNfRkFU
PXkKQ09ORklHX0ZTX0ZBVF9XUklURT15CkNPTkZJR19GU19GQVRfTEZOPXkK
--------------8DA3CB0F947B4B4A8F349FB0
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------8DA3CB0F947B4B4A8F349FB0--
