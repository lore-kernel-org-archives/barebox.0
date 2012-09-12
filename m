Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBtDo-0001tH-PY
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 20:07:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Sep 2012 22:06:47 +0200
Message-Id: <1347480407-16865-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
References: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/15] ARM i.MX: Add devicetree support for clocksource driver
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clocksource.c |   13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index 166710c..31a5f25 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -138,6 +138,18 @@ static int imx_gpt_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id imx_gpt_dt_ids[] = {
+	{
+		.compatible = "fsl,imx1-gpt",
+		.data = (unsigned long)&regs_imx1,
+	}, {
+		.compatible = "fsl,imx31-gpt",
+		.data = (unsigned long)&regs_imx31,
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct platform_device_id imx_gpt_ids[] = {
 	{
 		.name = "imx1-gpt",
@@ -153,6 +165,7 @@ static struct platform_device_id imx_gpt_ids[] = {
 static struct driver_d imx_gpt_driver = {
 	.name = "imx-gpt",
 	.probe = imx_gpt_probe,
+	.of_compatible = DRV_OF_COMPAT(imx_gpt_dt_ids),
 	.id_table = imx_gpt_ids,
 };
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
