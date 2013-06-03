Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjSL2-0004Fi-HU
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 10:50:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  3 Jun 2013 12:49:37 +0200
Message-Id: <1370256580-3113-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] mci: rename capabilities flags
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

Use MMC_CAP_ names instead of MMC_MODE_. This makes it more
clear that these are capabilities of host/card and do not refer
to the current mode. These are in line with the Linux Kernel
except for MMC_CAP_MMC_HIGHSPEED_52MHZ which could be fixed
later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ccxmx51/ccxmx51js.c                |  4 ++--
 arch/arm/boards/chumby_falconwing/falconwing.c     |  2 +-
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |  2 +-
 arch/arm/boards/dmo-mx6-realq7/board.c             |  2 +-
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |  2 +-
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |  2 +-
 arch/arm/boards/friendlyarm-mini2440/mini2440.c    |  2 +-
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |  2 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c              |  2 +-
 arch/arm/boards/tqma53/board.c                     |  2 +-
 arch/arm/mach-imx/include/mach/esdhc.h             |  2 +-
 drivers/mci/atmel_mci.c                            |  6 +++---
 drivers/mci/imx-esdhc.c                            |  4 ++--
 drivers/mci/imx.c                                  |  2 +-
 drivers/mci/mci-bcm2835.c                          |  3 ++-
 drivers/mci/mci-core.c                             | 24 +++++++++++-----------
 drivers/mci/omap_hsmmc.c                           |  3 ++-
 drivers/mci/pxamci.c                               |  2 +-
 include/mci.h                                      | 11 +++++-----
 19 files changed, 41 insertions(+), 38 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51js.c b/arch/arm/boards/ccxmx51/ccxmx51js.c
