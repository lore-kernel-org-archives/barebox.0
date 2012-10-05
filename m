Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK5Gc-0004P3-HO
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 10:36:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 12:36:23 +0200
Message-Id: <1349433383-8469-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349433383-8469-1-git-send-email-s.hauer@pengutronix.de>
References: <1349433383-8469-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM i.MX: Add devicetree support to the ccm drivers
To: barebox@lists.infradead.org

This adds the compatible strings to the CCM drivers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx1.c  |    9 +++++++++
 arch/arm/mach-imx/clk-imx21.c |    9 +++++++++
 arch/arm/mach-imx/clk-imx25.c |    9 +++++++++
 arch/arm/mach-imx/clk-imx27.c |    9 +++++++++
 arch/arm/mach-imx/clk-imx31.c |    9 +++++++++
 arch/arm/mach-imx/clk-imx35.c |    9 +++++++++
 arch/arm/mach-imx/clk-imx5.c  |   18 ++++++++++++++++++
 arch/arm/mach-imx/clk-imx6.c  |    9 +++++++++
 8 files changed, 81 insertions(+)

diff --git a/arch/arm/mach-imx/clk-imx1.c b/arch/arm/mach-imx/clk-imx1.c
index 45e9c66..0d04a92 100644
--- a/arch/arm/mach-imx/clk-imx1.c
+++ b/arch/arm/mach-imx/clk-imx1.c
@@ -96,9 +96,18 @@ static int imx1_ccm_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id imx1_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx1-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx1_ccm_driver = {
 	.probe	= imx1_ccm_probe,
 	.name	= "imx1-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx1_ccm_dt_ids),
 };
 
 static int imx1_ccm_init(void)
diff --git a/arch/arm/mach-imx/clk-imx21.c b/arch/arm/mach-imx/clk-imx21.c
index 69aaa9e..a7c5732 100644
--- a/arch/arm/mach-imx/clk-imx21.c
+++ b/arch/arm/mach-imx/clk-imx21.c
@@ -107,9 +107,18 @@ static int imx21_ccm_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id imx21_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx21-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx21_ccm_driver = {
 	.probe	= imx21_ccm_probe,
 	.name	= "imx21-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx21_ccm_dt_ids),
 };
 
 static int imx21_ccm_init(void)
diff --git a/arch/arm/mach-imx/clk-imx25.c b/arch/arm/mach-imx/clk-imx25.c
index 3b9588c..0a947a2 100644
--- a/arch/arm/mach-imx/clk-imx25.c
+++ b/arch/arm/mach-imx/clk-imx25.c
@@ -142,9 +142,18 @@ static int imx25_ccm_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id imx25_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx25-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx25_ccm_driver = {
 	.probe	= imx25_ccm_probe,
 	.name	= "imx25-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx25_ccm_dt_ids),
 };
 
 static int imx25_ccm_init(void)
diff --git a/arch/arm/mach-imx/clk-imx27.c b/arch/arm/mach-imx/clk-imx27.c
index abfde0f..912d3f1 100644
--- a/arch/arm/mach-imx/clk-imx27.c
+++ b/arch/arm/mach-imx/clk-imx27.c
@@ -142,9 +142,18 @@ static int imx27_ccm_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id imx27_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx27-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx27_ccm_driver = {
 	.probe	= imx27_ccm_probe,
 	.name	= "imx27-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx27_ccm_dt_ids),
 };
 
 static int imx27_ccm_init(void)
diff --git a/arch/arm/mach-imx/clk-imx31.c b/arch/arm/mach-imx/clk-imx31.c
index cf8963a..aa1b652 100644
--- a/arch/arm/mach-imx/clk-imx31.c
+++ b/arch/arm/mach-imx/clk-imx31.c
@@ -121,9 +121,18 @@ static int imx31_ccm_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id imx31_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx31-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx31_ccm_driver = {
 	.probe	= imx31_ccm_probe,
 	.name	= "imx31-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx31_ccm_dt_ids),
 };
 
 static int imx31_ccm_init(void)
diff --git a/arch/arm/mach-imx/clk-imx35.c b/arch/arm/mach-imx/clk-imx35.c
index dfa7561..5b5a9e7 100644
--- a/arch/arm/mach-imx/clk-imx35.c
+++ b/arch/arm/mach-imx/clk-imx35.c
@@ -174,9 +174,18 @@ static int imx35_ccm_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id imx35_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx35-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx35_ccm_driver = {
 	.probe	= imx35_ccm_probe,
 	.name	= "imx35-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx35_ccm_dt_ids),
 };
 
 static int imx35_ccm_init(void)
diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
index 365fcb3..03a1843 100644
--- a/arch/arm/mach-imx/clk-imx5.c
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -233,9 +233,18 @@ static int imx51_ccm_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id imx51_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx51-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx51_ccm_driver = {
 	.probe	= imx51_ccm_probe,
 	.name	= "imx51-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx51_ccm_dt_ids),
 };
 
 static int imx51_ccm_init(void)
@@ -285,9 +294,18 @@ static int imx53_ccm_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id imx53_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx53-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx53_ccm_driver = {
 	.probe	= imx53_ccm_probe,
 	.name	= "imx53-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx53_ccm_dt_ids),
 };
 
 static int imx53_ccm_init(void)
diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index 19a8bc6..a1da47a 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -294,9 +294,18 @@ static int imx6_ccm_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id imx6_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx6-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx6_ccm_driver = {
 	.probe	= imx6_ccm_probe,
 	.name	= "imx6-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx6_ccm_dt_ids),
 };
 
 static int imx6_ccm_init(void)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
