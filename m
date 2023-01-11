Delivery-date: Wed, 11 Jan 2023 18:43:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf8Y-0091jl-RK
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 18:43:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf8W-0006L1-Pt
	for lore@pengutronix.de; Wed, 11 Jan 2023 18:43:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9X6x+8ZyNXf3R063uf7xowdU6GvO06b1BrryHaYpfnc=; b=boirRjyFj60RpvG6+Yi74s4TuI
	EE81v8E1w7JWVjhNVarppH+mi61VuJ+4kELE39shxfNgxZTr1PULidherJvvJmjnPtMyS82YPFK24
	q7UDis2+nATd3y35kDloCF7Av4niY+W/KJq6fR0Kw8RDWlgW+3pVP3JCA6eA9Fx5z8GOkyf1y5dU3
	JPDVNchAJ46O+v5EcJDifPyBf/pf4WcHXD2QobGyjR7Tako5namfwx7ury1Q01LOsoeKy0WxHi82o
	zl6zUY3uXzAzlHlqeJvRvM3smdxG3KLDke4lLg7gCToBFcQ5dqOGlqk2FyJkXuEMQmyLQTgesbhgX
	rAYb2KIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf6z-00CUA1-Ar; Wed, 11 Jan 2023 17:42:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf5T-00CTIE-CY
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 17:40:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5S-00054r-76; Wed, 11 Jan 2023 18:40:30 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5R-005M70-LI; Wed, 11 Jan 2023 18:40:29 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5O-007DGl-Jo; Wed, 11 Jan 2023 18:40:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 18:40:22 +0100
Message-Id: <20230111174023.1719129-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
References: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_094031_474967_C98E788A 
X-CRM114-Status: GOOD (  21.14  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/15] mtd: nand: drop DT support in legacy driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With the legacy binding removed from the barebox sama5d3_xplained DT,
the only remaining user of "atmel,at91rm9200-nand" is
dts/src/arm/at91rm9200.dtsi, which we don't use. Should DT support
ever be added to that platform, we should invest the time to update
the kernel DT to use the new EBI binding. Thus drop the now unused
DT support in the legacy driver, so only the new EBI binding is
supported with the new driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/nand/Kconfig        |   5 +-
 drivers/mtd/nand/atmel/legacy.c | 104 +-------------------------------
 2 files changed, 3 insertions(+), 106 deletions(-)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 4aeb2b603b95..4a673e94406c 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -101,11 +101,10 @@ config NAND_ATMEL
 	depends on ARCH_AT91 || (OFDEVICE && COMPILE_TEST)
 
 config NAND_ATMEL_LEGACY
-	def_bool y
+	def_bool !AT91_MULTI_BOARDS
 	depends on NAND_ATMEL
 	help
-	  Select legacy driver for non-DT-enabled platforms
-	  and for the deprecated non-EBI binding.
+	  Select legacy non-device tree enabled driver.
 
 config NAND_ATMEL_PMECC
 	bool
diff --git a/drivers/mtd/nand/atmel/legacy.c b/drivers/mtd/nand/atmel/legacy.c
index bd8923f93dd5..1f804eb53720 100644
--- a/drivers/mtd/nand/atmel/legacy.c
+++ b/drivers/mtd/nand/atmel/legacy.c
@@ -23,10 +23,6 @@
 #include <init.h>
 #include <gpio.h>
 
-#include <of.h>
-#include <of_gpio.h>
-#include <of_mtd.h>
-
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/rawnand.h>
 #include <linux/mtd/nand.h>
@@ -1109,92 +1105,6 @@ static void atmel_nand_hwctl(struct nand_chip *nand_chip, int mode)
 {
 }
 
