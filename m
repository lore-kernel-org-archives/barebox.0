Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8T1o-0001me-Cv
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 08:28:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Sep 2011 10:28:16 +0200
Message-Id: <1317112109-23311-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1317112109-23311-1-git-send-email-s.hauer@pengutronix.de>
References: <1317112109-23311-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/14] ppc: remove mgt5100 support from code
To: barebox@lists.infradead.org

This has never been used in barebox and likely is incomplete
and bitrotted over time, so remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/cpu.c      |    7 -------
 arch/ppc/mach-mpc5xxx/cpu_init.c |   13 +------------
 arch/ppc/mach-mpc5xxx/start.S    |    9 +--------
 3 files changed, 2 insertions(+), 27 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index be7c19d..391c705 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -41,16 +41,10 @@
 int checkcpu (void)
 {
 	ulong clock = get_cpu_clock();
-#ifndef CONFIG_MGT5100
 	uint svr, pvr;
-#endif
 
 	puts ("CPU:   ");
 
-#ifdef CONFIG_MGT5100
-	puts   (CPU_ID_STR);
-	printf (" (JTAG ID %08lx)", *(vu_long *)MPC5XXX_CDM_JTAGID);
-#else
 	svr = get_svr();
 	pvr = get_pvr();
 	switch (SVR_VER (svr)) {
@@ -64,7 +58,6 @@ int checkcpu (void)
 
 	printf (" v%d.%d, Core v%d.%d", SVR_MJREV (svr), SVR_MNREV (svr),
 		PVR_MAJ(pvr), PVR_MIN(pvr));
-#endif
 	printf (" at %ld Hz\n", clock);
 	return 0;
 }
diff --git a/arch/ppc/mach-mpc5xxx/cpu_init.c b/arch/ppc/mach-mpc5xxx/cpu_init.c
index fc5db0e..24edc48 100644
--- a/arch/ppc/mach-mpc5xxx/cpu_init.c
+++ b/arch/ppc/mach-mpc5xxx/cpu_init.c
@@ -36,10 +36,6 @@ int cpu_init(void)
 {
 	unsigned long addecr = (1 << 25); /* Boot_CS */
 
-#if defined(CFG_RAMBOOT) && defined(CONFIG_MGT5100)
-	addecr |= (1 << 22); /* SDRAM enable */
-#endif
-
 	/*
 	 * Memory Controller: configure chip selects and enable them
 	 */
@@ -107,7 +103,6 @@ int cpu_init(void)
 	*(vu_long *)MPC5XXX_CS5_CFG = CFG_CS5_CFG;
 #endif
 
-#if defined(CONFIG_MPC5200)
 	addecr |= 1;
 #if defined(CFG_CS6_START) && defined(CFG_CS6_SIZE)
 	*(vu_long *)MPC5XXX_CS6_START = START_REG(CFG_CS6_START);
@@ -133,7 +128,6 @@ int cpu_init(void)
 #if defined(CFG_CS_DEADCYCLE)
 	*(vu_long *)MPC5XXX_CS_DEADCYCLE = CFG_CS_DEADCYCLE;
 #endif
-#endif /* CONFIG_MPC5200 */
 
 	/* Enable chip selects */
 	*(vu_long *)MPC5XXX_ADDECR = addecr;
@@ -144,7 +138,6 @@ int cpu_init(void)
 	*(vu_long *)MPC5XXX_GPS_PORT_CONFIG = CFG_GPS_PORT_CONFIG;
 #endif
 
-#if defined(CONFIG_MPC5200)
 	/* enable timebase */
 	*(vu_long *)(MPC5XXX_XLBARB + 0x40) |= (1 << 13);
 
@@ -175,14 +168,10 @@ int cpu_init(void)
 	/* Enable piplining */
 	*(vu_long *)(MPC5XXX_XLBARB + 0x40) &= ~(1 << 31);
 # endif
-#endif	/* CONFIG_MPC5200 */
 
 	/* mask all interrupts */
-#if defined(CONFIG_MGT5100)
-	*(vu_long *)MPC5XXX_ICTL_PER_MASK = 0xfffffc00;
-#elif defined(CONFIG_MPC5200)
 	*(vu_long *)MPC5XXX_ICTL_PER_MASK = 0xffffff00;
-#endif
+
 	*(vu_long *)MPC5XXX_ICTL_CRIT |= 0x0001ffff;
 	*(vu_long *)MPC5XXX_ICTL_EXT &= ~0x00000f00;
 	/* route critical ints to normal ints */
diff --git a/arch/ppc/mach-mpc5xxx/start.S b/arch/ppc/mach-mpc5xxx/start.S
index 8fca31b..3ba7208 100644
--- a/arch/ppc/mach-mpc5xxx/start.S
+++ b/arch/ppc/mach-mpc5xxx/start.S
@@ -91,9 +91,6 @@ boot_warm:
 # if defined(CFG_RAMBOOT)
 #  error CFG_LOWBOOT is incompatible with CFG_RAMBOOT
 # endif /* CFG_RAMBOOT */
-# if defined(CONFIG_MGT5100)
-#  error CFG_LOWBOOT is incompatible with MGT5100
-# endif /* CONFIG_MGT5100 */
 	lis	r4, CFG_DEFAULT_MBAR@h
 	lis	r3,	START_REG(CFG_BOOTCS_START)@h
 	ori	r3, r3, START_REG(CFG_BOOTCS_START)@l
@@ -125,14 +122,10 @@ lowboot_reentry:
 #if defined(CFG_DEFAULT_MBAR) && !defined(CFG_RAMBOOT)
 	lis	r3, CFG_MBAR@h
 	ori	r3, r3, CFG_MBAR@l
-#if defined(CONFIG_MPC5200)
 	/* MBAR is mirrored into the MBAR SPR */
 	mtspr	MBAR,r3
 	rlwinm	r3, r3, 16, 16, 31
-#endif
-#if defined(CONFIG_MGT5100)
-	rlwinm	r3, r3, 17, 15, 31
-#endif
+
 	lis	r4, CFG_DEFAULT_MBAR@h
 	stw	r3, 0(r4)
 #endif /* CFG_DEFAULT_MBAR */
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
