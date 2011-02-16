Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pplsz-0001nS-9E
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 18:14:04 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Feb 2011 19:13:36 +0100
Message-Id: <1297880025-7184-12-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
References: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 11/20] mini2440: Add SDRAM config settings
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

This is required in order to enable booting from NAND and using the generic
S3C2440 setup routines.

Two types of SDRAM devices are known to be shipped by FriendlyARM. This config
should work on both of them. But it is really tested only for the HY57V561620
type.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 arch/arm/boards/mini2440/config.h |   58 +++++++++++++++++++++++++++++++++++++
 1 files changed, 58 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/mini2440/config.h b/arch/arm/boards/mini2440/config.h
index 1edd69c..1f2fb4c 100644
--- a/arch/arm/boards/mini2440/config.h
+++ b/arch/arm/boards/mini2440/config.h
@@ -69,4 +69,62 @@
 #ifdef CONFIG_S3C24XX_NAND_BOOT
 # define BOARD_DEFAULT_NAND_TIMING CALC_NFCONF_TIMING(A9M2440_TACLS, A9M2440_TWRPH0, A9M2440_TWRPH1)
 #endif
+
+/*
+ * Needed in the generic SDRAM boot code only
+ *
+ * SDRAM configuration
+ * Two types of SDRAM devices are common on mini2440:
+ * - Two devices of HY57V561620 to form 64 MiB in bank 6 only
+ *   - http://friendlyarm.net/dl.php?file=HY57V561620.pdf
+ * - Two devices of MT48LC16M16 to form 64 MiB in bank 6 only
+ *   - http://friendlyarm.net/dl.php?file=MT48LC16M16.pdf
+
+ * Most of the time the CPU is specified for 400 MHz only. As the CPU frequency
+ * and the SDRAM frequency are fix coupled by 4:1, the SDRAM runs at HCLCK.
+ * So, we need a 100 MHz timing setup with CL=2 for the SDRAMs.
+ */
+
+/*
+ * - ST7/WS7/DW7: reserved, this SDRAM bank is not used
+ * - ST6/WS6/DW6: 32 bit data bus (for SDRAM usage)
+ * - ST5/WS5/DW5: reserved, to be set by the board init code
+ * - ST4/WS4/DW4: reserved, to be set by the board init code
+ * - ST3/WS3/DW3: reserved, to be set by the board init code
+ * - ST2/WS2/DW2: reserved, to be set by the board init code
+ * - ST1/WS1/DW1: reserved, to be set by the board init code
+ * - DW0: not to be changed
+ */
+#define BOARD_SPECIFIC_BWSCON ((0x3 << 28) | (0x2 << 24) | 0x333330)
+/*
+ *  - MT = 11 (= sync dram type)
+ *  - Trcd = 00 (= CL2)
+ *  - SCAN = 01 (= 9 bit collumns)
+ */
+#define BOARD_SPECIFIC_BANKCON6 ((0x3 << 15) + (0x0 << 2) + (0x1))
+#define BOARD_SPECIFIC_BANKCON7 0 /* disabled */
+/*
+ * SDRAM refresh settings
+ *  - REFEN = 1 (= refresh enabled)
+ *  - TREFMD = 0 (= auto refresh)
+ *  - Trp = 00 (= 2 RAS precharge clocks)
+ *  - Tsrc = 01 (= 5 clocks -> row cycle time @100MHz 2+5=7 -> 70ns)
+ *  - Refresh = 2^11 + 1 - 100 * 7.8 = 2049 - 780 = 1269
+ */
+#define BOARD_SPECIFIC_REFRESH ((0x1 << 23) + (0x0 << 22) + (0x0 << 20) + (0x1 << 18) + 1269)
+/*
+ * SDRAM banksize
+ *  - BURST_EN = 1 (= burst mode enabled)
+ *  - SCKE_EN = 1 (= SDRAM SCKE enabled)
+ *  - SCLK_EN = 1 (= clock active only during accesses)
+ *  - BK67MAP = 001 (= 64 MiB)
+ */
+# define BOARD_SPECIFIC_BANKSIZE ((1 << 7) + (1 << 5) + (1 << 4) + 1)
+/*
+ * SDRAM mode register
+ * CL = 010 (= 2 clocks)
+ */
+# define BOARD_SPECIFIC_MRSRB6 (0x2 << 4)
+# define BOARD_SPECIFIC_MRSRB7 0	/* not used */
+
 #endif /* __CONFIG_H */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
