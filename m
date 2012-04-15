Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJQtE-0007ao-Si
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 14:57:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 16:57:13 +0200
Message-Id: <1334501834-32001-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334501834-32001-1-git-send-email-s.hauer@pengutronix.de>
References: <1334501834-32001-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] ppc: remove unused init_board_data function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/include/asm/common.h |    3 ---
 arch/ppc/lib/Makefile         |    1 -
 arch/ppc/lib/board_data.c     |   49 -----------------------------------------
 arch/ppc/mach-mpc5xxx/cpu.c   |   10 ---------
 4 files changed, 63 deletions(-)
 delete mode 100644 arch/ppc/lib/board_data.c

diff --git a/arch/ppc/include/asm/common.h b/arch/ppc/include/asm/common.h
index b7c524a..b375d07 100644
--- a/arch/ppc/include/asm/common.h
+++ b/arch/ppc/include/asm/common.h
@@ -14,9 +14,6 @@ uint	get_svr	      (void);
 
 void	trap_init     (ulong);
 
-int cpu_init_board_data(bd_t *bd);
-int init_board_data(bd_t *bd);
-
 static inline unsigned long get_pc(void)
 {
 	unsigned long pc;
diff --git a/arch/ppc/lib/Makefile b/arch/ppc/lib/Makefile
index b611ddf..9e389b7 100644
--- a/arch/ppc/lib/Makefile
+++ b/arch/ppc/lib/Makefile
@@ -7,7 +7,6 @@ obj-y += ticks.o
 obj-y += time.o
 obj-y += misc.o
 obj-$(CONFIG_CMD_BOOTM) += ppclinux.o
-obj-y += board_data.o
 obj-$(CONFIG_MODULES) += module.o
 obj-y += crtsavres.o
 
diff --git a/arch/ppc/lib/board_data.c b/arch/ppc/lib/board_data.c
deleted file mode 100644
index ff9f0d0..0000000
--- a/arch/ppc/lib/board_data.c
+++ /dev/null
@@ -1,49 +0,0 @@
-#include <common.h>
-
-int init_board_data(bd_t *bd)
-{
-	cpu_init_board_data(bd);
-
-	bd->bi_memstart  = 0;	/* start of  DRAM memory	*/
-//	bd->bi_memsize   = gd->ram_size;	/* size  of  DRAM memory in bytes */ /* FIXME */
-
-#ifdef CONFIG_IP860
-	bd->bi_sramstart = SRAM_BASE;	/* start of  SRAM memory	*/
-	bd->bi_sramsize  = SRAM_SIZE;	/* size  of  SRAM memory	*/
-#else
-	bd->bi_sramstart = 0;		/* FIXME */ /* start of  SRAM memory	*/
-	bd->bi_sramsize  = 0;		/* FIXME */ /* size  of  SRAM memory	*/
-#endif
-
-#if defined(CONFIG_8xx) || defined(CONFIG_8260) || defined(CONFIG_5xx) || \
-    defined(CONFIG_E500) || defined(CONFIG_MPC86xx)
-	bd->bi_immr_base = CFG_IMMR;	/* base  of IMMR register     */
-#endif
-
-#ifdef CONFIG_LYNXOS
-	bd->bi_bootflags = bootflag;	/* boot / reboot flag (for LynxOS)    */
-#endif
-
-#if defined(CONFIG_CPM2)
-	bd->bi_cpmfreq = gd->cpm_clk;
-	bd->bi_brgfreq = gd->brg_clk;
-	bd->bi_sccfreq = gd->scc_clk;
-	bd->bi_vco     = gd->vco_out;
-#endif /* CONFIG_CPM2 */
-//	bd->bi_baudrate = gd->baudrate;	/* Console Baudrate     */
-
-#ifdef CFG_EXTBDINFO
-	strncpy ((char *)bd->bi_s_version, "1.2", sizeof (bd->bi_s_version));
-	strncpy ((char *)bd->bi_r_version, BAREBOX_VERSION, sizeof (bd->bi_r_version));
-
-	bd->bi_procfreq = gd->cpu_clk;	/* Processor Speed, In Hz */
-	bd->bi_plb_busfreq = gd->bus_clk;
-#if defined(CONFIG_405GP) || defined(CONFIG_405EP) || defined(CONFIG_440EP) || defined(CONFIG_440GR)
-	bd->bi_pci_busfreq = get_PCI_freq ();
-	bd->bi_opbfreq = get_OPB_freq ();
-#elif defined(CONFIG_XILINX_ML300)
-	bd->bi_pci_busfreq = get_PCI_freq ();
-#endif
-#endif
-	return 0;
-}
diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index 62ddb1f..579c73b 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -102,16 +102,6 @@ static int of_register_mpc5200_fixup(void)
 late_initcall(of_register_mpc5200_fixup);
 #endif
 
-int cpu_init_board_data(bd_t *bd)
-{
-	bd->bi_intfreq = get_cpu_clock();	/* Internal Freq, in Hz */
-	bd->bi_busfreq = get_bus_clock();	/* Bus Freq,      in Hz */
-	bd->bi_mbar_base = CFG_MBAR;		/* base of internal registers */
-	bd->bi_ipbfreq = get_ipb_clock();
-	bd->bi_pcifreq = get_pci_clock();
-	return 0;
-}
-
 unsigned long mpc5200_get_sdram_size(unsigned int cs)
 {
 	unsigned long size;
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
