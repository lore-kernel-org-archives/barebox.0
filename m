Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8T1o-0001n1-Dn
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 08:28:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Sep 2011 10:28:29 +0200
Message-Id: <1317112109-23311-15-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/14] pcm030: cleanup config.h
To: barebox@lists.infradead.org

Remove several now unnecessary defines.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/boards/pcm030/config.h |   66 +-------------------------------------
 1 files changed, 2 insertions(+), 64 deletions(-)

diff --git a/arch/ppc/boards/pcm030/config.h b/arch/ppc/boards/pcm030/config.h
index a772ee6..e8064d2 100644
--- a/arch/ppc/boards/pcm030/config.h
+++ b/arch/ppc/boards/pcm030/config.h
@@ -29,80 +29,18 @@
 
 #include <mach/mpc5xxx.h>
 
-/* #define DEBUG */
-
-/*------------------------------------------------------------------------------------------------------------------------------------------------------
-High Level Configuration Options
-(easy to change)
- ------------------------------------------------------------------------------------------------------------------------------------------------------*/
-#define CONFIG_MPC5200_DDR	1	/* (with DDR-SDRAM) */
 #define CFG_MPC5XXX_CLKIN	33333333 /* ... running at 33.333333MHz */
-#define BOOTFLAG_COLD		0x01	/* Normal Power-On: Boot from FLASH  */
-#define BOOTFLAG_WARM		0x02	/* Software reboot	     */
-
-/*------------------------------------------------------------------------------------------------------------------------------------------------------
-Serial console configuration
- ------------------------------------------------------------------------------------------------------------------------------------------------------*/
-
-#if (TEXT_BASE == 0xFF000000)		/* Boot low */
-#define CFG_LOWBOOT		1
-#endif
-/* RAMBOOT will be defined automatically in memory section */
-
-/*------------------------------------------------------------------------------------------------------------------------------------------------------
-IPB Bus clocking configuration.
- ------------------------------------------------------------------------------------------------------------------------------------------------------*/
-#define  CFG_IPBSPEED_133		/* define for 133MHz speed */
-#if defined(CFG_IPBSPEED_133)
-/*
- * PCI Bus clocking configuration
- *
- * Actually a PCI Clock of 66 MHz is only set (in cpu_init.c) if
- * CFG_IPBSPEED_133 is defined. This is because a PCI Clock of 66 MHz yet hasn't
- * been tested with a IPB Bus Clock of 66 MHz.
- */
-#define CFG_PCISPEED_66		/* define for 66MHz speed */
-#else
-#undef CFG_PCISPEED_66			/* for 33MHz speed */
-#endif
 
-/* we only use CS-Boot */
-#define CFG_BOOTCS_START	0xFF000000
-#define CFG_BOOTCS_SIZE		0x01000000
-
-#if CONFIG_MACH_PHYCORE_MPC5200B_TINY_REV == 1
-#define CFG_BOOTCS_CFG		0x0008FD00
-#else
-#define CFG_BOOTCS_CFG		0x00083800
-#endif
-
-/*------------------------------------------------------------------------------------------------------------------------------------------------------
-  Memory map
- ------------------------------------------------------------------------------------------------------------------------------------------------------*/
-#define CFG_MBAR		0xF0000000 /* MBAR hast to be switched by other bootloader or debugger config  */
-#define CFG_SDRAM_BASE		0x00000000
-
-/* Use SRAM until RAM will be available */
-#define CFG_INIT_RAM_ADDR	MPC5XXX_SRAM
-#define CFG_INIT_RAM_SIZE	MPC5XXX_SRAM_SIZE	/* End of used area in DPRAM */
-#define CONFIG_EARLY_INITDATA_SIZE 0x100
-
-#define CFG_BOOTMAPSZ		(8 << 20)	/* Initial Memory map for Linux */
-
-/*------------------------------------------------------------------------------------------------------------------------------------------------------
- GPIO configuration
- ------------------------------------------------------------------------------------------------------------------------------------------------------*/
 #define CFG_GPS_PORT_CONFIG	0x00558c10 /* PSC6=UART, PSC3=UART ; Ether=100MBit with MD */
 
-/*------------------------------------------------------------------------------------------------------------------------------------------------------
- Various low-level settings
- ------------------------------------------------------------------------------------------------------------------------------------------------------*/
 #define CFG_HID0_INIT		HID0_ICE | HID0_ICFI
 #define CFG_HID0_FINAL		HID0_ICE
 
 #define CFG_CS_BURST		0x00000000
 #define CFG_CS_DEADCYCLE	0x33333333
 
+#define CFG_BOOTMAPSZ		(8 << 20) /* Initial Memory map for Linux */
+
 #define OF_CPU			"PowerPC,5200@0"
 #define OF_TBCLK		CFG_MPC5XXX_CLKIN
 #define OF_SOC                  "soc5200@f0000000"
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
