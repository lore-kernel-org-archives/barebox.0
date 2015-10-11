Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22a.google.com ([2607:f8b0:400e:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlLbd-0007rd-W2
 for barebox@lists.infradead.org; Sun, 11 Oct 2015 18:44:26 +0000
Received: by pablk4 with SMTP id lk4so133708608pab.3
 for <barebox@lists.infradead.org>; Sun, 11 Oct 2015 11:44:06 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 11 Oct 2015 11:43:38 -0700
Message-Id: <1444589021-12727-5-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1444589021-12727-1-git-send-email-andrew.smirnov@gmail.com>
References: <1444589021-12727-1-git-send-email-andrew.smirnov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/8] freescale-mx6-sabresd: Add CONFIG_DEBUG_LL support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/freescale-mx6-sabresd/lowlevel.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
index 73eed1d..b329f46 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
@@ -1,9 +1,28 @@
+#include <debug_ll.h>
 #include <common.h>
 #include <linux/sizes.h>
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
+static inline void setup_uart(void)
+{
+	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
+
+	imx6_ungate_all_peripherals();
+
+	writel(0x1b0b1, iomuxbase + 0x0650);
+	writel(3, iomuxbase + 0x0280);
+
+	writel(0x1b0b1, iomuxbase + 0x0654);
+	writel(3, iomuxbase + 0x0284);
+	writel(1, iomuxbase + 0x0920);
+
+	imx6_uart_setup_ll();
+
+	putc_ll('>');
+}
+
 extern char __dtb_imx6q_sabresd_start[];
 
 ENTRY_FUNCTION(start_imx6q_sabresd, r0, r1, r2)
@@ -12,6 +31,9 @@ ENTRY_FUNCTION(start_imx6q_sabresd, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
 	fdt = __dtb_imx6q_sabresd_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
