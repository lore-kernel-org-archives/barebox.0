Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rmje5-0004TM-MW
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 10:18:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2012 11:18:11 +0100
Message-Id: <1326709100-24106-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
References: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] ARM omap3: remove OMAP3_COPY_CLOCK_SRAM
To: barebox@lists.infradead.org

The X-loader startup relocates to SRAM anyway, so there
is no need to be runnable from flash for the clock code.
This config is disabled in all defconfigs anyway, so remove
it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig            |    8 --
 arch/arm/mach-omap/omap3_clock.c      |   89 +------------------
 arch/arm/mach-omap/omap3_clock_core.S |  161 ---------------------------------
 arch/arm/mach-omap/omap3_core.S       |    8 --
 4 files changed, 1 insertions(+), 265 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index c370827..baffdff 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -77,14 +77,6 @@ config OMAP3_CLOCK_CONFIG
 	help
 	  Say Y here if you like to have OMAP3 Clock configuration done.
 
-config OMAP3_COPY_CLOCK_SRAM
-	prompt "SRAM copy of Clock code"
-	bool
-	depends on OMAP3_CLOCK_CONFIG
-	default y
-	help
-	  Say Y here if you like to have initial OMAP3 Clock configuration done from SRAM.
-
 config OMAP_GPMC
 	prompt "Support for GPMC configuration"
 	bool
diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index 412d7b7..391aa40 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -47,10 +47,6 @@
 #include <mach/syslib.h>
 
 /* Following functions are exported from omap3_clock_core.S */
-#ifdef CONFIG_OMAP3_COPY_CLOCK_SRAM
-/* A.K.A go_to_speed */
-static void (*f_lock_pll) (u32, u32, u32, u32);
-#endif
 /* Helper functions */
 static u32 get_osc_clk_speed(void);
 static void get_sys_clkin_sel(u32 osc_clk, u32 *sys_clkin_sel);
@@ -156,9 +152,6 @@ static void get_sys_clkin_sel(u32 osc_clk, u32 *sys_clkin_sel)
 static void init_core_dpll_34x(u32 cpu_rev, u32 clk_sel)
 {
 	struct dpll_param *dp = get_core_dpll_param_34x(cpu_rev);
-#ifdef CONFIG_OMAP3_COPY_CLOCK_SRAM
-	int p0, p1, p2, p3;
-#endif
 
 	dp += clk_sel;
 
@@ -202,46 +195,8 @@ static void init_core_dpll_34x(u32 cpu_rev, u32 clk_sel)
 		sr32(CM_REG(CLKEN_PLL), 0, 3, PLL_LOCK);
 		wait_on_value((0x1 << 0), 1, CM_REG(IDLEST_CKGEN), LDELAY);
 	} else if (running_in_flash()) {
-#ifdef CONFIG_OMAP3_COPY_CLOCK_SRAM
-		f_lock_pll = (void *)(OMAP_SRAM_INTVECT +
-					OMAP_SRAM_INTVECT_COPYSIZE);
-
-		/*
-		 * Jump to small relocated code area in SRAM.
-		 */
-		p0 = readl(CM_REG(CLKEN_PLL));
-		sr32((u32) &p0, 0, 3, PLL_FAST_RELOCK_BYPASS);
-
-		/* FREQSEL (CORE_DPLL_FREQSEL): CM_CLKEN_PLL[4:7] */
-		sr32((u32) &p0, 4, 4, dp->fsel);
-
-		p1 = readl(CM_REG(CLKSEL1_PLL));
-
-		/* M2 (CORE_DPLL_CLKOUT_DIV): CM_CLKSEL1_PLL[27:31] */
-		sr32((u32) &p1, 27, 2, dp->m2);
-
-		/* M (CORE_DPLL_MULT): CM_CLKSEL1_PLL[16:26] */
-		sr32((u32) &p1, 16, 11, dp->m);
-
-		/* N (CORE_DPLL_DIV): CM_CLKSEL1_PLL[8:14] */
-		sr32((u32) &p1, 8, 7, dp->n);
-
-		/* Set source CM_96M_FCLK: CM_CLKSEL1_PLL[6] */
-		sr32((u32) &p1, 6, 1, 0);
-
-		p2 = readl(CM_REG(CLKSEL_CORE));
-		sr32((u32) &p2, 8, 4, CORE_SSI_DIV);
-		sr32((u32) &p2, 4, 2, CORE_FUSB_DIV);
-		sr32((u32) &p2, 2, 2, CORE_L4_DIV);
-		sr32((u32) &p2, 0, 2, CORE_L3_DIV);
-
-		p3 = CM_REG(IDLEST_CKGEN);
-
-		(*f_lock_pll) (p0, p1, p2, p3);
-#else
 		/***Oopps.. Wrong .config!! *****/
 		hang();
-#endif
 	}
 }
 
