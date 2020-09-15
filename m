Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI4zc-0005fi-QJ
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 07:03:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Sep 2020 09:03:04 +0200
Message-Id: <20200915070305.15763-6-s.hauer@pengutronix.de>
In-Reply-To: <20200915070305.15763-1-s.hauer@pengutronix.de>
References: <20200915070305.15763-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/6] powerpc: Remove unused functions
To: Barebox List <barebox@lists.infradead.org>

Some functions are unused in the code base and do not have a prototype
in any header file. Remove them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/powerpc/mach-mpc5xxx/cpu.c      | 24 -------------------
 arch/powerpc/mach-mpc5xxx/traps.c    | 22 -----------------
 arch/powerpc/mach-mpc85xx/fsl_gpio.c | 35 ----------------------------
 arch/powerpc/mach-mpc85xx/speed.c    |  9 -------
 4 files changed, 90 deletions(-)

diff --git a/arch/powerpc/mach-mpc5xxx/cpu.c b/arch/powerpc/mach-mpc5xxx/cpu.c
index a85e1667bc..d8d4dfb2ce 100644
--- a/arch/powerpc/mach-mpc5xxx/cpu.c
+++ b/arch/powerpc/mach-mpc5xxx/cpu.c
@@ -33,30 +33,6 @@
 #include <asm-generic/memory_layout.h>
 #include <memory.h>
 
-int checkcpu (void)
-{
-	ulong clock = get_cpu_clock();
-	uint svr, pvr;
-
-	puts ("CPU:   ");
-
-	svr = get_svr();
-	pvr = get_pvr();
-	switch (SVR_VER (svr)) {
-	case SVR_MPC5200:
-		printf ("MPC5200");
-		break;
-	default:
-		printf ("MPC52??  (SVR %08x)", svr);
-		break;
-	}
-
-	printf (" v%d.%d, Core v%d.%d", SVR_MJREV (svr), SVR_MNREV (svr),
-		PVR_MAJ(pvr), PVR_MIN(pvr));
-	printf (" at %ld Hz\n", clock);
-	return 0;
-}
-
 /* ------------------------------------------------------------------------- */
 
 static int mpc5xxx_reserve_region(void)
diff --git a/arch/powerpc/mach-mpc5xxx/traps.c b/arch/powerpc/mach-mpc5xxx/traps.c
index b3cb5f8318..e93b5d6d75 100644
--- a/arch/powerpc/mach-mpc5xxx/traps.c
+++ b/arch/powerpc/mach-mpc5xxx/traps.c
@@ -168,19 +168,6 @@ ProgramCheckException(struct pt_regs *regs)
 	panic("Program Check Exception");
 }
 
-void
-SoftEmuException(struct pt_regs *regs)
-{
-#ifdef CONFIG_KGDB
-	if (debugger_exception_handler && (*debugger_exception_handler)(regs))
-		return;
-#endif
-	show_regs(regs);
-	print_backtrace((unsigned long *)regs->gpr[1]);
-	panic("Software Emulation Exception");
-}
-
-
 void
 UnknownException(struct pt_regs *regs)
 {
@@ -207,12 +194,3 @@ DebugException(struct pt_regs *regs)
   do_bedbug_breakpoint( regs );
 #endif
 }
-
-/* Probe an address by reading.  If not present, return -1, otherwise
- * return 0.
- */
-int
-addr_probe(uint *addr)
-{
-	return 0;
-}
diff --git a/arch/powerpc/mach-mpc85xx/fsl_gpio.c b/arch/powerpc/mach-mpc85xx/fsl_gpio.c
index 468c780ff8..85994dcf1b 100644
--- a/arch/powerpc/mach-mpc85xx/fsl_gpio.c
+++ b/arch/powerpc/mach-mpc85xx/fsl_gpio.c
@@ -28,39 +28,4 @@ void fsl_enable_gpiout(void)
 
 	out_be32(gpiocr, in_be32(gpiocr) | MPC85xx_GPIOCR_GPOUT);
 }
-
-void gpio_set_value(unsigned gpio, int val)
-{
-	void __iomem *gpout = IOMEM(MPC85xx_GUTS_ADDR + MPC85xx_GPOUTDR_OFFSET);
-	int gpoutdr;
-
-	if (gpio >= 8)
-		return;
-
-	gpoutdr = in_be32(gpout);
-	if (val)
-		gpoutdr |= MPC85xx_GPIOBIT(gpio);
-	else
-		gpoutdr &= ~MPC85xx_GPIOBIT(gpio);
-	out_be32(gpout, gpoutdr);
-}
-#else
-int gpio_direction_output(unsigned gpio, int val)
-{
-	void __iomem *gpior = IOMEM(MPC85xx_GPIO_ADDR);
-
-	if (gpio >= 16)
-		return -EINVAL;
-
-	if (val)
-		setbits_be32(gpior + MPC85xx_GPIO_GPDAT_OFFSET,
-				1 << (32 - gpio));
-	else
-		clrbits_be32(gpior + MPC85xx_GPIO_GPDAT_OFFSET,
-				1 << (32 - gpio));
-
-	setbits_be32(gpior + MPC85xx_GPIO_GPDIR_OFFSET, 1 << (32 - gpio));
-
-	return 0;
-}
 #endif
diff --git a/arch/powerpc/mach-mpc85xx/speed.c b/arch/powerpc/mach-mpc85xx/speed.c
index 7f3cfc4dcd..16ce72d846 100644
--- a/arch/powerpc/mach-mpc85xx/speed.c
+++ b/arch/powerpc/mach-mpc85xx/speed.c
@@ -85,15 +85,6 @@ void fsl_get_sys_info(struct sys_info *sysInfo)
 	}
 }
 
-unsigned long fsl_get_local_freq(void)
-{
-	struct sys_info sys_info;
-
-	fsl_get_sys_info(&sys_info);
-
-	return sys_info.freqLocalBus;
-}
-
 unsigned long fsl_get_bus_freq(ulong dummy)
 {
 	struct sys_info sys_info;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
