Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwsMq-0002Oh-Eq
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 10:11:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  2 Aug 2012 12:10:12 +0200
Message-Id: <1343902216-13262-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1343902216-13262-1-git-send-email-s.hauer@pengutronix.de>
References: <1343902216-13262-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] mtd OMAP NAND: Fix dev_ready handling
To: barebox@lists.infradead.org

- dev_ready is supposed to return whether the device is ready or
  not, not to poll until the device is ready.
- dev_ready should return true for ready and false for not ready
- waitpin polarity is not needed (at least the kernel does not have it)
- wait_mon_mask must be 32bit.

The code was unused since no board specified a wait pin, so no breakage
included. This also removes the now unused timeout variable from
platformdata.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/devices-gpmc-nand.c      |    2 --
 arch/arm/mach-omap/include/mach/gpmc_nand.h |   13 ----------
 drivers/mtd/nand/nand_omap_gpmc.c           |   35 ++++++---------------------
 3 files changed, 7 insertions(+), 43 deletions(-)

diff --git a/arch/arm/mach-omap/devices-gpmc-nand.c b/arch/arm/mach-omap/devices-gpmc-nand.c
index cf87b57..9d0ab6e 100644
--- a/arch/arm/mach-omap/devices-gpmc-nand.c
+++ b/arch/arm/mach-omap/devices-gpmc-nand.c
@@ -41,8 +41,6 @@
 
 /** NAND platform specific settings settings */
 static struct gpmc_nand_platform_data nand_plat = {
-	.cs = 0,
-	.max_timeout = MSECOND,
 	.wait_mon_pin = 0,
 };
 
diff --git a/arch/arm/mach-omap/include/mach/gpmc_nand.h b/arch/arm/mach-omap/include/mach/gpmc_nand.h
index b9c659d..8a6927b 100644
--- a/arch/arm/mach-omap/include/mach/gpmc_nand.h
+++ b/arch/arm/mach-omap/include/mach/gpmc_nand.h
@@ -50,10 +50,6 @@ struct gpmc_nand_platform_data {
 	/** If there are any special setups you'd want to do */
 	int (*nand_setup) (struct gpmc_nand_platform_data *);
 
-	/** set up if we want H/w ECC here and other
-	 * platform specific configs here
-	 */
-	unsigned short plat_options;
 	/** ecc mode to use */
 	enum gpmc_ecc_mode ecc_mode;
 	/** setup any special options */
@@ -62,8 +58,6 @@ struct gpmc_nand_platform_data {
 	char device_width;
 	/** Set this to WAITx+1, so GPMC WAIT0 will be 1 and so on. */
 	char wait_mon_pin;
-	/** Set this to the max timeout for the device */
-	uint64_t max_timeout;
 
 	/* if you like a custom oob use this. */
 	struct nand_ecclayout *oob;
@@ -71,13 +65,6 @@ struct gpmc_nand_platform_data {
 	void *priv;
 };
 
-/** Platform specific options definitions */
-/** plat_options: Wait montioring pin low */
-#define NAND_WAITPOL_LOW        (0 << 0)
-/** plat_options: Wait montioring pin high */
-#define NAND_WAITPOL_HIGH       (1 << 0)
-#define NAND_WAITPOL_MASK       (1 << 0)
-
 int gpmc_generic_nand_devices_init(int cs, int width,
 			enum gpmc_ecc_mode, struct gpmc_config *nand_cfg);
 
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 86d4574..08008e7 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -22,11 +22,7 @@
  * static struct gpmc_nand_platform_data nand_plat = {
  *	.cs = give the chip select of the device
  *	.device_width = what is the width of the device 8 or 16?
- *	.max_timeout = delay desired for operation
  *	.wait_mon_pin = do you use wait monitoring? if so wait pin
- *	.plat_options = platform options.
- *		NAND_HWECC_ENABLE/DISABLE - hw ecc enable/disable
- *		NAND_WAITPOL_LOW/HIGH - wait pin polarity
  *	.oob = if you would like to replace oob with a custom OOB.
  *	.nand_setup  = if you would like a special setup function to be called
  *	.priv = any params you'd like to save(e.g. like nand_setup to use)
@@ -112,10 +108,8 @@ struct gpmc_nand_info {
 	void *gpmc_address;
 	void *gpmc_data;
 	void __iomem *gpmc_base;
-	unsigned char wait_mon_mask;
-	uint64_t timeout;
+	u32 wait_mon_mask;
 	unsigned inuse:1;
-	unsigned wait_pol:1;
 	unsigned char ecc_parity_pairs;
 	enum gpmc_ecc_mode ecc_mode;
 };
@@ -191,25 +185,11 @@ static int omap_dev_ready(struct mtd_info *mtd)
 {
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
-	uint64_t start = get_time_ns();
-	unsigned long comp;
-
-	/* What do we mean by assert and de-assert? */
-	comp = (oinfo->wait_pol == NAND_WAITPOL_HIGH) ?
-	    oinfo->wait_mon_mask : 0x0;
-	while (1) {
-		/* Breakout condition */
-		if (is_timeout(start, oinfo->timeout)) {
-			debug("%s timedout\n", __func__);
-			return -ETIMEDOUT;
-		}
-		/* if the wait is released, we are good to go */
-		if (comp ==
-		    (readl(oinfo->gpmc_base + GPMC_STATUS) &&
-		     oinfo->wait_mon_mask))
-			break;
-	}
-	return 0;
+
+	if (readl(oinfo->gpmc_base + GPMC_STATUS) & oinfo->wait_mon_mask)
+		return 1;
+	else
+		return 0;
 }
 
 /**
@@ -853,7 +833,6 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	oinfo->gpmc_command = (void *)(cs_base + GPMC_CS_NAND_COMMAND);
 	oinfo->gpmc_address = (void *)(cs_base + GPMC_CS_NAND_ADDRESS);
 	oinfo->gpmc_data = (void *)(cs_base + GPMC_CS_NAND_DATA);
-	oinfo->timeout = pdata->max_timeout;
 	dev_dbg(pdev, "GPMC base=0x%p cmd=0x%p address=0x%p data=0x%p cs_base=0x%p\n",
 		oinfo->gpmc_base, oinfo->gpmc_command, oinfo->gpmc_address,
 		oinfo->gpmc_data, cs_base);
@@ -879,11 +858,11 @@ static int gpmc_nand_probe(struct device_d *pdev)
 		err = -EINVAL;
 		goto out_release_mem;
 	}
+
 	if (pdata->wait_mon_pin) {
 		/* Set up the wait monitoring mask
 		 * This is GPMC_STATUS reg relevant */
 		oinfo->wait_mon_mask = (0x1 << (pdata->wait_mon_pin - 1)) << 8;
-		oinfo->wait_pol = (pdata->plat_options & NAND_WAITPOL_MASK);
 		nand->dev_ready = omap_dev_ready;
 		nand->chip_delay = 0;
 	} else {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
