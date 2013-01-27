Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzVJ8-0007MD-0V
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 16:42:14 +0000
Received: from mail178.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id D9732FFA5A4
 for <barebox@lists.infradead.org>; Sun, 27 Jan 2013 17:52:11 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 27 Jan 2013 17:40:53 +0100
Message-Id: <1359304854-12641-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/4] at91sam9g45: add autodetect sd/ddram size
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9g45_devices.c          |    4 ++++
 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h |   19 +++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index c4ca7c6..a2f26b5 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -15,6 +15,7 @@
 #include <asm/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9g45_matrix.h>
+#include <mach/at91sam9_ddrsdr.h>
 #include <mach/board.h>
 #include <mach/gpio.h>
 #include <mach/io.h>
@@ -24,6 +25,9 @@
 
 void at91_add_device_sdram(u32 size)
 {
+	if (!size)
+		size = at91sam9g45_get_ddram_size(1);
+
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_6, size);
 	add_mem_device("sram0", AT91SAM9G45_SRAM_BASE,
 			AT91SAM9G45_SRAM_SIZE, IORESOURCE_MEM_WRITEABLE);
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
index c90a248..f8699d7 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
@@ -175,6 +175,25 @@ static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
 	return size;
 }
 
+#ifdef CONFIG_SOC_AT91SAM9G45
+static inline u32 at91sam9g45_get_ddram_size(int bank)
+{
+	switch (bank) {
+	case 0:
+		return at91_get_ddram_size(IOMEM(AT91SAM9G45_BASE_DDRSDRC0), false);
+	case 1:
+		return at91_get_ddram_size(IOMEM(AT91SAM9G45_BASE_DDRSDRC1), false);
+	default:
+		return 0;
+	}
+}
+#else
+static inline u32 at91sam9g45_get_ddram_size(int bank)
+{
+	return 0;
+}
+#endif
+
 #ifdef CONFIG_SOC_AT91SAM9X5
 static inline u32 at91sam9x5_get_ddram_size(void)
 {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
