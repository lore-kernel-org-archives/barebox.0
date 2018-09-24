Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g4MVF-0003pk-Qj
 for barebox@lists.infradead.org; Mon, 24 Sep 2018 08:46:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2018 10:45:47 +0200
Message-Id: <20180924084547.28914-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: bbu: use full path name for mmcboot handler
To: Barebox List <barebox@lists.infradead.org>

When doing barebox update over fastboot the fastboot code checks for
existance of file given in the filename argument, so add the "/dev/"
component to the handler.
With this fastboot works with the mmcboot handler.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma6x/board.c       |  2 +-
 arch/arm/mach-imx/imx-bbu-internal.c | 14 ++++++++------
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
index ecf8fa06af..9561d1edd8 100644
--- a/arch/arm/boards/tqma6x/board.c
+++ b/arch/arm/boards/tqma6x/board.c
@@ -105,7 +105,7 @@ static int tqma6x_env_init(void)
 
 	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
 		BBU_HANDLER_FLAG_DEFAULT);
-	imx6_bbu_internal_mmcboot_register_handler("emmc", "mmc2", 0);
+	imx6_bbu_internal_mmcboot_register_handler("emmc", "/dev/mmc2", 0);
 
 	device_detect_by_name("mmc2");
 
diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 504e359bc3..afb768ba8e 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -409,9 +409,11 @@ static int imx_bbu_internal_v2_mmcboot_update(struct bbu_handler *handler,
 	int ret;
 	char *bootpartvar;
 	const char *bootpart;
-	char *devicefile;
+	const char *devicefile = data->devicefile;
+	char *bootpartfile;
+	const char *devname = devpath_to_name(data->devicefile);
 
-	ret = asprintf(&bootpartvar, "%s.boot", data->devicefile);
+	ret = asprintf(&bootpartvar, "%s.boot", devname);
 	if (ret < 0)
 		return ret;
 
@@ -423,23 +425,23 @@ static int imx_bbu_internal_v2_mmcboot_update(struct bbu_handler *handler,
 		bootpart = "boot0";
 	}
 
-	ret = asprintf(&devicefile, "/dev/%s.%s", data->devicefile, bootpart);
+	ret = asprintf(&bootpartfile, "%s.%s", devicefile, bootpart);
 	if (ret < 0)
 		goto free_bootpartvar;
 
-	ret = imx_bbu_check_prereq(imx_handler, devicefile, data,
+	ret = imx_bbu_check_prereq(imx_handler, bootpartfile, data,
 				   filetype_imx_image_v2);
 	if (ret)
 		goto free_devicefile;
 
-	ret = imx_bbu_write_device(imx_handler, devicefile, data, data->image, data->len);
+	ret = imx_bbu_write_device(imx_handler, bootpartfile, data, data->image, data->len);
 
 	if (!ret)
 		/* on success switch boot source */
 		ret = setenv(bootpartvar, bootpart);
 
 free_devicefile:
-	free(devicefile);
+	free(bootpartfile);
 
 free_bootpartvar:
 	free(bootpartvar);
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
