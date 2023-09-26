Delivery-date: Tue, 26 Sep 2023 20:40:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlCye-00CK1l-SX
	for lore@lore.pengutronix.de; Tue, 26 Sep 2023 20:40:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlCyc-0001s6-PD
	for lore@pengutronix.de; Tue, 26 Sep 2023 20:40:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OYhaVc0sKUcB4o0UiARZXLdAANzGftC1PrKNXPReV6g=; b=n7ScyBWI2cAFEgETzuhUE1QpKl
	1Z+HqTWGlc7iTbKNY5JB9GMlZyRYtLeq+gjTVb3JlVJuXmSTHO/mMVGALdfTpA9Csn4mnaP/HXh9A
	J7cyzOEa+6WW5iBCp1bcjjhMbnqSt+YqNmZAWzTCtB8lheGljaooL0kZA+aEWkbDw95MwwFhn/+jd
	koh/0YuSAfLKmNAur8O6rVI82FkoQbY9WdA5y6nx+fMnwWDouZuTllw92V1D0DLgRzNfReH4Vbeww
	bDL4G+EEvRZeZf/9A1rS+x/IS2OJXyok/r/a9cp8v/cEQiEyiUXeAOXq9Sk74HDylr2/2RVohv5RA
	PEyO09TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlCxP-00GrNu-0Z;
	Tue, 26 Sep 2023 18:38:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlCxK-00GrLw-0h
	for barebox@lists.infradead.org;
	Tue, 26 Sep 2023 18:38:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qlCxB-0000of-2A; Tue, 26 Sep 2023 20:38:37 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qlCxA-009AQE-JX; Tue, 26 Sep 2023 20:38:36 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qlCxA-00Az2t-1m;
	Tue, 26 Sep 2023 20:38:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: wsa@kernel.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Sep 2023 20:38:31 +0200
Message-Id: <20230926183835.2617909-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230926183835.2617909-1-a.fatoum@pengutronix.de>
References: <20230926183835.2617909-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230926_113846_271099_C787082B 
X-CRM114-Status: GOOD (  20.57  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] Revert "mtd: nand: drop DT support in legacy driver"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

DT support was removed with the rationale that all DT-enabled platforms
are supported by the new driver ported from Linux. The new driver
however refuses to work the AT91SAM9263. Until that's figured it,
restore DT support in the legacy driver.

This reverts commit 1fd8336bb0fe46856d2881121dd61bf560910448.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/nand/Kconfig        |   8 ++-
 drivers/mtd/nand/atmel/legacy.c | 104 +++++++++++++++++++++++++++++++-
 2 files changed, 109 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 87926d88d2c6..19f4322f65a1 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -114,10 +114,14 @@ config NAND_ATMEL
 	depends on ARCH_AT91 || (OFDEVICE && COMPILE_TEST)
 
 config NAND_ATMEL_LEGACY
-	def_bool !AT91_MULTI_BOARDS
+	def_bool !AT91_MULTI_BOARDS || SOC_AT91SAM9
 	depends on NAND_ATMEL
 	help
-	  Select legacy non-device tree enabled driver.
+	  Select legacy driver for non-DT-enabled platforms
+	  and for the deprecated non-EBI binding.
+
+	  The deprecated binding is currently the only one
+	  support for AT91SAM9.
 
 config NAND_ATMEL_PMECC
 	bool
diff --git a/drivers/mtd/nand/atmel/legacy.c b/drivers/mtd/nand/atmel/legacy.c
index cf402549b857..cee9e49be021 100644
--- a/drivers/mtd/nand/atmel/legacy.c
+++ b/drivers/mtd/nand/atmel/legacy.c
@@ -23,6 +23,10 @@
 #include <init.h>
 #include <gpio.h>
 
+#include <of.h>
+#include <of_gpio.h>
+#include <of_mtd.h>
+
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/rawnand.h>
 #include <linux/mtd/nand.h>
@@ -1105,6 +1109,92 @@ static void atmel_nand_hwctl(struct nand_chip *nand_chip, int mode)
 {
 }
 
