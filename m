Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fo1-0000qC-Is
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:47:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:45:52 +0100
Message-Id: <20200217124623.14520-12-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/42] ARM: i.MX8M: Detect serial downloader mode correctly
To: Barebox List <barebox@lists.infradead.org>

like the i.MX6 the i.MX7 and i.MX8M also have a SBMR2 register which
must be consulted for the BOOT_MODE[01] pins before internal bootmode
can be assumed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/boot.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 350355fb41..7d1af106d1 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -27,6 +27,7 @@
 #include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
 #include <mach/imx7-regs.h>
+#include <mach/imx8mq-regs.h>
 #include <mach/vf610-regs.h>
 #include <mach/imx8mq.h>
 
@@ -444,10 +445,16 @@ struct imx_boot_sw_info {
 } __packed;
 
 static void __imx7_get_boot_source(enum bootsource *src, int *instance,
-				   unsigned long boot_sw_info_pointer_addr)
+				   unsigned long boot_sw_info_pointer_addr,
+				   uint32_t sbmr2)
 {
 	const struct imx_boot_sw_info *info;
 
+	if (imx6_bootsource_serial(sbmr2)) {
+		*src = BOOTSOURCE_SERIAL;
+		return;
+	}
+
 	info = (const void *)(unsigned long)
 		readl(boot_sw_info_pointer_addr);
 
@@ -477,7 +484,11 @@ static void __imx7_get_boot_source(enum bootsource *src, int *instance,
 
 void imx7_get_boot_source(enum bootsource *src, int *instance)
 {
-	__imx7_get_boot_source(src, instance, IMX7_BOOT_SW_INFO_POINTER_ADDR);
+	void __iomem *src_base = IOMEM(MX7_SRC_BASE_ADDR);
+	uint32_t sbmr2 = readl(src_base + 0x70);
+
+	__imx7_get_boot_source(src, instance, IMX7_BOOT_SW_INFO_POINTER_ADDR,
+			       sbmr2);
 }
 
 void imx7_boot_save_loc(void)
@@ -582,12 +593,14 @@ void vf610_boot_save_loc(void)
 void imx8mq_get_boot_source(enum bootsource *src, int *instance)
 {
 	unsigned long addr;
+	void __iomem *src_base = IOMEM(MX8MQ_SRC_BASE_ADDR);
+	uint32_t sbmr2 = readl(src_base + 0x70);
 
 	addr = (imx8mq_cpu_revision() == IMX_CHIP_REV_1_0) ?
 		IMX8M_BOOT_SW_INFO_POINTER_ADDR_A0 :
 		IMX8M_BOOT_SW_INFO_POINTER_ADDR_B0;
 
-	__imx7_get_boot_source(src, instance, addr);
+	__imx7_get_boot_source(src, instance, addr, sbmr2);
 }
 
 void imx8mq_boot_save_loc(void)
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
