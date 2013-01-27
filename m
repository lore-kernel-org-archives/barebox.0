Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzVJ8-0007MA-0X
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 16:42:14 +0000
Received: from mail178.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id AA68DFFA59F
 for <barebox@lists.infradead.org>; Sun, 27 Jan 2013 17:52:11 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 27 Jan 2013 17:40:52 +0100
Message-Id: <1359304854-12641-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359304854-12641-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130127163903.GN26329@game.jcrosoft.org>
 <1359304854-12641-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/4] at91sam9n12: add autodetect sd/ddram size
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9n12_devices.c          |    4 ++++
 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h |   12 ++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9n12_devices.c b/arch/arm/mach-at91/at91sam9n12_devices.c
index 9d6e80f..17e2da0 100644
--- a/arch/arm/mach-at91/at91sam9n12_devices.c
+++ b/arch/arm/mach-at91/at91sam9n12_devices.c
@@ -17,6 +17,7 @@
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9n12_matrix.h>
+#include <mach/at91sam9_ddrsdr.h>
 #include <mach/gpio.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
@@ -26,6 +27,9 @@
 
 void at91_add_device_sdram(u32 size)
 {
+	if (!size)
+		size = at91sam9n12_get_ddram_size();
+
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 	add_mem_device("sram0", AT91SAM9N12_SRAM_BASE,
 			AT91SAM9N12_SRAM_SIZE, IORESOURCE_MEM_WRITEABLE);
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
index 90937f4..c90a248 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
@@ -187,6 +187,18 @@ static inline u32 at91sam9x5_get_ddram_size(void)
 }
 #endif
 
+#ifdef CONFIG_SOC_AT91SAM9N12
+static inline u32 at91sam9n12_get_ddram_size(void)
+{
+	return at91_get_ddram_size(IOMEM(AT91SAM9N12_BASE_DDRSDRC0), true);
+}
+#else
+static inline u32 at91sam9n12_get_ddram_size(void)
+{
+	return 0;
+}
+#endif
+
 #endif
 
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
