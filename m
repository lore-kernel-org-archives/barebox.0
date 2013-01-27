Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzVJ8-0007M7-0T
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 16:42:16 +0000
Received: from mail178.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 7BD1EFFA54B
 for <barebox@lists.infradead.org>; Sun, 27 Jan 2013 17:52:11 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 27 Jan 2013 17:40:51 +0100
Message-Id: <1359304854-12641-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130127163903.GN26329@game.jcrosoft.org>
References: <20130127163903.GN26329@game.jcrosoft.org>
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
Subject: [PATCH 1/4] at91sam9x5: add autodetect sd/ddram size
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9x5_devices.c           |    4 ++
 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h |   58 +++++++++++++++++++++
 2 files changed, 62 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index 8e59fe0..90d8756 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -16,6 +16,7 @@
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9x5_matrix.h>
+#include <mach/at91sam9_ddrsdr.h>
 #include <mach/gpio.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
@@ -25,6 +26,9 @@
 
 void at91_add_device_sdram(u32 size)
 {
+	if (!size)
+		size = at91sam9x5_get_ddram_size();
+
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 	add_mem_device("sram0", AT91SAM9X5_SRAM_BASE,
 			AT91SAM9X5_SRAM_SIZE, IORESOURCE_MEM_WRITEABLE);
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
index 070f730..90937f4 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
@@ -50,6 +50,10 @@
 #define		AT91_DDRSDRC_OCD	(1 << 12)		/* Off-Chip Driver [SAM9 Only] */
 #define		AT91_DDRSDRC_DQMS	(1 << 16)		/* Mask Data is Shared [SAM9 Only] */
 #define		AT91_DDRSDRC_ACTBST	(1 << 18)		/* Active Bank X to Burst Stop Read Access Bank Y [SAM9 Only] */
+#define		AT91_DDRSDRC_NB		(1 << 20)		/* Number of
+Banks [not SAM9G45] */
+#define			AT91_SDRAMC_NB_4	(0 << 20)
+#define			AT91_SDRAMC_NB_8	(1 << 20)
 
 #define AT91_DDRSDRC_T0PR	0x0C	/* Timing 0 Register */
 #define		AT91_DDRSDRC_TRAS	(0xf <<  0)		/* Active to Precharge delay */
@@ -131,4 +135,58 @@
 #define		AT91_DDRSDRC_WPVS	(1 << 0)		/* Write protect violation status */
 #define		AT91_DDRSDRC_WPVSRC	(0xffff << 8)		/* Write protect violation source */
 
+#ifndef __ASSEMBLY__
+#include <mach/io.h>
+
+static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
+{
+	u32 cr;
+	u32 mdr;
+	u32 size;
+	bool is_sdram;
+
+	cr = __raw_readl(base + AT91_DDRSDRC_CR);
+	mdr = __raw_readl(base + AT91_DDRSDRC_CR);
+
+	is_sdram = (mdr & AT91_DDRSDRC_MD) <= AT91_DDRSDRC_MD_LOW_POWER_SDR;
+
+	/* Formula:
+	 * size = bank << (col + row + 1);
+	 * if (bandwidth == 32 bits)
+	 *	size <<= 1;
+	 */
+	size = 1;
+	/* COL */
+	size += (cr & AT91_DDRSDRC_NC) + 8;
+	if (is_sdram)
+		size ++;
+	/* ROW */
+	size += ((cr & AT91_DDRSDRC_NR) >> 2) + 11;
+	/* BANK */
+	if (is_nb)
+		size = ((cr & AT91_DDRSDRC_NB) ? 8 : 4) << size;
+	else
+		size = 4 << size;
+
+	/* bandwidth */
+	if (!(mdr & AT91_DDRSDRC_DBW))
+		size <<= 1;
+
+	return size;
+}
+
+#ifdef CONFIG_SOC_AT91SAM9X5
+static inline u32 at91sam9x5_get_ddram_size(void)
+{
+	return at91_get_ddram_size(IOMEM(AT91SAM9X5_BASE_DDRSDRC0), true);
+}
+#else
+static inline u32 at91sam9x5_get_ddram_size(void)
+{
+	return 0;
+}
+#endif
+
+#endif
+
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