index ae31caf..a8917aa 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51js.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51js.c
@@ -69,13 +69,13 @@ static iomux_v3_cfg_t ccxmx51js_pads[] = {
 static struct esdhc_platform_data sdhc1_pdata = {
 	.cd_type	= ESDHC_CD_NONE,
 	.wp_type	= ESDHC_WP_NONE,
-	.caps		= MMC_MODE_4BIT,
+	.caps		= MMC_CAP_4_BIT_DATA,
 };
 
 static struct esdhc_platform_data sdhc3_pdata = {
 	.cd_type	= ESDHC_CD_NONE,
 	.wp_type	= ESDHC_WP_NONE,
-	.caps		= MMC_MODE_4BIT | MMC_MODE_8BIT,
+	.caps		= MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA,
 };
 
 static struct imxusb_platformdata ccxmx51js_usbhost1_pdata = {
diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 720fe32..cb934ee 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -32,7 +32,7 @@
 #include <mach/usb.h>
 
 static struct mxs_mci_platform_data mci_pdata = {
-	.caps = MMC_MODE_4BIT | MMC_MODE_HS | MMC_MODE_HS_52MHz,
+	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED,
 	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
 };
 
diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index a37b089..9054afa 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -72,7 +72,7 @@ static const uint32_t cfa10036_pads[] = {
 };
 
 static struct mxs_mci_platform_data mci_pdata = {
-	.caps = MMC_MODE_8BIT,
+	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA,
 	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
 	.f_min = 400 * 1000,
 	.f_max = 25000000,
diff --git a/arch/arm/boards/dmo-mx6-realq7/board.c b/arch/arm/boards/dmo-mx6-realq7/board.c
index 35ef72c..6ea95b9 100644
--- a/arch/arm/boards/dmo-mx6-realq7/board.c
+++ b/arch/arm/boards/dmo-mx6-realq7/board.c
@@ -312,7 +312,7 @@ static const struct spi_board_info realq7_spi_board_info[] = {
 
 static struct esdhc_platform_data realq7_emmc_data = {
 	.cd_type = ESDHC_CD_PERMANENT,
-	.caps = MMC_MODE_8BIT,
+	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA,
 	.devname = "emmc",
 };
 
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index 76377b1..dddefb2 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -28,7 +28,7 @@
 #include <mach/usb.h>
 
 static struct mxs_mci_platform_data mci_pdata = {
-	.caps = MMC_MODE_4BIT | MMC_MODE_HS | MMC_MODE_HS_52MHz,
+	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED,
 	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
 	.f_min = 400000,
 };
diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index 364b6ee..bb2dbcc 100644
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -136,7 +136,7 @@ static const uint32_t mx28evk_pads[] = {
 };
 
 static struct mxs_mci_platform_data mci_pdata = {
-	.caps = MMC_MODE_8BIT,
+	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA,
 	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
 	.f_min = 400 * 1000,
 	.f_max = 25000000,
diff --git a/arch/arm/boards/friendlyarm-mini2440/mini2440.c b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
index c4b97a2..de07bda 100644
--- a/arch/arm/boards/friendlyarm-mini2440/mini2440.c
+++ b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
@@ -62,7 +62,7 @@ static struct dm9000_platform_data dm9000_data = {
 };
 
 static struct s3c_mci_platform_data mci_data = {
-	.caps = MMC_MODE_4BIT | MMC_MODE_HS | MMC_MODE_HS_52MHz,
+	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED,
 	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,
 	.gpio_detect = 232,	/* GPG8_GPIO */
 	.detect_invert = 0,
diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
index 9620e85..116a9ea 100644
--- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
+++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
@@ -37,7 +37,7 @@
 #include <mach/mci.h>
 
 static struct mxs_mci_platform_data mci_pdata = {
-	.caps = MMC_MODE_4BIT | MMC_MODE_HS | MMC_MODE_HS_52MHz,
+	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED,
 	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
 	.f_min = 400000,
 };
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index a0109d6..8ee8ac2 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -30,7 +30,7 @@
 #include <mach/ocotp.h>
 
 static struct mxs_mci_platform_data mci_pdata = {
-	.caps = MMC_MODE_4BIT,
+	.caps = MMC_CAP_4_BIT_DATA,
 	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
 	.f_min = 400 * 1000,
 	.f_max = 25000000,
diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index 0054a7e..19ad37e 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -220,7 +220,7 @@ static struct esdhc_platform_data tqma53_sd2_data = {
 static struct esdhc_platform_data tqma53_sd3_data = {
 	.cd_type = ESDHC_CD_PERMANENT,
 	.wp_type = ESDHC_WP_NONE,
-	.caps = MMC_MODE_8BIT | MMC_MODE_4BIT,
+	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA,
 };
 
 static int tqma53_devices_init(void)
diff --git a/arch/arm/mach-imx/include/mach/esdhc.h b/arch/arm/mach-imx/include/mach/esdhc.h
index 06863c8..add1691 100644
--- a/arch/arm/mach-imx/include/mach/esdhc.h
+++ b/arch/arm/mach-imx/include/mach/esdhc.h
@@ -32,7 +32,7 @@ enum cd_types {
  * @cd_gpio:	gpio for card_detect interrupt
  * @wp_type:	type of write_protect method (see wp_types enum above)
  * @cd_type:	type of card_detect method (see cd_types enum above)
- * @caps:	supported bus width capabilities (MMC_MODE_4BIT | MMC_MODE_8BIT)
+ * @caps:	supported bus width capabilities (MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA)
  */
 
 struct esdhc_platform_data {
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index b5873f9..dca3813 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -565,9 +565,9 @@ static int atmci_probe(struct device_d *hw_dev)
 	host->mci.hw_dev = hw_dev;
 
 	if (pd->bus_width >= 4)
-		host->mci.host_caps |= MMC_MODE_4BIT;
+		host->mci.host_caps |= MMC_CAP_4_BIT_DATA;
 	if (pd->bus_width == 8)
-		host->mci.host_caps |= MMC_MODE_8BIT;
+		host->mci.host_caps |= MMC_CAP_8_BIT_DATA;
 	host->slot_b = pd->slot_b;
 
 	host->regs = dev_request_mem_region(hw_dev, 0);
@@ -594,7 +594,7 @@ static int atmci_probe(struct device_d *hw_dev)
 	atmci_get_cap(host);
 
 	if (host->caps.has_highspeed)
-		host->mci.host_caps |= MMC_MODE_HS;
+		host->mci.host_caps |= MMC_CAP_SD_HIGHSPEED;
 
 	if (host->slot_b)
 		host->sdc_reg = ATMCI_SDCSEL_SLOT_B;
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 8053b79..8cf3e64 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -540,7 +540,7 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	if (pdata && pdata->caps)
 		mci->host_caps = pdata->caps;
 	else
-		mci->host_caps = MMC_MODE_4BIT;
+		mci->host_caps = MMC_CAP_4_BIT_DATA;
 
 	if (pdata && pdata->devname) {
 		mci->devname = pdata->devname;
@@ -551,7 +551,7 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	}
 
 	if (caps & ESDHC_HOSTCAPBLT_HSS)
-		mci->host_caps |= MMC_MODE_HS_52MHz | MMC_MODE_HS;
+		mci->host_caps |= MMC_CAP_MMC_HIGHSPEED | MMC_CAP_SD_HIGHSPEED;
 
 	host->mci.send_cmd = esdhc_send_cmd;
 	host->mci.set_ios = esdhc_set_ios;
diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 2bf48eb..aea78c7 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -504,7 +504,7 @@ static int mxcmci_probe(struct device_d *dev)
 	host->mci.send_cmd = mxcmci_request;
 	host->mci.set_ios = mxcmci_set_ios;
 	host->mci.init = mxcmci_init;
-	host->mci.host_caps = MMC_MODE_4BIT;
+	host->mci.host_caps = MMC_CAP_4_BIT_DATA;
 	host->mci.hw_dev = dev;
 
 	host->base = dev_request_mem_region(dev, 0);
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index b76f134..abd38a3 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -553,7 +553,8 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
 		return -EBUSY;
 	}
 
-	host->mci.host_caps |= MMC_MODE_4BIT | MMC_MODE_HS | MMC_MODE_HS_52MHz;
+	host->mci.host_caps |= MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED |
+		MMC_CAP_MMC_HIGHSPEED;
 
 	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index ce568df..fc921e5 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -434,7 +434,7 @@ static int mmc_change_freq(struct mci *mci)
 	if (mci->version < MMC_VERSION_4)
 		return 0;
 
-	mci->card_caps |= MMC_MODE_4BIT;
+	mci->card_caps |= MMC_CAP_4_BIT_DATA;
 
 	err = mci_send_ext_csd(mci, mci->ext_csd);
 	if (err) {
@@ -467,9 +467,9 @@ static int mmc_change_freq(struct mci *mci)
 
 	/* High Speed is set, there are two types: 52MHz and 26MHz */
 	if (cardtype & EXT_CSD_CARD_TYPE_52)
-		mci->card_caps |= MMC_MODE_HS_52MHz | MMC_MODE_HS;
+		mci->card_caps |= MMC_CAP_MMC_HIGHSPEED_52MHZ | MMC_CAP_MMC_HIGHSPEED;
 	else
-		mci->card_caps |= MMC_MODE_HS;
+		mci->card_caps |= MMC_CAP_MMC_HIGHSPEED;
 
 	if (IS_ENABLED(CONFIG_MCI_MMC_BOOT_PARTITIONS) &&
 			mci->ext_csd[EXT_CSD_REV] >= 3 && mci->ext_csd[EXT_CSD_BOOT_MULT]) {
@@ -615,7 +615,7 @@ retry_scr:
 	}
 
 	if (mci->scr[0] & SD_DATA_4BIT)
-		mci->card_caps |= MMC_MODE_4BIT;
+		mci->card_caps |= MMC_CAP_4_BIT_DATA;
 
 	/* If high-speed isn't supported, we return */
 	if (!(__be32_to_cpu(switch_status[3]) & SD_HIGHSPEED_SUPPORTED))
@@ -628,7 +628,7 @@ retry_scr:
 	}
 
 	if ((__be32_to_cpu(switch_status[4]) & 0x0f000000) == 0x01000000)
-		mci->card_caps |= MMC_MODE_HS;
+		mci->card_caps |= MMC_CAP_SD_HIGHSPEED;
 
 	return 0;
 }
@@ -900,7 +900,7 @@ static int mci_startup_sd(struct mci *mci)
 	struct mci_cmd cmd;
 	int err;
 
-	if (mci->card_caps & MMC_MODE_4BIT) {
+	if (mci->card_caps & MMC_CAP_4_BIT_DATA) {
 		dev_dbg(&mci->dev, "Prepare for bus width change\n");
 		mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, mci->rca << 16, MMC_RSP_R1);
 		err = mci_send_cmd(mci, &cmd, NULL);
@@ -920,7 +920,7 @@ static int mci_startup_sd(struct mci *mci)
 		mci_set_bus_width(mci, MMC_BUS_WIDTH_4);
 	}
 	/* if possible, speed up the transfer */
-	if (mci->card_caps & MMC_MODE_HS)
+	if (mci->card_caps & MMC_CAP_SD_HIGHSPEED)
 		mci_set_clock(mci, 50000000);
 	else
 		mci_set_clock(mci, 25000000);
@@ -943,8 +943,8 @@ static int mci_startup_mmc(struct mci *mci)
 	};
 
 	/* if possible, speed up the transfer */
-	if (mci->card_caps & MMC_MODE_HS) {
-		if (mci->card_caps & MMC_MODE_HS_52MHz)
+	if (mci->card_caps & MMC_CAP_MMC_HIGHSPEED) {
+		if (mci->card_caps & MMC_CAP_MMC_HIGHSPEED_52MHZ)
 			mci_set_clock(mci, 52000000);
 		else
 			mci_set_clock(mci, 26000000);
@@ -958,7 +958,7 @@ static int mci_startup_mmc(struct mci *mci)
 	 * the supported bus width or compare the ext csd values of current
 	 * bus width and ext csd values of 1 bit mode read earlier.
 	 */
-	if (host->host_caps & MMC_MODE_8BIT)
+	if (host->host_caps & MMC_CAP_8_BIT_DATA)
 		idx = 1;
 
 	for (; idx >= 0; idx--) {
@@ -1694,10 +1694,10 @@ void mci_of_parse(struct mci_host *host)
 
 	switch (bus_width) {
 	case 8:
-		host->host_caps |= MMC_MODE_8BIT;
+		host->host_caps |= MMC_CAP_8_BIT_DATA;
 		/* Hosts capable of 8-bit transfers can also do 4 bits */
 	case 4:
-		host->host_caps |= MMC_MODE_4BIT;
+		host->host_caps |= MMC_CAP_4_BIT_DATA;
 		break;
 	case 1:
 		break;
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index b379c31..62c79e1 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -592,7 +592,8 @@ static int omap_mmc_probe(struct device_d *dev)
 	hsmmc->mci.send_cmd = mmc_send_cmd;
 	hsmmc->mci.set_ios = mmc_set_ios;
 	hsmmc->mci.init = mmc_init_setup;
-	hsmmc->mci.host_caps = MMC_MODE_4BIT | MMC_MODE_HS_52MHz | MMC_MODE_HS;
+	hsmmc->mci.host_caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED |
+		MMC_CAP_MMC_HIGHSPEED;
 	hsmmc->mci.hw_dev = dev;
 
 	hsmmc->iobase = dev_request_mem_region(dev, 0);
diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index c1380d1..5ab88b8 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -343,7 +343,7 @@ static int pxamci_probe(struct device_d *dev)
 	host->mci.init = pxamci_init;
 	host->mci.send_cmd = pxamci_request;
 	host->mci.set_ios = pxamci_set_ios;
-	host->mci.host_caps = MMC_MODE_4BIT;
+	host->mci.host_caps = MMC_CAP_4_BIT_DATA;
 	host->mci.hw_dev = dev;
 	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 
diff --git a/include/mci.h b/include/mci.h
index bca374a..3989f46 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -44,11 +44,12 @@
 #define MMC_VERSION_3		(MMC_VERSION_MMC | 0x30)
 #define MMC_VERSION_4		(MMC_VERSION_MMC | 0x40)
 
-#define MMC_MODE_HS		0x001
-#define MMC_MODE_HS_52MHz	0x010
-#define MMC_CAP_SPI		0x020
-#define MMC_MODE_4BIT		0x100
-#define MMC_MODE_8BIT		0x200
+#define MMC_CAP_SPI			(1 << 0)
+#define MMC_CAP_4_BIT_DATA		(1 << 1)
+#define MMC_CAP_8_BIT_DATA		(1 << 2)
+#define MMC_CAP_SD_HIGHSPEED		(1 << 3)
+#define MMC_CAP_MMC_HIGHSPEED		(1 << 4)
+#define MMC_CAP_MMC_HIGHSPEED_52MHZ	(1 << 5)
 
 #define SD_DATA_4BIT		0x00040000
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