+static int atmel_nand_of_init(struct atmel_nand_host *host, struct device_node *np)
+{
+	u32 val;
+	u32 offset[2];
+	int ecc_mode;
+	struct atmel_nand_data *board = host->board;
+	enum of_gpio_flags flags = 0;
+
+	if (!IS_ENABLED(CONFIG_OFDEVICE))
+		return -ENOSYS;
+
+	if (of_property_read_u32(np, "atmel,nand-addr-offset", &val) == 0) {
+		if (val >= 32) {
+			dev_err(host->dev, "invalid addr-offset %u\n", val);
+			return -EINVAL;
+		}
+		board->ale = val;
+	}
+
+	if (of_property_read_u32(np, "atmel,nand-cmd-offset", &val) == 0) {
+		if (val >= 32) {
+			dev_err(host->dev, "invalid cmd-offset %u\n", val);
+			return -EINVAL;
+		}
+		board->cle = val;
+	}
+
+	ecc_mode = of_get_nand_ecc_mode(np);
+
+	board->ecc_mode = ecc_mode < 0 ? NAND_ECC_SOFT : ecc_mode;
+
+	board->on_flash_bbt = of_get_nand_on_flash_bbt(np);
+
+	if (of_get_nand_bus_width(np) == 16)
+		board->bus_width_16 = 1;
+
+	board->rdy_pin = of_get_gpio_flags(np, 0, &flags);
+	board->enable_pin = of_get_gpio(np, 1);
+	board->det_pin = of_get_gpio(np, 2);
+
+	board->has_pmecc = of_property_read_bool(np, "atmel,has-pmecc");
+
+	if (!(board->ecc_mode == NAND_ECC_HW) || !board->has_pmecc)
+		return 0;	/* Not using PMECC */
+
+	/* use PMECC, get correction capability, sector size and lookup
+	* table offset.
+	* If correction bits and sector size are not specified, then
+	*   find
+	* them from NAND ONFI parameters.
+	*/
+	if (of_property_read_u32(np, "atmel,pmecc-cap", &val) == 0) {
+		if ((val != 2) && (val != 4) && (val != 8) && (val != 12) && (val != 24)) {
+			dev_err(host->dev, "Unsupported PMECC correction capability: %d"
+					" should be 2, 4, 8, 12 or 24\n", val);
+			return -EINVAL;
+		}
+
+		board->pmecc_corr_cap = (u8)val;
+	}
+
+	if (of_property_read_u32(np, "atmel,pmecc-sector-size", &val) == 0) {
+		if ((val != 512) && (val != 1024)) {
+				dev_err(host->dev, "Unsupported PMECC sector size: %d"
+					" should be 512 or 1024 bytes\n", val);
+			return -EINVAL;
+		}
+
+		board->pmecc_sector_size = (u16)val;
+	}
+
+	if (of_property_read_u32_array(np, "atmel,pmecc-lookup-table-offset", offset, 2) != 0) {
+		dev_err(host->dev, "Cannot get PMECC lookup table offset\n");
+		return -EINVAL;
+	}
+
+	if (!offset[0] && !offset[1]) {
+		dev_err(host->dev, "Invalid PMECC lookup table offset\n");
+		return -EINVAL;
+	}
+
+	board->pmecc_lookup_table_offset = (board->pmecc_sector_size == 512) ? offset[0] : offset[1];
+
+	return 0;
+}
+
 static int atmel_hw_nand_init_params(struct device *dev,
 					 struct atmel_nand_host *host)
 {
@@ -1191,7 +1281,13 @@ static int __init atmel_nand_probe(struct device *dev)
 	host->board = pdata;
 	host->dev = dev;
 
-	memcpy(host->board, dev->platform_data, sizeof(struct atmel_nand_data));
+	if (dev->of_node) {
+		res = atmel_nand_of_init(host, dev->of_node);
+		if (res)
+			goto err_no_card;
+	} else {
+		memcpy(host->board, dev->platform_data, sizeof(struct atmel_nand_data));
+	}
 
 	nand_chip->priv = host;		/* link the private data structures */
 	mtd->dev.parent = dev;
@@ -1327,9 +1423,15 @@ static int __init atmel_nand_probe(struct device *dev)
 	return res;
 }
 
+static struct of_device_id atmel_nand_dt_ids[] = {
+	{ .compatible = "atmel,at91rm9200-nand" },
+	{ /* sentinel */ }
+};
+
 static struct driver atmel_nand_driver = {
 	.name	= "atmel_nand",
 	.probe	= atmel_nand_probe,
+	.of_compatible	= DRV_OF_COMPAT(atmel_nand_dt_ids),
 };
 device_platform_driver(atmel_nand_driver);
 
-- 
2.39.2