@@ -370,9 +325,6 @@ static void init_iva_dpll_34x(u32 cpu_rev, u32 clk_sel)
 static void init_core_dpll_36x(u32 cpu_rev, u32 clk_sel)
 {
 	struct dpll_param *dp = get_core_dpll_param_36x(cpu_rev);
-#ifdef CONFIG_OMAP3_COPY_CLOCK_SRAM
-	int p0, p1, p2, p3;
-#endif
 
 	dp += clk_sel;
 
@@ -409,46 +361,8 @@ static void init_core_dpll_36x(u32 cpu_rev, u32 clk_sel)
 		sr32(CM_REG(CLKEN_PLL), 0, 3, PLL_LOCK);
 		wait_on_value((0x1 << 0), 1, CM_REG(IDLEST_CKGEN), LDELAY);
 	} else if (running_in_flash()) {
-#ifdef CONFIG_OMAP3_COPY_CLOCK_SRAM
-		f_lock_pll = (void *)(OMAP_SRAM_INTVECT +
-					OMAP_SRAM_INTVECT_COPYSIZE);
-
-		/*
-		 * Jump to small relocated code area in SRAM.
-		 */
-		p0 = readl(CM_REG(CLKEN_PLL));
-		sr32((u32) &p0, 0, 3, PLL_FAST_RELOCK_BYPASS);
-
-		/* FREQSEL (CORE_DPLL_FREQSEL): CM_CLKEN_PLL[4:7] */
-		sr32((u32) &p0, 4, 4, dp->fsel);
-
-		p1 = readl(CM_REG(CLKSEL1_PLL));
-
-		/* M2 (CORE_DPLL_CLKOUT_DIV): CM_CLKSEL1_PLL[27:31] */
-		sr32((u32) &p1, 27, 5, dp->m2);
-
-		/* M (CORE_DPLL_MULT): CM_CLKSEL1_PLL[16:26] */
-		sr32((u32) &p1, 16, 11, dp->m);
-
-		/* N (CORE_DPLL_DIV): CM_CLKSEL1_PLL[8:14] */
-		sr32((u32) &p1, 8, 7, dp->n);
-
-		/* Set source CM_96M_FCLK: CM_CLKSEL1_PLL[6] */
-		sr32((u32) &p1, 6, 1, 0);
-
-		p2 = readl(CM_REG(CLKSEL_CORE));
-		sr32((u32) &p2, 8, 4, CORE_SSI_DIV);
-		sr32((u32) &p2, 4, 2, CORE_FUSB_DIV);
-		sr32((u32) &p2, 2, 2, CORE_L4_DIV);
-		sr32((u32) &p2, 0, 2, CORE_L3_DIV);
-
-		p3 = CM_REG(IDLEST_CKGEN);
-
-		(*f_lock_pll) (p0, p1, p2, p3);
-#else
 		/***Oopps.. Wrong .config!! *****/
 		hang();
-#endif
 	}
 }
 
@@ -557,8 +471,7 @@ static void init_iva_dpll_36x(u32 cpu_rev, u32 clk_sel)
 /**
  * @brief Inits clocks for PRCM
  *
- * This is called from SRAM, or Flash (using temp SRAM stack).
- * if CONFIG_OMAP3_COPY_CLOCK_SRAM is defined, @ref go_to_speed
+ * This is called from SRAM
  *
  * @return void
  */