-static int atmel_nand_of_init(struct atmel_nand_host *host, struct device_node *np)
-{
-	u32 val;
-	u32 offset[2];
-	int ecc_mode;
-	struct atmel_nand_data *board = host->board;
-	enum of_gpio_flags flags = 0;
-
-	if (!IS_ENABLED(CONFIG_OFDEVICE))
-		return -ENOSYS;
-
-	if (of_property_read_u32(np, "atmel,nand-addr-offset", &val) == 0) {
-		if (val >= 32) {
-			dev_err(host->dev, "invalid addr-offset %u\n", val);
-			return -EINVAL;
-		}
-		board->ale = val;
-	}
-
-	if (of_property_read_u32(np, "atmel,nand-cmd-offset", &val) == 0) {
-		if (val >= 32) {
-			dev_err(host->dev, "invalid cmd-offset %u\n", val);
-			return -EINVAL;
-		}
-		board->cle = val;
-	}
-
-	ecc_mode = of_get_nand_ecc_mode(np);
-
-	board->ecc_mode = ecc_mode < 0 ? NAND_ECC_SOFT : ecc_mode;
-
-	board->on_flash_bbt = of_get_nand_on_flash_bbt(np);
-
-	if (of_get_nand_bus_width(np) == 16)
-		board->bus_width_16 = 1;
-
-	board->rdy_pin = of_get_gpio_flags(np, 0, &flags);
-	board->enable_pin = of_get_gpio(np, 1);
-	board->det_pin = of_get_gpio(np, 2);
-
-	board->has_pmecc = of_property_read_bool(np, "atmel,has-pmecc");
-
-	if (!(board->ecc_mode == NAND_ECC_HW) || !board->has_pmecc)
-		return 0;	/* Not using PMECC */
-
-	/* use PMECC, get correction capability, sector size and lookup
-	* table offset.
-	* If correction bits and sector size are not specified, then
-	*   find
-	* them from NAND ONFI parameters.
-	*/
-	if (of_property_read_u32(np, "atmel,pmecc-cap", &val) == 0) {
-		if ((val != 2) && (val != 4) && (val != 8) && (val != 12) && (val != 24)) {
-			dev_err(host->dev, "Unsupported PMECC correction capability: %d"
-					" should be 2, 4, 8, 12 or 24\n", val);
-			return -EINVAL;
-		}
-
-		board->pmecc_corr_cap = (u8)val;
-	}
-
-	if (of_property_read_u32(np, "atmel,pmecc-sector-size", &val) == 0) {
-		if ((val != 512) && (val != 1024)) {
-				dev_err(host->dev, "Unsupported PMECC sector size: %d"
-					" should be 512 or 1024 bytes\n", val);
-			return -EINVAL;
-		}
-
-		board->pmecc_sector_size = (u16)val;
-	}
-
-	if (of_property_read_u32_array(np, "atmel,pmecc-lookup-table-offset", offset, 2) != 0) {
-		dev_err(host->dev, "Cannot get PMECC lookup table offset\n");
-		return -EINVAL;
-	}
-
-	if (!offset[0] && !offset[1]) {
-		dev_err(host->dev, "Invalid PMECC lookup table offset\n");
-		return -EINVAL;
-	}
-
-	board->pmecc_lookup_table_offset = (board->pmecc_sector_size == 512) ? offset[0] : offset[1];
-
-	return 0;
-}
-
 static int atmel_hw_nand_init_params(struct device *dev,
 					 struct atmel_nand_host *host)
 {
@@ -1281,13 +1191,7 @@ static int __init atmel_nand_probe(struct device *dev)
 	host->board = pdata;
 	host->dev = dev;
 
-	if (dev->of_node) {
-		res = atmel_nand_of_init(host, dev->of_node);
-		if (res)
-			goto err_no_card;
-	} else {
-		memcpy(host->board, dev->platform_data, sizeof(struct atmel_nand_data));
-	}
+	memcpy(host->board, dev->platform_data, sizeof(struct atmel_nand_data));
 
 	nand_chip->priv = host;		/* link the private data structures */
 	mtd->dev.parent = dev;
@@ -1428,15 +1332,9 @@ err_no_card:
 	return res;
 }
 
-static struct of_device_id atmel_nand_dt_ids[] = {
-	{ .compatible = "atmel,at91rm9200-nand" },
-	{ /* sentinel */ }
-};
-
 static struct driver atmel_nand_driver = {
 	.name	= "atmel_nand",
 	.probe	= atmel_nand_probe,
-	.of_compatible	= DRV_OF_COMPAT(atmel_nand_dt_ids),
 };
 device_platform_driver(atmel_nand_driver);
 
-- 
2.30.2



