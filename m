Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqVDm-0004qr-3g
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:23:56 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 07:23:16 +0200
Message-Id: <20200701052340.9462-5-a.fatoum@pengutronix.de>
In-Reply-To: <20200701052340.9462-1-a.fatoum@pengutronix.de>
References: <20200701052340.9462-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 04/28] ARM: at91: migrate at91sam9_ddrsdr.h to use
 at91bootstrap's at91_ddrsdrc.h
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Instead of adding missing definitions to the existing at91sam9_ddrsdr.h
and adapting the incoming DDRAM initialization code from at91bootstrap,
just replace the lightly used existing header with:
https://github.com/linux4sam/at91bootstrap/blob/v3.8.12/include/arch/at91_ddrsdrc.h

For easier comprehension, the replacement is done in three steps:
Here the existing at91sam9_ddrsdr.h has its now duplicate (in function,
not name) macros removed and existing users are migrated to use the new
header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/at91sam9g45_reset.S        |   6 +-
 .../mach-at91/include/mach/at91sam9_ddrsdr.h  | 138 ++----------------
 2 files changed, 12 insertions(+), 132 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9g45_reset.S b/arch/arm/mach-at91/at91sam9g45_reset.S
index 98db15c0b0fc..c3115fd9ca7a 100644
--- a/arch/arm/mach-at91/at91sam9g45_reset.S
+++ b/arch/arm/mach-at91/at91sam9g45_reset.S
@@ -19,13 +19,13 @@
 			.globl	at91sam9g45_reset
 
 at91sam9g45_reset:	mov	r2, #1
-			mov	r3, #AT91_DDRSDRC_LPCB_POWER_DOWN
+			mov	r3, #AT91_DDRC2_LPCB_POWERDOWN
 			ldr	r4, =AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST
 
 			.balign	32				@ align to cache line
 
