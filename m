Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo1.mail-out.ovh.net ([178.33.45.107]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SxBkY-0008T0-NN
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 06:52:44 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id F0568FFACF1
 for <barebox@lists.infradead.org>; Fri,  3 Aug 2012 08:58:51 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  3 Aug 2012 08:52:39 +0200
Message-Id: <1343976760-2400-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] at91: sam9260/sam9g20/sam9261/sam9g10/sam9263 add
 autodetect sdram size
To: barebox@lists.infradead.org

if 0 is passed to at91_add_device_sdram autodetect the sdram size

The amount of available ram is determined by the SDRAMC_CR register.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9260_devices.c          |    4 +++
 arch/arm/mach-at91/at91sam9261_devices.c          |    4 +++
 arch/arm/mach-at91/at91sam9263_devices.c          |    4 +++
 arch/arm/mach-at91/include/mach/at91sam9_sdramc.h |   28 +++++++++++++++++++++
 4 files changed, 40 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index b56ca14..9c9534e 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -16,6 +16,7 @@
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9260_matrix.h>
+#include <mach/at91sam9_sdramc.h>
 #include <mach/gpio.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
@@ -24,6 +25,9 @@
 
 void at91_add_device_sdram(u32 size)
 {
+	if (!size)
+		size = at91_get_sdram_size();
+
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 	if (cpu_is_at91sam9g20()) {
 		add_mem_device("sram0", AT91SAM9G20_SRAM_BASE,
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index a109804..0091e2d 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -15,6 +15,7 @@
 #include <asm/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9261_matrix.h>
+#include <mach/at91sam9_sdramc.h>
 #include <mach/board.h>
 #include <mach/gpio.h>
 #include <mach/io.h>
@@ -24,6 +25,9 @@
 
 void at91_add_device_sdram(u32 size)
 {
+	if (!size)
+		size = at91_get_sdram_size();
+
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 	if (cpu_is_at91sam9g10())
 		add_mem_device("sram0", AT91SAM9G10_SRAM_BASE,
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 7f916d2..e686480 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -15,6 +15,7 @@
 #include <asm/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9263_matrix.h>
+#include <mach/at91sam9_sdramc.h>
 #include <mach/board.h>
 #include <mach/gpio.h>
 #include <mach/io.h>
@@ -23,6 +24,9 @@
 
 void at91_add_device_sdram(u32 size)
 {
+	if (!size)
+		size = at91_get_sdram_size();
+
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 	add_mem_device("sram0", AT91SAM9263_SRAM0_BASE,
 			AT91SAM9263_SRAM0_SIZE, IORESOURCE_MEM_WRITEABLE);
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
index 5af2b54..1ab61e9 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
@@ -83,5 +83,33 @@
 #define			AT91_SDRAMC_MD_SDRAM		0
 #define			AT91_SDRAMC_MD_LOW_POWER_SDRAM	1
 
+#ifndef __ASSEMBLY__
+#include <mach/io.h>
+static inline u32 at91_get_sdram_size(void)
+{
+	u32 val;
+	u32 size;
+
+	val = at91_sys_read(AT91_SDRAMC_CR);
+
+	/* Formula:
+	 * size = bank << (col + row + 1);
+	 * if (bandwidth == 32 bits)
+	 *	size <<= 1;
+	 */
+	size = 1;
+	/* COL */
+	size += (val & AT91_SDRAMC_NC) + 8;
+	/* ROW */
+	size += ((val & AT91_SDRAMC_NR) >> 2) + 11;
+	/* BANK */
+	size = ((val & AT91_SDRAMC_NB) ? 4 : 2) << size;
+	/* bandwidth */
+	if (!(val & AT91_SDRAMC_DBW))
+		size <<= 1;
+
+	return size;
+}
+#endif
 
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