diff --git a/arch/arm/mach-omap/omap3_clock_core.S b/arch/arm/mach-omap/omap3_clock_core.S
index c8d04bb..b31ed80 100644
--- a/arch/arm/mach-omap/omap3_clock_core.S
+++ b/arch/arm/mach-omap/omap3_clock_core.S
@@ -41,167 +41,6 @@
 #include <mach/clocks.h>
 #include <mach/gpmc.h>
 
-#ifdef CONFIG_OMAP3_COPY_CLOCK_SRAM
-/**
- * @fn void cpy_clk_code(u32 R1)
- *
- * @brief cpy_clk_code: relocates clock code into SRAM where its safer to
- * execute
- *
- * @param[in] R1 = SRAM destination address.
- *
- * @return void
- */
-.global cpy_clk_code
- cpy_clk_code:
-        /* Copy DPLL code into SRAM */
-        adr     r0, go_to_speed         /* get addr of clock setting code */
-        mov     r2, #384                /* r2 size to copy (div by 32 bytes) */
-        mov     r1, r1                  /* r1 <- dest address (passed in) */
-        add     r2, r2, r0              /* r2 <- source end address */
-next2:
-        ldmia   r0!, {r3-r10}           /* copy from source address [r0]    */
-        stmia   r1!, {r3-r10}           /* copy to   target address [r1]    */
-        cmp     r0, r2                  /* until source end address [r2]    */
-        bne     next2
-	mov	pc, lr                  /* back to caller */
-
-/**
- * @fn void go_to_speed(u32 R0, u32 R1, u32 R3)
- *
- * @brief go_to_speed: Function which configures the clocks
- *  Moves to bypass, -Commits clock dividers, -puts dpll at speed
- *               -executed from SRAM.
- * @warning Note: If core unlocks/relocks and SDRAM is running fast already
- *        it gets confused.  A reset of the controller gets it back. Taking
- *        away its L3 when its not in self refresh seems bad for it.
- *        Normally, this code runs from flash before SDR is init so that
- *        should be ok.
- *
- * @param[in] R1 = SRAM destination address.
- * @param[in] R0 = CM_CLKEN_PLL-bypass value
- * @param[in] R1 = CM_CLKSEL1_PLL-m, n, and divider values
- * @param[in] R2 = CM_CLKSEL_CORE-divider values
- * @param[in] R3 = CM_IDLEST_CKGEN - addr dpll lock wait
- *
- * @return void
- */
-.global go_to_speed
- go_to_speed:
-        stmfd sp!, {r4-r6}
-
-        /* move into fast relock bypass */
-        ldr     r4, pll_ctl_add
-        str     r0, [r4]
-wait1:
-        ldr     r5, [r3]       /* get status */
-        and     r5, r5, #0x1   /* isolate core status */
-        cmp     r5, #0x1       /* still locked? */
-        beq     wait1          /* if lock, loop */
-
-	/* set new dpll dividers _after_ in bypass */
-	ldr     r5, pll_div_add1
-        str     r1, [r5]          /* set m, n, m2 */
-        ldr     r5, pll_div_add2
-        str     r2, [r5]          /* set l3/l4/.. dividers*/
-        ldr     r5, pll_div_add3  /* wkup */
-        ldr     r2, pll_div_val3  /* rsm val */
-        str     r2, [r5]
-        ldr     r5, pll_div_add4  /* gfx */
-        ldr     r2, pll_div_val4
-        str     r2, [r5]
-        ldr     r5, pll_div_add5  /* emu */
-        ldr     r2, pll_div_val5
-        str     r2, [r5]
-
-#if 0
-        /* FIXME: now prepare GPMC (flash) for new dpll speed
-	 * For NOR/NAND/OneNAND boot ->make this as Kconfig?
-	 */
-	/* flash needs to be stable when we jump back to it */
-        ldr     r6, flash_cfg_offset
-        ldr     r5, flash_cfg_addr /* CFG1 */
-        ldr     r2, flash_cfg1_val
-        str     r2, [r5]
-        add	r5, r5, r6 /* CFG2 */
-        ldr     r2, flash_cfg2_val
-        str     r2, [r5]
-        add	r5, r5, r6 /* CFG3 */
-        ldr     r2, flash_cfg3_val
-        str     r2, [r5]
-        add	r5, r5, r6 /* CFG4 */
-        ldr     r2, flash_cfg4_val
-        str     r2, [r5]
-        add	r5, r5, r6 /* CFG5 */
-        ldr     r2, flash_cfg5_val
-        str     r2, [r5]
-        add	r5, r5, r6 /* CFG6 */
-        ldr     r2, flash_cfg6_val
-        str     r2, [r5]
-#endif /* Debug */
-
-        /* lock DPLL3 and wait a bit */
-        orr     r0, r0, #0x7   /* set up for lock mode */
-        str     r0, [r4]       /* lock */
-        nop                    /* ARM slow at this point working at sys_clk */
-        nop
-        nop
-        nop
-wait2:
-        ldr     r5, [r3]       /* get status */
-        and     r5, r5, #0x1   /* isolate core status */
-        cmp     r5, #0x1       /* still locked? */
-        bne     wait2          /* if lock, loop */
-        nop
-        nop
-        nop
-        nop
-        ldmfd sp!, {r4-r6}
-        mov     pc, lr           /* back to caller, locked */
-
-_go_to_speed: .word go_to_speed
-
-/* these constants need to be close for PIC code */
-/* FIXME: The Nor has to be in the Flash Base CS0 for this condition to happen*/
-#if 0
-flash_cfg_addr:
-    .word GPMC_REG(CONFIG1_0)
-flash_cfg_offset:
-    .word GPMC_REG(CONFIG2_0) - GPMC_REG(CONFIG1_0)
-flash_cfg1_val:
-    .word  CONFIG_VALUE_GPMC_CONFIG1
-flash_cfg2_val:
-    .word  CONFIG_VALUE_GPMC_CONFIG2
-flash_cfg3_val:
-    .word  CONFIG_VALUE_GPMC_CONFIG3
-flash_cfg4_val:
-    .word  CONFIG_VALUE_GPMC_CONFIG4
-flash_cfg5_val:
-    .word  CONFIG_VALUE_GPMC_CONFIG5
-flash_cfg6_val:
-    .word  CONFIG_VALUE_GPMC_CONFIG6
-#endif
-pll_ctl_add:
-    .word CM_CLKEN_PLL
-pll_div_add1:
-    .word CM_CLKSEL1_PLL
-pll_div_add2:
-    .word CM_CLKSEL_CORE
-pll_div_add3:
-    .word CM_CLKSEL_WKUP
-pll_div_val3:
-    .word (WKUP_RSM << 1)
-pll_div_add4:
-    .word CM_CLKSEL_GFX
-pll_div_val4:
-    .word GFX_DIV_34X
-pll_div_add5:
-    .word CM_CLKSEL1_EMU
-pll_div_val5:
-    .word CLSEL1_EMU_VAL
-
-#endif /* OMAP3_CLOCK_COPY_SRAM */
-
 	/* the literal pools origin */
 	.ltorg
 