-			str	r2, [r0, #AT91_DDRSDRC_RTR]	@ disable DDR0 access
-			str	r3, [r0, #AT91_DDRSDRC_LPR]	@ power down DDR0
+			str	r2, [r0, #AT91_HDDRSDRC2_RTR]	@ disable DDR0 access
+			str	r3, [r0, #AT91_HDDRSDRC2_LPR]	@ power down DDR0
 			str	r4, [r1]			@ reset processor
 
 			b	.
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
index 496cf707014e..88ed1fce558f 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
@@ -12,130 +12,10 @@
 #ifndef AT91SAM9_DDRSDR_H
 #define AT91SAM9_DDRSDR_H
 
-#define AT91_DDRSDRC_MR		0x00	/* Mode Register */
-#define		AT91_DDRSDRC_MODE	(0x7 << 0)		/* Command Mode */
-#define			AT91_DDRSDRC_MODE_NORMAL	0
-#define			AT91_DDRSDRC_MODE_NOP		1
-#define			AT91_DDRSDRC_MODE_PRECHARGE	2
-#define			AT91_DDRSDRC_MODE_LMR		3
-#define			AT91_DDRSDRC_MODE_REFRESH	4
-#define			AT91_DDRSDRC_MODE_EXT_LMR	5
-#define			AT91_DDRSDRC_MODE_DEEP		6
-
-#define AT91_DDRSDRC_RTR	0x04	/* Refresh Timer Register */
-#define		AT91_DDRSDRC_COUNT	(0xfff << 0)		/* Refresh Timer Counter */
-
-#define AT91_DDRSDRC_CR		0x08	/* Configuration Register */
-#define		AT91_DDRSDRC_NC		(3 << 0)		/* Number of Column Bits */
-#define			AT91_DDRSDRC_NC_SDR8	(0 << 0)
-#define			AT91_DDRSDRC_NC_SDR9	(1 << 0)
-#define			AT91_DDRSDRC_NC_SDR10	(2 << 0)
-#define			AT91_DDRSDRC_NC_SDR11	(3 << 0)
-#define			AT91_DDRSDRC_NC_DDR9	(0 << 0)
-#define			AT91_DDRSDRC_NC_DDR10	(1 << 0)
-#define			AT91_DDRSDRC_NC_DDR11	(2 << 0)
-#define			AT91_DDRSDRC_NC_DDR12	(3 << 0)
-#define		AT91_DDRSDRC_NR		(3 << 2)		/* Number of Row Bits */
-#define			AT91_DDRSDRC_NR_11	(0 << 2)
-#define			AT91_DDRSDRC_NR_12	(1 << 2)
-#define			AT91_DDRSDRC_NR_13	(2 << 2)
-#define			AT91_DDRSDRC_NR_14	(3 << 2)
-#define		AT91_DDRSDRC_CAS	(7 << 4)		/* CAS Latency */
-#define			AT91_DDRSDRC_CAS_2	(2 << 4)
-#define			AT91_DDRSDRC_CAS_3	(3 << 4)
-#define			AT91_DDRSDRC_CAS_25	(6 << 4)
-#define		AT91_DDRSDRC_RST_DLL	(1 << 7)		/* Reset DLL */
-#define		AT91_DDRSDRC_DICDS	(1 << 8)		/* Output impedance control */
-#define		AT91_DDRSDRC_DIS_DLL	(1 << 9)		/* Disable DLL [SAM9 Only] */
-#define		AT91_DDRSDRC_OCD	(1 << 12)		/* Off-Chip Driver [SAM9 Only] */
-#define		AT91_DDRSDRC_DQMS	(1 << 16)		/* Mask Data is Shared [SAM9 Only] */
-#define		AT91_DDRSDRC_ACTBST	(1 << 18)		/* Active Bank X to Burst Stop Read Access Bank Y [SAM9 Only] */
-#define		AT91_DDRSDRC_NB		(1 << 20)		/* Number of
-Banks [not SAM9G45] */
-#define			AT91_SDRAMC_NB_4	(0 << 20)
-#define			AT91_SDRAMC_NB_8	(1 << 20)
-
-#define AT91_DDRSDRC_T0PR	0x0C	/* Timing 0 Register */
-#define		AT91_DDRSDRC_TRAS	(0xf <<  0)		/* Active to Precharge delay */
-#define		AT91_DDRSDRC_TRCD	(0xf <<  4)		/* Row to Column delay */
-#define		AT91_DDRSDRC_TWR	(0xf <<  8)		/* Write recovery delay */
-#define		AT91_DDRSDRC_TRC	(0xf << 12)		/* Row cycle delay */
-#define		AT91_DDRSDRC_TRP	(0xf << 16)		/* Row precharge delay */
-#define		AT91_DDRSDRC_TRRD	(0xf << 20)		/* Active BankA to BankB */
-#define		AT91_DDRSDRC_TWTR	(0x7 << 24)		/* Internal Write to Read delay */
-#define		AT91CAP9_DDRSDRC_TWTR	(1   << 24)		/* Internal Write to Read delay */
-#define		AT91_DDRSDRC_RED_WRRD	(0x1 << 27)		/* Reduce Write to Read Delay [SAM9 Only] */
-#define		AT91_DDRSDRC_TMRD	(0xf << 28)		/* Load mode to active/refresh delay */
-
-#define AT91_DDRSDRC_T1PR	0x10	/* Timing 1 Register */
-#define		AT91_DDRSDRC_TRFC	(0x1f << 0)		/* Row Cycle Delay */
-#define		AT91_DDRSDRC_TXSNR	(0xff << 8)		/* Exit self-refresh to non-read */
-#define		AT91_DDRSDRC_TXSRD	(0xff << 16)		/* Exit self-refresh to read */
-#define		AT91_DDRSDRC_TXP	(0xf  << 24)		/* Exit power-down delay */
-
-#define AT91_DDRSDRC_T2PR	0x14	/* Timing 2 Register [SAM9 Only] */
-#define		AT91_DDRSDRC_TXARD	(0xf  << 0)		/* Exit active power down delay to read command in mode "Fast Exit" */
-#define		AT91_DDRSDRC_TXARDS	(0xf  << 4)		/* Exit active power down delay to read command in mode "Slow Exit" */
-#define		AT91_DDRSDRC_TRPA	(0xf  << 8)		/* Row Precharge All delay */
-#define		AT91_DDRSDRC_TRTP	(0x7  << 12)		/* Read to Precharge delay */
-
-#define AT91_DDRSDRC_LPR	0x1C	/* Low Power Register */
-#define AT91CAP9_DDRSDRC_LPR	0x18	/* Low Power Register */
-#define		AT91_DDRSDRC_LPCB	(3 << 0)		/* Low-power Configurations */
-#define			AT91_DDRSDRC_LPCB_DISABLE		0
-#define			AT91_DDRSDRC_LPCB_SELF_REFRESH		1
-#define			AT91_DDRSDRC_LPCB_POWER_DOWN		2
-#define			AT91_DDRSDRC_LPCB_DEEP_POWER_DOWN	3
-#define		AT91_DDRSDRC_CLKFR	(1 << 2)	/* Clock Frozen */
-#define		AT91_DDRSDRC_PASR	(7 << 4)	/* Partial Array Self Refresh */
-#define		AT91_DDRSDRC_TCSR	(3 << 8)	/* Temperature Compensated Self Refresh */
-#define		AT91_DDRSDRC_DS		(3 << 10)	/* Drive Strength */
-#define		AT91_DDRSDRC_TIMEOUT	(3 << 12)	/* Time to define when Low Power Mode is enabled */
-#define			AT91_DDRSDRC_TIMEOUT_0_CLK_CYCLES	(0 << 12)
-#define			AT91_DDRSDRC_TIMEOUT_64_CLK_CYCLES	(1 << 12)
-#define			AT91_DDRSDRC_TIMEOUT_128_CLK_CYCLES	(2 << 12)
-#define		AT91_DDRSDRC_APDE	(1 << 16)	 /* Active power down exit time */
-#define		AT91_DDRSDRC_UPD_MR	(3 << 20)	 /* Update load mode register and extended mode register */
-
-#define AT91_DDRSDRC_MDR	0x20	/* Memory Device Register */
-#define AT91CAP9_DDRSDRC_MDR	0x1C	/* Memory Device Register */
-#define		AT91_DDRSDRC_MD		(3 << 0)		/* Memory Device Type */
-#define			AT91_DDRSDRC_MD_SDR		0
-#define			AT91_DDRSDRC_MD_LOW_POWER_SDR	1
-#define			AT91CAP9_DDRSDRC_MD_DDR		2
-#define			AT91_DDRSDRC_MD_LOW_POWER_DDR	3
-#define			AT91_DDRSDRC_MD_DDR2		6	/* [SAM9 Only] */
-#define		AT91_DDRSDRC_DBW	(1 << 4)		/* Data Bus Width */
-#define			AT91_DDRSDRC_DBW_32BITS		(0 <<  4)
-#define			AT91_DDRSDRC_DBW_16BITS		(1 <<  4)
-
-#define AT91_DDRSDRC_DLL	0x24	/* DLL Information Register */
-#define AT91CAP9_DDRSDRC_DLL	0x20	/* DLL Information Register */
-#define		AT91_DDRSDRC_MDINC	(1 << 0)		/* Master Delay increment */
-#define		AT91_DDRSDRC_MDDEC	(1 << 1)		/* Master Delay decrement */
-#define		AT91_DDRSDRC_MDOVF	(1 << 2)		/* Master Delay Overflow */
-#define		AT91CAP9_DDRSDRC_SDCOVF	(1 << 3)		/* Slave Delay Correction Overflow */
-#define		AT91CAP9_DDRSDRC_SDCUDF	(1 << 4)		/* Slave Delay Correction Underflow */
-#define		AT91CAP9_DDRSDRC_SDERF	(1 << 5)		/* Slave Delay Correction error */
-#define		AT91_DDRSDRC_MDVAL	(0xff <<  8)		/* Master Delay value */
-#define		AT91CAP9_DDRSDRC_SDVAL	(0xff << 16)		/* Slave Delay value */
-#define		AT91CAP9_DDRSDRC_SDCVAL	(0xff << 24)		/* Slave Delay Correction value */
-
-#define AT91_DDRSDRC_HS		0x2C	/* High Speed Register [SAM9 Only] */
-#define		AT91_DDRSDRC_DIS_ATCP_RD	(1 << 2)	/* Anticip read access is disabled */
-
-#define AT91_DDRSDRC_DELAY(n)	(0x30 + (0x4 * (n)))	/* Delay I/O Register n */
-
-#define AT91_DDRSDRC_WPMR	0xE4	/* Write Protect Mode Register [SAM9 Only] */
-#define		AT91_DDRSDRC_WP		(1 << 0)		/* Write protect enable */
-#define		AT91_DDRSDRC_WPKEY	(0xffffff << 8)		/* Write protect key */
-#define		AT91_DDRSDRC_KEY	(0x444452 << 8)		/* Write protect key = "DDR" */
-
-#define AT91_DDRSDRC_WPSR	0xE8	/* Write Protect Status Register [SAM9 Only] */
-#define		AT91_DDRSDRC_WPVS	(1 << 0)		/* Write protect violation status */
-#define		AT91_DDRSDRC_WPVSRC	(0xffff << 8)		/* Write protect violation source */
+#include <mach/at91_ddrsdrc.h>
 
 #ifndef __ASSEMBLY__
+#include <common.h>
 #include <io.h>
 #include <mach/hardware.h>
 
@@ -146,11 +26,11 @@ static inline u32 at91_get_ddram_size(void __iomem *base, bool is_nb)
 	u32 size;
 	bool is_sdram;
 
-	cr = readl(base + AT91_DDRSDRC_CR);
-	mdr = readl(base + AT91_DDRSDRC_MDR);
+	cr = readl(base + AT91C_HDDRSDRC2_CR);
+	mdr = readl(base + AT91C_HDDRSDRC2_MDR);
 
 	/* will always be false for sama5d2, sama5d3 or sama5d4 */
-	is_sdram = (mdr & AT91_DDRSDRC_MD) <= AT91_DDRSDRC_MD_LOW_POWER_SDR;
+	is_sdram = (mdr & AT91C_DDRC2_MD) <= AT91C_DDRC2_MD_LP_SDR_SDRAM;
 
 	/* Formula:
 	 * size = bank << (col + row + 1);
@@ -159,19 +39,19 @@ static inline u32 at91_get_ddram_size(void __iomem *base, bool is_nb)
 	 */
 	size = 1;
 	/* COL */
-	size += (cr & AT91_DDRSDRC_NC) + 8;
+	size += (cr & AT91C_DDRC2_NC) + 8;
 	if (!is_sdram)
 		size ++;
 	/* ROW */
-	size += ((cr & AT91_DDRSDRC_NR) >> 2) + 11;
+	size += ((cr & AT91C_DDRC2_NR) >> 2) + 11;
 	/* BANK */
 	if (is_nb)
-		size = ((cr & AT91_DDRSDRC_NB) ? 8 : 4) << size;
+		size = ((cr & AT91C_DDRC2_NB_BANKS) ? 8 : 4) << size;
 	else
 		size = 4 << size;
 
 	/* bandwidth */
-	if (!(mdr & AT91_DDRSDRC_DBW))
+	if (!(mdr & AT91C_DDRC2_DBW))
 		size <<= 1;
 
 	return size;
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
