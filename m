Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fnA-0007sg-Td
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:45:55 +0100
Message-Id: <20200217124623.14520-15-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/42] ARM: i.MX8M: rename functions to be i.MX8M specific
To: Barebox List <barebox@lists.infradead.org>

imx8_esdhc_load_image() and friends can't be used on the big variants of
the i.MX8, so rename to imx8m_esdhc_load_image()

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c    |  2 +-
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c |  2 +-
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c    |  2 +-
 arch/arm/mach-imx/include/mach/xload.h       |  2 +-
 drivers/mci/imx-esdhc-pbl.c                  | 12 ++++++------
 5 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index bf84189139..a501f03722 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -86,7 +86,7 @@ static __noreturn noinline void nxp_imx8mq_evk_start(void)
 		 */
 		imx8mq_get_boot_source(&src, &instance);
 		if (src == BOOTSOURCE_MMC)
-			ret = imx8_esdhc_load_image(instance, false);
+			ret = imx8m_esdhc_load_image(instance, false);
 		BUG_ON(ret);
 
 		memcpy((void *)MX8MQ_ATF_BL33_BASE_ADDR,
diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
index 6983d44b95..f14366a27b 100644
--- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
@@ -55,7 +55,7 @@ static void phytec_imx8mq_som_sram_setup(void)
 	imx8mq_get_boot_source(&src, &instance);
 
 	if (src == BOOTSOURCE_MMC)
-		ret = imx8_esdhc_load_image(instance, true);
+		ret = imx8m_esdhc_load_image(instance, true);
 
 	BUG_ON(ret);
 }
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index 232de71483..482d70cb01 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -77,7 +77,7 @@ static void zii_imx8mq_dev_sram_setup(void)
 	imx8mq_get_boot_source(&src, &instance);
 
 	if (src == BOOTSOURCE_MMC)
-		ret = imx8_esdhc_load_image(instance, true);
+		ret = imx8m_esdhc_load_image(instance, true);
 
 	BUG_ON(ret);
 }
diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
index 9709b13dfb..dca05aa5d4 100644
--- a/arch/arm/mach-imx/include/mach/xload.h
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -5,7 +5,7 @@ int imx53_nand_start_image(void);
 int imx6_spi_load_image(int instance, unsigned int flash_offset, void *buf, int len);
 int imx6_spi_start_image(int instance);
 int imx6_esdhc_start_image(int instance);
-int imx8_esdhc_load_image(int instance, bool start);
+int imx8m_esdhc_load_image(int instance, bool start);
 
 int imx_image_size(void);
 int piggydata_size(void);
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 2579cfd9d1..6610cee3b5 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -201,9 +201,9 @@ static void imx_esdhc_init(struct fsl_esdhc_host *host,
 		      FIELD_PREP(WML_RD_WML_MASK, SECTOR_WML));
 }
 
-static int imx8_esdhc_init(struct fsl_esdhc_host *host,
-			   struct esdhc_soc_data *data,
-			   int instance)
+static int imx8m_esdhc_init(struct fsl_esdhc_host *host,
+			    struct esdhc_soc_data *data,
+			    int instance)
 {
 	switch (instance) {
 	case 0:
@@ -261,7 +261,7 @@ int imx6_esdhc_start_image(int instance)
 }
 
 /**
- * imx8_esdhc_load_image - Load and optionally start an image from USDHC controller
+ * imx8m_esdhc_load_image - Load and optionally start an image from USDHC controller
  * @instance: The USDHC controller instance (0..2)
  * @start: Whether to directly start the loaded image
  *
@@ -273,13 +273,13 @@ int imx6_esdhc_start_image(int instance)
  * Return: If successful, this function does not return (if directly started)
  * or 0. A negative error code is returned when this function fails.
  */
-int imx8_esdhc_load_image(int instance, bool start)
+int imx8m_esdhc_load_image(int instance, bool start)
 {
 	struct esdhc_soc_data data;
 	struct fsl_esdhc_host host;
 	int ret;
 
-	ret = imx8_esdhc_init(&host, &data, instance);
+	ret = imx8m_esdhc_init(&host, &data, instance);
 	if (ret)
 		return ret;
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
