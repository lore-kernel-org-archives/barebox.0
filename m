Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ti8Zk-0007ky-Rq
 for barebox@lists.infradead.org; Mon, 10 Dec 2012 18:59:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Dec 2012 19:59:33 +0100
Message-Id: <1355165973-5846-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] esdctl: fix reset default bug on i.MX27/31
To: barebox@lists.infradead.org

The i.MX27/31 have the second chip select enabled by reset default.
This can be considered as a hardware bug, because even boards which
need this settings cannot work out of reset because of the missing
initialization sequence. Detect this reset default setting and disable
this chipselect then to be able to properly detect the SDRAM size.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c |   25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index a40399a..dd70e6d 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -199,6 +199,27 @@ static void imx_esdctl_v2_add_mem(void *esdctlbase, struct imx_esdctl_data *data
 			data->base1, imx_v2_sdram_size(esdctlbase, 1));
 }
 
+/*
+ * On i.MX27 and i.MX31 the second chipselect is enabled by reset default.
+ * This setting makes it impossible to detect the correct SDRAM size on
+ * these SoCs. We disable the chipselect if this reset default setting is
+ * found. This of course leads to incorrect SDRAM detection on boards which
+ * really have this reset default as a valid setting. If you have such a
+ * board drop a mail to search for a solution.
+ */
+#define ESDCTL1_RESET_DEFAULT 0x81120080
+
+static void imx_esdctl_v2_bug_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
+{
+	u32 ctlval = readl(esdctlbase + IMX_ESDCTL1);
+
+	if (ctlval == ESDCTL1_RESET_DEFAULT)
+		writel(0x0, esdctlbase + IMX_ESDCTL1);
+
+	add_mem(data->base0, imx_v2_sdram_size(esdctlbase, 0),
+			data->base1, imx_v2_sdram_size(esdctlbase, 1));
+}
+
 static void imx_esdctl_v3_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
 {
 	add_mem(data->base0, imx_v3_sdram_size(esdctlbase, 0),
@@ -245,13 +266,13 @@ static __maybe_unused struct imx_esdctl_data imx25_data = {
 static __maybe_unused struct imx_esdctl_data imx27_data = {
 	.base0 = MX27_CSD0_BASE_ADDR,
 	.base1 = MX27_CSD1_BASE_ADDR,
-	.add_mem = imx_esdctl_v2_add_mem,
+	.add_mem = imx_esdctl_v2_bug_add_mem,
 };
 
 static __maybe_unused struct imx_esdctl_data imx31_data = {
 	.base0 = MX31_CSD0_BASE_ADDR,
 	.base1 = MX31_CSD1_BASE_ADDR,
-	.add_mem = imx_esdctl_v2_add_mem,
+	.add_mem = imx_esdctl_v2_bug_add_mem,
 };
 
 static __maybe_unused struct imx_esdctl_data imx35_data = {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
