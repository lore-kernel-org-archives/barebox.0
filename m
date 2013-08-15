Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9x2r-0007gw-60
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 12:52:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Aug 2013 14:52:28 +0200
Message-Id: <1376571148-11290-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX6 phyflex: Enable lowlevel UART
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-pfla02/lowlevel.c | 35 ++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm/boards/phytec-pfla02/lowlevel.c b/arch/arm/boards/phytec-pfla02/lowlevel.c
index 104c25f..10929b5 100644
--- a/arch/arm/boards/phytec-pfla02/lowlevel.c
+++ b/arch/arm/boards/phytec-pfla02/lowlevel.c
@@ -24,6 +24,35 @@
 #include <mach/imx6-mmdc.h>
 #include <mach/imx6.h>
 
+static inline void setup_uart(void)
+{
+	void __iomem *ccmbase = (void *)MX6_CCM_BASE_ADDR;
+	void __iomem *uartbase = (void *)MX6_UART4_BASE_ADDR;
+	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
+
+	writel(0x4, iomuxbase + 0x01f8);
+
+	writel(0xffffffff, ccmbase + 0x68);
+	writel(0xffffffff, ccmbase + 0x6c);
+	writel(0xffffffff, ccmbase + 0x70);
+	writel(0xffffffff, ccmbase + 0x74);
+	writel(0xffffffff, ccmbase + 0x78);
+	writel(0xffffffff, ccmbase + 0x7c);
+	writel(0xffffffff, ccmbase + 0x80);
+
+	writel(0x00000000, uartbase + 0x80);
+	writel(0x00004027, uartbase + 0x84);
+	writel(0x00000704, uartbase + 0x88);
+	writel(0x00000a81, uartbase + 0x90);
+	writel(0x0000002b, uartbase + 0x9c);
+	writel(0x00013880, uartbase + 0xb0);
+	writel(0x0000047f, uartbase + 0xa4);
+	writel(0x0000c34f, uartbase + 0xa8);
+	writel(0x00000001, uartbase + 0x80);
+
+	PUTC_LL('>');
+}
+
 extern char __dtb_imx6q_phytec_pbab01_start[];
 
 ENTRY_FUNCTION(start_phytec_pbab01_1gib)(void)
@@ -36,6 +65,9 @@ ENTRY_FUNCTION(start_phytec_pbab01_1gib)(void)
 
 	arm_setup_stack(0x00920000 - 8);
 
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
 	fdt = (uint32_t)__dtb_imx6q_phytec_pbab01_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
@@ -51,6 +83,9 @@ ENTRY_FUNCTION(start_phytec_pbab01_2gib)(void)
 
 	arm_setup_stack(0x00920000 - 8);
 
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
 	fdt = (uint32_t)__dtb_imx6q_phytec_pbab01_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_2G, fdt);
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
