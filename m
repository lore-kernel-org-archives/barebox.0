Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NVhBM-0001hN-5O
	for barebox@lists.infradead.org; Fri, 15 Jan 2010 08:05:25 +0000
Date: Fri, 15 Jan 2010 09:05:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100115080515.GG23110@pengutronix.de>
References: <31940835.15183.1263495759571.JavaMail.root@vms064.mailsrvcs.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <31940835.15183.1263495759571.JavaMail.root@vms064.mailsrvcs.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: compiling barebox/u-boot-v2 for beagleboard
To: pgmspam20101@verizon.net
Cc: barebox@lists.infradead.org

Hello,

On Thu, Jan 14, 2010 at 01:02:39PM -0600, pgmspam20101@verizon.net wrote:
> Hello,
>  
> I am trying to do the next stage of my build: i.e. building xloader(u-boot-v2)
> that I can load over USB using Nishant Menon's utilities (pusb).
>  
> I went and downloaded the beagleboard version of uboot-v2 from:
>               http://www.pengutronix.de/software/u-boot/v2/download/

Please get the newer version here (or directly from git):
http://barebox.org/download/barebox-2009.12.0.tar.bz2

> 
> [pgmutasi@ u-boot-2.0.0-rc10]$ make -f Makefile ARCH=arm CROSS_COMPILE=/opt/
> WindRiver/wrlinux-3.0/layers/wrll-toolchain-4.3-85/arm/toolchain/x86-linux2/bin
> /arm-wrs-linux-gnueabi-
> scripts/kconfig/conf -s arch/arm/Kconfig
>   SYMLINK include/asm-arm/arch -> include/asm-arm/arch-omap
>   SYMLINK include/asm-arm/proc -> include/asm-arm/proc-armv
>   CHK     include/linux/version.h
>   UPD     include/linux/version.h
>   CHK     include/linux/utsrelease.h
>   UPD     include/linux/utsrelease.h
>   SYMLINK include/asm -> include/asm-arm
>   SYMLINK include/config.h -> board/omap/config.h
>   CC      scripts/mod/empty.o
> scripts/mod/empty.c:1: error: bad value (armv7a) for -march= switch
> make[2]: *** [scripts/mod/empty.o] Error 1
> make[1]: *** [scripts/mod] Error 2
> make: *** [scripts] Error 2

It seems you compiler is too old. I get the same error with our
gcc-4.1.2 based toolchain, but I do not with a gcc-4.3.2 based
toolchain.

As an alternative you might wan't to use the following patch (untested):


From dc8d5391eec8d0e05d72ef1390b73f0a6639ff05 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Jan 2010 09:01:34 +0100
Subject: [PATCH] armv7: use -march=armv6 to compile v7 code

-march=armv7-a is available only in in newer gccs (>=4.3.2?)
To make this work use 'mcr     p15, 0, r10, c7, c5, 4' instead
of isb as seen in the kernel head.S

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile        |    2 +-
 arch/arm/cpu/start-arm.S |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index ede2085..ab241dc 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -19,7 +19,7 @@ comma = ,
 # Note that GCC does not numerically define an architecture version
 # macro, but instead defines a whole series of macros which makes
 # testing for a specific architecture or later rather impossible.
-arch-$(CONFIG_CPU_32v7)		:=-D__LINUX_ARM_ARCH__=7 $(call cc-option,-march=armv7-a,-march=armv5t -Wa$(comma)-march=armv7-a)
+arch-$(CONFIG_CPU_32v7)		:=-D__LINUX_ARM_ARCH__=7 $(call cc-option,-march=armv7-a,-march=armv6)
 arch-$(CONFIG_CPU_32v5)		:=-D__LINUX_ARM_ARCH__=5 $(call cc-option,-march=armv5te,-march=armv4t)
 arch-$(CONFIG_CPU_32v4T)	:=-D__LINUX_ARM_ARCH__=4 -march=armv4t
 
diff --git a/arch/arm/cpu/start-arm.S b/arch/arm/cpu/start-arm.S
index a30b281..6858dbc 100644
--- a/arch/arm/cpu/start-arm.S
+++ b/arch/arm/cpu/start-arm.S
@@ -152,7 +152,7 @@ inval_loop1:
 	cmp	r1, #2			/* see what cache we have at this level */
 	blt	skip_inval		/* skip if no cache, or just i-cache */
 	mcr	p15, 2, r10, c0, c0, 0	/* select current cache level in cssr */
-	isb				/* isb to sych the new cssr&csidr */
+	mcr     p15, 0, r10, c7, c5, 4	/* isb to sych the new cssr&csidr */
 	mrc	p15, 1, r1, c0, c0, 0	/* read the new csidr */
 	and	r2, r1, #7		/* extract the length of the cache lines */
 	add	r2, r2, #4		/* add 4 (line length offset) */
@@ -178,7 +178,7 @@ skip_inval:
 finished_inval:
 	mov	r10, #0			/* swith back to cache level 0 */
 	mcr	p15, 2, r10, c0, c0, 0	/* select current cache level in cssr */
-	isb
+	mcr     p15, 0, r10, c7, c5, 4  /* isb */
 #endif /* CONFIG_CPU_V7_DCACHE_SKIP */
 
 #else
-- 
1.6.6


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
