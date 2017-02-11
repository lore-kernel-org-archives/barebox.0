Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ccgDQ-0007EL-FF
 for barebox@lists.infradead.org; Sat, 11 Feb 2017 22:32:26 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sat, 11 Feb 2017 23:31:39 +0100
Message-Id: <1486852299-30432-2-git-send-email-akurz@blala.de>
In-Reply-To: <1486852299-30432-1-git-send-email-akurz@blala.de>
References: <1486852299-30432-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 2/2] i.MX: esdhc: fix imx-esdhc driver for non-OF boards
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Commit 39f7a7ee8b68 ("i.MX: esdhc: Do not rely on CPU type for quirks")
made imx-esdhc dependent on OF and broke probing for all non-OF boards.
Since newer platforms like mx6 and vf610 are restricted to OF, the non-OF
probing only needs to distinguish mx5 vs earlier SoC.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 drivers/mci/imx-esdhc.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index b2961cc..141d715 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -600,6 +600,9 @@ static int fsl_esdhc_detect(struct device_d *dev)
 	return mci_detect_card(&host->mci);
 }
 
+static struct esdhc_soc_data esdhc_imx25_data;
+static struct esdhc_soc_data esdhc_imx53_data;
+
 static int fsl_esdhc_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -613,9 +616,16 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	host = xzalloc(sizeof(*host));
 	mci = &host->mci;
 
-	host->socdata = of_device_get_match_data(dev);
-	if (!host->socdata)
-		return -EINVAL;
+	if (IS_ENABLED(CONFIG_OFDEVICE)) {
+		host->socdata = of_device_get_match_data(dev);
+		if (!host->socdata)
+			return -EINVAL;
+	} else {
+		if (cpu_is_mx50() || cpu_is_mx51() || cpu_is_mx53())
+			host->socdata = &esdhc_imx53_data;
+		else
+			host->socdata = &esdhc_imx25_data;
+	}
 
 	host->clk = clk_get(dev, "per");
 	if (IS_ERR(host->clk))
@@ -693,16 +703,6 @@ static struct esdhc_soc_data esdhc_imx25_data = {
 	.flags = ESDHC_FLAG_ENGCM07207,
 };
 
-static struct esdhc_soc_data esdhc_imx50_data = {
-	.flags = ESDHC_FLAG_MULTIBLK_NO_INT,
-	/* .flags = 0, */
-};
-
-static struct esdhc_soc_data esdhc_imx51_data = {
-	.flags = ESDHC_FLAG_MULTIBLK_NO_INT,
-	/* .flags = 0, */
-};
-
 static struct esdhc_soc_data esdhc_imx53_data = {
 	.flags = ESDHC_FLAG_MULTIBLK_NO_INT,
 };
@@ -724,8 +724,8 @@ static struct esdhc_soc_data usdhc_imx6sx_data = {
 
 static __maybe_unused struct of_device_id fsl_esdhc_compatible[] = {
 	{ .compatible = "fsl,imx25-esdhc",  .data = &esdhc_imx25_data  },
-	{ .compatible = "fsl,imx50-esdhc",  .data = &esdhc_imx50_data  },
-	{ .compatible = "fsl,imx51-esdhc",  .data = &esdhc_imx51_data  },
+	{ .compatible = "fsl,imx50-esdhc",  .data = &esdhc_imx53_data  },
+	{ .compatible = "fsl,imx51-esdhc",  .data = &esdhc_imx53_data  },
 	{ .compatible = "fsl,imx53-esdhc",  .data = &esdhc_imx53_data  },
 	{ .compatible = "fsl,imx6q-usdhc",  .data = &usdhc_imx6q_data  },
 	{ .compatible = "fsl,imx6sl-usdhc", .data = &usdhc_imx6sl_data },
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
