Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rn7uQ-0000SG-UU
 for barebox@lists.infradead.org; Tue, 17 Jan 2012 12:13:08 +0000
Date: Tue, 17 Jan 2012 13:12:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120117121246.GY5446@pengutronix.de>
References: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317FAA5B@DBDE01.ent.ti.com>
 <20120116115228.GR5446@pengutronix.de>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317FAD15@DBDE01.ent.ti.com>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317FAE23@DBDE01.ent.ti.com>
 <20120116154626.GS5446@pengutronix.de>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317FB2B7@DBDE01.ent.ti.com>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317FCED7@DBDE01.ent.ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E28AAFD00EFAA646AE3DF9B89CD24A89317FCED7@DBDE01.ent.ti.com>
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
Subject: Re: [PATCH] omap3 towards thumb2 support
To: "Premi, Sanjeev" <premi@ti.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Jan 17, 2012 at 11:14:31AM +0000, Premi, Sanjeev wrote:
>  
> 
> > -----Original Message-----
> > From: barebox-bounces@lists.infradead.org 
> > [mailto:barebox-bounces@lists.infradead.org] On Behalf Of 
> > Premi, Sanjeev
> > Sent: Monday, January 16, 2012 9:47 PM
> > To: Sascha Hauer
> > Cc: barebox@lists.infradead.org
> > Subject: RE: [PATCH] omap3 towards thumb2 support
> > 
> > (responding via webmail. Won't be able to quote properly)
> > ________________________________________
> > From: Sascha Hauer [s.hauer@pengutronix.de]
> > Sent: Monday, January 16, 2012 9:16 PM
> > To: Premi, Sanjeev
> > Cc: barebox@lists.infradead.org
> > Subject: Re: [PATCH] omap3 towards thumb2 support
> > 
> > On Mon, Jan 16, 2012 at 12:42:36PM +0000, Premi, Sanjeev wrote:
> > >
> > > > -----Original Message-----
> > > > From: barebox-bounces@lists.infradead.org
> > > > [mailto:barebox-bounces@lists.infradead.org] On Behalf Of
> > > > Premi, Sanjeev
> > > > Sent: Monday, January 16, 2012 5:32 PM
> > > > To: Sascha Hauer
> > > > Cc: barebox@lists.infradead.org
> > > > Subject: RE: [PATCH] omap3 towards thumb2 support
> > > >
> > >
> > > [snip]
> > >
> > > > > >
> > > > > > I was able to pull in your branch and encountered a minor
> > > > > > issue - fixed by the patch at end of this mail.
> > > > > >
> > > > > > How can I enable thumb2? Didn't find aything obvious in
> > > > > > omap3530_beagle_xload_defconfig.
> > > > >
> > > > > Did you merge the work/thumb2 branch into your branch? Then
> > > > you should
> > > > > find THUMB2_BAREBOX in menuconfig.
> > > >
> > > > Found it. I was searching in a "cached" version of the 
> > file already
> > > > in my editor. Will try immediately.
> > > >
> > >
> > > I discarded the patches that I had manually merged last week and
> > > pulled work/thumb2 instead.
> > >
> > > The size of MLO dropped from 47604 to 35052 bytes. However, 
> > it didn't
> > > boot successfully on the board. The MLO generated after removing
> > > CONFIG_THUMB2_BAREBOX came up fine.
> > 
> > Please check that CONFIG_STACK_BASE really is 0x4020F000. It 
> > may be set
> > differently if you started from an older config.
> > 
> > [sp} Already did this.
> > 
> > Also, the resulting binary should also be startable as a second stage
> > loader in which case you might get some stack trace if you 
> > have enabled
> > this in the first stage.
> > 
> > [sp] Okay, this could be the issue. I was always building as 
> > first stage
> >      bootloader only - as i was looking for the banner to appear.
> > 
> >      Will try using emulator tomorrow to debug further.
> > 
> > >
> > > BTW, I while merging this patch, I saw a warning that could be fixed
> > > before merging the patch into master.
> > >   8917ac1 : Applying: ARM: move exception vectors away from 
> > start of binary
> > >
> > > /home/premi/barebox/.git/rebase-apply/patch:236: new blank 
> > line at EOF.
> > > +
> > > warning: 1 line adds whitespace errors.
> > 
> > Ok, will fix.
> > 
> > I attached my binary MLO file. Could you check if it works for you? I
> > just checked this binary and it comes up with:
> > 
> > [sp] I will try tomorrow morning.
> 
> Sascha,
>   Your MLO boots fine. But I couldn't make repeat success on either
>   beagle or the omap3evem on my side.
> 
>   Each time there is an exception on entry of setup_auxcr() on both
>   boards. See attached image.
> 
>   I noticed that the size of the generated MLO for beagle were different
>   for us - 35224(yours) vs. 35572(mine).
> 
>   I am building with CodeSourcery 2011.03-41.

Ok, got it. Please replace the setup_auxcr patch with the following one
(I also updated the work/omap3 branch). The problem was the missing
ENDPROC(setup_auxcr) directive which tells the assembler that
setup_auxcr is a function. With this the function is correctly called
with 'blx' instead of 'bl'. 'blx' is needed because setup_auxcr is
compiled in arm mode instead of thumb2 mode. Somehow my toolchain
got that right without ENDPROC but the codesourcery toolchain didn't.
With this patch the binary also works with the codesourcery toolchain.

Sascha

8<----------------------------------------------------

[PATCH] ARM omap3: reimplement setup_auxcr in pure asm

This function consists of only inline asm statements, so
use assembly in the first place. Also makes sure that the
function is compiled in arm mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Makefile        |    2 +-
 arch/arm/mach-omap/auxcr.S         |   17 +++++++++++++++++
 arch/arm/mach-omap/omap3_generic.c |   20 +-------------------
 3 files changed, 19 insertions(+), 20 deletions(-)
 create mode 100644 arch/arm/mach-omap/auxcr.S

diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index b219613..87078ae 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -21,7 +21,7 @@
 #
 obj-$(CONFIG_ARCH_OMAP) += syslib.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
-obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o
+obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o auxcr.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
 obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
diff --git a/arch/arm/mach-omap/auxcr.S b/arch/arm/mach-omap/auxcr.S
new file mode 100644
index 0000000..5cc8a5f
--- /dev/null
+++ b/arch/arm/mach-omap/auxcr.S
@@ -0,0 +1,17 @@
+#include <linux/linkage.h>
+#include <asm/unified.h>
+
+.arm
+ENTRY(setup_auxcr)
+	mov	r12, #0x3
+	mrc	p15, 0, r0, c1, c0, 1
+	orr	r0, r0, #0x10		@ Enable ASA
+	orr	r0, r0, #1 << 5		@ Enable L1NEON
+	.word 0xE1600070		@ SMC
+	mov	r12, #0x2
+	mrc	p15, 1, r0, c9, c0, 2
+	@ Set PLD_FWD bit in L2AUXCR (Cortex-A8 erratum 725233 workaround)
+	orr	r0, r0, #1 << 27
+	.word 0xE1600070		@ SMC
+	bx	lr
+ENDPROC(setup_auxcr)
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 7219e28..fe7363a 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -419,25 +419,7 @@ static void watchdog_init(void)
  *
  * @return void
  */
-static void setup_auxcr(void)
-{
-	unsigned long i;
-	volatile unsigned int j;
-	/* Save r0, r12 and restore them after usage */
-	__asm__ __volatile__("mov %0, r12":"=r"(j));
-	__asm__ __volatile__("mov %0, r0":"=r"(i));
-
-	/* GP Device ROM code API usage here */
-	/* r12 = AUXCR Write function and r0 value */
-	__asm__ __volatile__("mov r12, #0x3");
-	__asm__ __volatile__("mrc p15, 0, r0, c1, c0, 1");
-	/* Enabling ASA */
-	__asm__ __volatile__("orr r0, r0, #0x10");
-	/* SMI instruction to call ROM Code API */
-	__asm__ __volatile__(".word 0xE1600070");
-	__asm__ __volatile__("mov r0, %0":"=r"(i));
-	__asm__ __volatile__("mov r12, %0":"=r"(j));
-}
+void setup_auxcr(void);
 
 /**
  * @brief Try to unlock the SRAM for general use
-- 
1.7.8.3

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
