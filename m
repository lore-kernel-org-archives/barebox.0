Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo4.mail-out.ovh.net ([188.165.44.50]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RinUz-0004Jw-Q1
 for barebox@lists.infradead.org; Thu, 05 Jan 2012 13:36:55 +0000
Received: from mail643.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 2771F1058283
 for <barebox@lists.infradead.org>; Thu,  5 Jan 2012 14:37:59 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  5 Jan 2012 14:30:34 +0100
Message-Id: <1325770234-9353-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1325770234-9353-1-git-send-email-plagnioj@jcrosoft.com>
References: <1325770234-9353-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] at91: 9260 and 9g20 add support of join SRAM Memory
 Mapping
To: barebox@lists.infradead.org

on 9269 and 9g20 the sram are mirrored at then of the bank so we can join them

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9260_devices.c      |   12 ++++--------
 arch/arm/mach-at91/include/mach/at91sam9260.h |    4 ++++
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 25a68ca..8e8ea3b 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -26,15 +26,11 @@ void at91_add_device_sdram(u32 size)
 {
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 	if (cpu_is_at91sam9g20()) {
-		add_mem_device("sram0", AT91SAM9G20_SRAM0_BASE,
-			AT91SAM9G20_SRAM0_SIZE, IORESOURCE_MEM_WRITEABLE);
-		add_mem_device("sram1", AT91SAM9G20_SRAM1_BASE,
-			AT91SAM9G20_SRAM1_SIZE, IORESOURCE_MEM_WRITEABLE);
+		add_mem_device("sram0", AT91SAM9G20_SRAM_BASE,
+			AT91SAM9G20_SRAM_SIZE, IORESOURCE_MEM_WRITEABLE);
 	} else {
-		add_mem_device("sram0", AT91SAM9260_SRAM0_BASE,
-			AT91SAM9260_SRAM0_SIZE, IORESOURCE_MEM_WRITEABLE);
-		add_mem_device("sram1", AT91SAM9260_SRAM1_BASE,
-			AT91SAM9260_SRAM1_SIZE, IORESOURCE_MEM_WRITEABLE);
+		add_mem_device("sram0", AT91SAM9260_SRAM_BASE,
+			AT91SAM9260_SRAM_SIZE, IORESOURCE_MEM_WRITEABLE);
 	}
 }
 
diff --git a/arch/arm/mach-at91/include/mach/at91sam9260.h b/arch/arm/mach-at91/include/mach/at91sam9260.h
index 72dc931..ca273cb 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9260.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9260.h
@@ -121,6 +121,8 @@
 #define AT91SAM9260_SRAM0_SIZE	SZ_4K		/* Internal SRAM 0 size (4Kb) */
 #define AT91SAM9260_SRAM1_BASE	0x00300000	/* Internal SRAM 1 base address */
 #define AT91SAM9260_SRAM1_SIZE	SZ_4K		/* Internal SRAM 1 size (4Kb) */
+#define AT91SAM9260_SRAM_BASE	0x002FF000	/* Internal SRAM base address */
+#define AT91SAM9260_SRAM_SIZE	SZ_8K		/* Internal SRAM size (8Kb) */
 
 #define AT91SAM9260_UHP_BASE	0x00500000	/* USB Host controller */
 
@@ -134,6 +136,8 @@
 #define AT91SAM9G20_SRAM0_SIZE	SZ_16K		/* Internal SRAM 0 size (16Kb) */
 #define AT91SAM9G20_SRAM1_BASE	0x00300000	/* Internal SRAM 1 base address */
 #define AT91SAM9G20_SRAM1_SIZE	SZ_16K		/* Internal SRAM 1 size (16Kb) */
+#define AT91SAM9G20_SRAM_BASE	0x002FC000	/* Internal SRAM base address */
+#define AT91SAM9G20_SRAM_SIZE	SZ_32K		/* Internal SRAM size (32Kb) */
 
 #define AT91SAM9G20_UHP_BASE	0x00500000	/* USB Host controller */
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
