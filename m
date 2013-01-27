Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo5.mail-out.ovh.net ([46.105.56.132]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzWjH-0003dc-5a
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 18:13:19 +0000
Received: from mail178.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id E6D8AFFA4B7
 for <barebox@lists.infradead.org>; Sun, 27 Jan 2013 19:23:14 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 27 Jan 2013 19:11:55 +0100
Message-Id: <1359310316-20121-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130127180957.GO26329@game.jcrosoft.o>
References: <20130127180957.GO26329@game.jcrosoft.o>
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
Subject: [PATCH 1/2] at91rm9200: add autodetect sdram size
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91rm9200_devices.c         |    3 +++
 arch/arm/mach-at91/include/mach/at91rm9200_mc.h |   30 +++++++++++++++++++++++
 2 files changed, 33 insertions(+)

diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index 84d4c15..0f2ec1f 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -25,6 +25,9 @@
 
 void at91_add_device_sdram(u32 size)
 {
+	if (!size)
+		size = at91rm9200_get_sdram_size();
+
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 	add_mem_device("sram0", AT91RM9200_SRAM_BASE, AT91RM9200_SRAM_SIZE,
 			IORESOURCE_MEM_WRITEABLE);
diff --git a/arch/arm/mach-at91/include/mach/at91rm9200_mc.h b/arch/arm/mach-at91/include/mach/at91rm9200_mc.h
index d34e4ed..fc44a61 100644
--- a/arch/arm/mach-at91/include/mach/at91rm9200_mc.h
+++ b/arch/arm/mach-at91/include/mach/at91rm9200_mc.h
@@ -157,4 +157,34 @@
 #define		AT91_BFC_MUXEN		(1   << 18)		/* Multiplexed Bus Enable */
 #define		AT91_BFC_RDYEN		(1   << 19)		/* Ready Enable Mode */
 
+#ifndef __ASSEMBLY__
+#include <mach/io.h>
+static inline u32 at91rm9200_get_sdram_size(void)
+{
+	u32 cr, mr;
+	u32 size;
+
+	cr = at91_sys_read(AT91_SDRAMC_CR);
+	mr = at91_sys_read(AT91_SDRAMC_MR);
+
+	/* Formula:
+	 * size = bank << (col + row + 1);
+	 * if (bandwidth == 32 bits)
+	 *	size <<= 1;
+	 */
+	size = 1;
+	/* COL */
+	size += (cr & AT91_SDRAMC_NC) + 8;
+	/* ROW */
+	size += ((cr & AT91_SDRAMC_NR) >> 2) + 11;
+	/* BANK */
+	size = ((cr & AT91_SDRAMC_NB) ? 4 : 2) << size;
+	/* bandwidth */
+	if (!(mr & AT91_SDRAMC_DBW))
+		size <<= 1;
+
+	return size;
+}
+#endif
+
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
