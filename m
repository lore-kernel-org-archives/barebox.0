Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UG387-0004dp-91
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 08:03:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Mar 2013 09:03:12 +0100
Message-Id: <1363248192-30541-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM i.MX ESDCTL: Fix default enabled esdctl v2 controller
To: barebox@lists.infradead.org

On some i.MX SoCs the SDRAM controller has chipselect 2 enabled
by reset default. This confuses our SDRAM size detection. We
already have a fix for this in place. This patch adds the fix
for i.MX35 which needs it aswell. Also since we now detect the
SDRAM size in the SoC specific entry functions we have to apply
the fixup there, too.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 43 ++++++++++++++++++++++++++++---------------
 1 file changed, 28 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index cc2bdc1..cb57d45 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -173,6 +173,26 @@ static void add_mem(unsigned long base0, unsigned long size0,
 		arm_add_mem_device(size0 ? "ram1" : "ram0", base1, size1);
 }
 
+/*
+ * On i.MX27, i.MX31 and i.MX35 the second chipselect is enabled by reset default.
+ * This setting makes it impossible to detect the correct SDRAM size on
+ * these SoCs. We disable the chipselect if this reset default setting is
+ * found. This of course leads to incorrect SDRAM detection on boards which
+ * really have this reset default as a valid setting. If you have such a
+ * board drop a mail to search for a solution.
+ */
+#define ESDCTL1_RESET_DEFAULT 0x81120080
+
+static inline void imx_esdctl_v2_disable_default(void *esdctlbase)
+{
+	u32 ctlval = readl(esdctlbase + IMX_ESDCTL1);
+
+	if (ctlval == ESDCTL1_RESET_DEFAULT) {
+		ctlval &= ~(1 << 31);
+		writel(ctlval, esdctlbase + IMX_ESDCTL1);
+	}
+}
+
 static void imx_esdctl_v1_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
 {
 	add_mem(data->base0, imx_v1_sdram_size(esdctlbase, 0),
@@ -185,22 +205,9 @@ static void imx_esdctl_v2_add_mem(void *esdctlbase, struct imx_esdctl_data *data
 			data->base1, imx_v2_sdram_size(esdctlbase, 1));
 }
 
-/*
- * On i.MX27 and i.MX31 the second chipselect is enabled by reset default.
- * This setting makes it impossible to detect the correct SDRAM size on
- * these SoCs. We disable the chipselect if this reset default setting is
- * found. This of course leads to incorrect SDRAM detection on boards which
- * really have this reset default as a valid setting. If you have such a
- * board drop a mail to search for a solution.
- */
-#define ESDCTL1_RESET_DEFAULT 0x81120080
-
 static void imx_esdctl_v2_bug_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
 {
-	u32 ctlval = readl(esdctlbase + IMX_ESDCTL1);
-
-	if (ctlval == ESDCTL1_RESET_DEFAULT)
-		writel(0x0, esdctlbase + IMX_ESDCTL1);
+	imx_esdctl_v2_disable_default(esdctlbase);
 
 	add_mem(data->base0, imx_v2_sdram_size(esdctlbase, 0),
 			data->base1, imx_v2_sdram_size(esdctlbase, 1));
@@ -264,7 +271,7 @@ static __maybe_unused struct imx_esdctl_data imx31_data = {
 static __maybe_unused struct imx_esdctl_data imx35_data = {
 	.base0 = MX35_CSD0_BASE_ADDR,
 	.base1 = MX35_CSD1_BASE_ADDR,
-	.add_mem = imx_esdctl_v2_add_mem,
+	.add_mem = imx_esdctl_v2_bug_add_mem,
 };
 
 static __maybe_unused struct imx_esdctl_data imx51_data = {
@@ -383,6 +390,8 @@ void __naked __noreturn imx27_barebox_entry(uint32_t boarddata)
 	unsigned long base;
 	unsigned long size;
 
+	imx_esdctl_v2_disable_default((void *)MX27_ESDCTL_BASE_ADDR);
+
 	base = MX27_CSD0_BASE_ADDR;
 
 	size = imx_v2_sdram_size((void *)MX27_ESDCTL_BASE_ADDR, 0);
@@ -397,6 +406,8 @@ void __naked __noreturn imx31_barebox_entry(uint32_t boarddata)
 	unsigned long base;
 	unsigned long size;
 
+	imx_esdctl_v2_disable_default((void *)MX31_ESDCTL_BASE_ADDR);
+
 	base = MX31_CSD0_BASE_ADDR;
 
 	size = imx_v2_sdram_size((void *)MX31_ESDCTL_BASE_ADDR, 0);
@@ -411,6 +422,8 @@ void __naked __noreturn imx35_barebox_entry(uint32_t boarddata)
 	unsigned long base;
 	unsigned long size;
 
+	imx_esdctl_v2_disable_default((void *)MX35_ESDCTL_BASE_ADDR);
+
 	base = MX35_CSD0_BASE_ADDR;
 
 	size = imx_v2_sdram_size((void *)MX35_ESDCTL_BASE_ADDR, 0);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