diff --git a/arch/arm/mach-omap/omap3_core.S b/arch/arm/mach-omap/omap3_core.S
index ee4c133..90c4243 100644
--- a/arch/arm/mach-omap/omap3_core.S
+++ b/arch/arm/mach-omap/omap3_core.S
@@ -13,7 +13,6 @@
  * @li Call architecture initialization function a_init
  *
  * arch_init_lowlevel is enabled if CONFIG_ARCH_HAS_LOWLEVEL_INIT is defined
- * cpy_clk_code is called if CONFIG_OMAP3_COPY_CLOCK_SRAM is defined
  */
 /*
  * (C) Copyright 2006-2008
@@ -61,13 +60,6 @@ next:
 	cmp	r0, r2			/* until source end address [r2]    */
 	ble	next			/* loop until equal */
 
-#ifdef CONFIG_OMAP3_COPY_CLOCK_SRAM
-	/* No need to copy/exec the clock code - DPLL adjust already done
-	 * in Perip/NAND/oneNAND Boot.
-	 * Put dpll adjust code behind vectors. r1 has address to copy to
-	 */
-	bl	cpy_clk_code
-#endif
 	ldr	r1, SRAM_INTVECT	/* build vect addr */
 	/* Read the interrupt vector base address */
 	mrc p15, #0, r0, c12, c0, #0
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
