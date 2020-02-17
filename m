Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fnJ-00081A-6R
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:45:49 +0100
Message-Id: <20200217124623.14520-9-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/42] ARM: i.MX: esdctl: rename functions to imx8m_*
To: Barebox List <barebox@lists.infradead.org>

The imx8mq_* functions can be reused for all i.MX8M SoCs, so rename
them accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 25 +++++++++++++++----------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 074e3ac5a1..411836debd 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -39,7 +39,7 @@
 #include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
 #include <mach/vf610-ddrmc.h>
-#include <mach/imx8mq-regs.h>
+#include <mach/imx8m-regs.h>
 #include <mach/imx7-regs.h>
 
 struct imx_esdctl_data {
@@ -428,7 +428,7 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
 	return reduced_adress_space ? size * 3 / 4 : size;
 }
 
-static resource_size_t imx8mq_ddrc_sdram_size(void __iomem *ddrc)
+static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
 {
 	const u32 addrmap[] = {
 		readl(ddrc + DDRC_ADDRMAP(0)),
@@ -480,10 +480,10 @@ static resource_size_t imx8mq_ddrc_sdram_size(void __iomem *ddrc)
 				   reduced_adress_space);
 }
 
-static void imx8mq_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+static void imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 {
 	arm_add_mem_device("ram0", data->base0,
-			   imx8mq_ddrc_sdram_size(mmdcbase));
+			   imx8m_ddrc_sdram_size(mmdcbase));
 }
 
 static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
@@ -615,8 +615,8 @@ static __maybe_unused struct imx_esdctl_data vf610_data = {
 };
 
 static __maybe_unused struct imx_esdctl_data imx8mq_data = {
-	.base0 = MX8MQ_DDR_CSD1_BASE_ADDR,
-	.add_mem = imx8mq_ddrc_add_mem,
+	.base0 = MX8M_DDR_CSD1_BASE_ADDR,
+	.add_mem = imx8m_ddrc_add_mem,
 };
 
 static __maybe_unused struct imx_esdctl_data imx7d_data = {
@@ -869,11 +869,11 @@ void __noreturn vf610_barebox_entry(void *boarddata)
 			  boarddata);
 }
 
-void __noreturn imx8mq_barebox_entry(void *boarddata)
+static void __noreturn imx8m_barebox_entry(void *boarddata)
 {
 	resource_size_t size;
 
-	size = imx8mq_ddrc_sdram_size(IOMEM(MX8MQ_DDRC_CTL_BASE_ADDR));
+	size = imx8m_ddrc_sdram_size(IOMEM(MX8M_DDRC_CTL_BASE_ADDR));
 	/*
 	 * We artificially limit detected memory size to force malloc
 	 * pool placement to be within 4GiB address space, so as to
@@ -883,8 +883,13 @@ void __noreturn imx8mq_barebox_entry(void *boarddata)
 	 * pool placement. The rest of the system should be able to
 	 * detect and utilize full amount of memory.
 	 */
-	size = min_t(resource_size_t, SZ_4G - MX8MQ_DDR_CSD1_BASE_ADDR, size);
-	barebox_arm_entry(MX8MQ_DDR_CSD1_BASE_ADDR, size, boarddata);
+	size = min_t(resource_size_t, SZ_4G - MX8M_DDR_CSD1_BASE_ADDR, size);
+	barebox_arm_entry(MX8M_DDR_CSD1_BASE_ADDR, size, boarddata);
+}
+
+void __noreturn imx8mq_barebox_entry(void *boarddata)
+{
+	imx8m_barebox_entry(boarddata);
 }
 
 void __noreturn imx7d_barebox_entry(void *boarddata)
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
