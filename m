Delivery-date: Thu, 13 Mar 2025 07:42:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tscHH-00DSLH-1i
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 07:42:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tscHF-00064D-Ii
	for lore@pengutronix.de; Thu, 13 Mar 2025 07:42:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nAO4JrCQFJ7LZ5JiLnPM8LmkgpNwzuXCx92MeqVL95g=; b=Uv2yRBX0BHXT4jvDWkAn1bwXlP
	2s0+9g91DEVIzvROSCyOdRkm7M+FOdckw9sfDhUEFV5DGFk/JsltFvbiZqnQ/OLCbvliTA50vYG6y
	isfYpGkpppfE59Fd71Exp1sb2yLo0j7TgXgaB7ThFRoe4LUt35Rn82aC1al0zYVkJYUp+ZNmEqhK+
	80ZW7PpdKz848PU/W+jrUPnQfVA2c2gUgyeGRGlU6eQKJDZq+SEToXs7P+vpFEFY+CVOiScTAY3DH
	8/EJgvqkJXpNIhzflxuQfIEWIwayrFolMhW0qxRRvAfKF2yQPgF0ck3ZKo6/zxmMB/0gznISkPTia
	14dQ0piA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tscGl-0000000AF9U-3dmg;
	Thu, 13 Mar 2025 06:42:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tscGi-0000000AF8e-35Zq
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 06:42:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscGh-0005uj-AB; Thu, 13 Mar 2025 07:42:11 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscGh-005UIa-0O;
	Thu, 13 Mar 2025 07:42:11 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscGg-000JH4-32;
	Thu, 13 Mar 2025 07:42:10 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 07:42:10 +0100
Message-Id: <20250313064210.74011-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313064210.74011-1-a.fatoum@pengutronix.de>
References: <20250313064210.74011-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_234213_083971_004F4200 
X-CRM114-Status: GOOD (  21.40  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] treewide: remove NULL checks for revised basprintf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Of all >200 instances of basprintf in barebox, only 25 actually checked
for NULL. A previous commit made basprintf an alias for xasprintf, so
let's drop these 25 unneeded NULL checks and while at it, change the
code to use xasprintf to make it clearer that this operation panics on
OOM.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c        | 24 ++++----------------
 arch/arm/mach-stm32mp/bbu.c                  |  4 +---
 commands/tftp.c                              |  7 ++----
 common/memory.c                              |  7 +-----
 common/oftree.c                              | 11 +++------
 common/partitions.c                          |  4 +---
 drivers/clk/ti-sci-clk.c                     | 10 ++------
 drivers/mtd/nand/raw/atmel/nand-controller.c |  6 +----
 drivers/pmdomain/ti/ti-k3.c                  |  2 +-
 drivers/pmdomain/ti/ti_sci_pm_domains.c      |  4 +---
 drivers/regulator/scmi-regulator.c           |  4 +---
 drivers/spi/spi-fsl-qspi.c                   | 10 +-------
 drivers/spi/spi-nxp-fspi.c                   | 10 +-------
 drivers/spi/spi.c                            |  4 +---
 drivers/tee/tee_shm.c                        |  4 +---
 drivers/video/imx-ipu-v3/ipu-di.c            |  4 +---
 drivers/w1/slaves/w1_ds2431.c                |  4 +---
 drivers/w1/slaves/w1_ds2433.c                |  4 +---
 fs/devfs-core.c                              |  4 +---
 include/w1_mac_address.h                     |  4 +---
 20 files changed, 27 insertions(+), 104 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 9e62dc154409..db1d88943c27 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -527,21 +527,13 @@ static int prt_imx6_bbu(struct prt_imx6_priv *priv)
 		emmc_flags = BBU_HANDLER_FLAG_DEFAULT;
 	}
 
-	devicefile = basprintf("/dev/mmc%d", dcfg->emmc_usdhc);
-	if (!devicefile) {
-		ret = -ENOMEM;
-		goto exit_bbu;
-	}
+	devicefile = xasprintf("/dev/mmc%d", dcfg->emmc_usdhc);
 	ret = imx6_bbu_internal_mmcboot_register_handler("eMMC", devicefile,
 						   emmc_flags);
 	if (ret)
 		goto exit_bbu;
 
-	devicefile = basprintf("/dev/mmc%d", dcfg->sd_usdhc);
-	if (!devicefile) {
-		ret = -ENOMEM;
-		goto exit_bbu;
-	}
+	devicefile = xasprintf("/dev/mmc%d", dcfg->sd_usdhc);
 
 	ret = imx6_bbu_internal_mmc_register_handler("SD", devicefile, 0);
 	if (ret)
@@ -778,11 +770,7 @@ static int prt_imx6_rfid_fixup(struct prt_imx6_priv *priv,
 	int ret;
 	u8 *tmp;
 
-	alias = basprintf("i2c%d", dcfg->i2c_adapter);
-	if (!alias) {
-		ret = -ENOMEM;
-		goto exit_error;
-	}
+	alias = xasprintf("i2c%d", dcfg->i2c_adapter);
 
 	i2c_node = of_find_node_by_alias(root, alias);
 	kfree(alias);
@@ -791,10 +779,7 @@ static int prt_imx6_rfid_fixup(struct prt_imx6_priv *priv,
 		return -ENODEV;
 	}
 
-	eeprom_node_name = basprintf("/eeprom@%x", dcfg->i2c_addr);
-	if (!eeprom_node_name) {
-		return -ENOMEM;
-	}
+	eeprom_node_name = xasprintf("/eeprom@%x", dcfg->i2c_addr);
 
 	node = of_create_node(i2c_node, eeprom_node_name);
 	if (!node) {
@@ -824,7 +809,6 @@ static int prt_imx6_rfid_fixup(struct prt_imx6_priv *priv,
 	return 0;
 free_eeprom:
 	kfree(eeprom_node_name);
-exit_error:
 	dev_err(priv->dev, "Failed to apply fixup: %pe\n", ERR_PTR(ret));
 	return ret;
 }
diff --git a/arch/arm/mach-stm32mp/bbu.c b/arch/arm/mach-stm32mp/bbu.c
index 5d6d61db7d49..07b511134124 100644
--- a/arch/arm/mach-stm32mp/bbu.c
+++ b/arch/arm/mach-stm32mp/bbu.c
@@ -33,9 +33,7 @@ static int stm32mp_bbu_gpt_part_update(struct bbu_handler *handler,
 	struct stat st;
 	int ret;
 
-	gpt_data.devicefile = basprintf("%s.%s", gpt_data.devicefile, part);
-	if (!gpt_data.devicefile)
-		return -ENOMEM;
+	gpt_data.devicefile = xasprintf("%s.%s", gpt_data.devicefile, part);
 
 	pr_debug("Attempting %s update\n", gpt_data.devicefile);
 
diff --git a/commands/tftp.c b/commands/tftp.c
index 5e8d8d17761d..4356792ce51f 100644
--- a/commands/tftp.c
+++ b/commands/tftp.c
@@ -56,12 +56,9 @@ static int do_tftpb(int argc, char *argv[])
 		dest = argv[optind];
 
 	if (tftp_push)
-		dest = freep = basprintf("%s/%s", TFTP_MOUNT_PATH, dest);
+		dest = freep = xasprintf("%s/%s", TFTP_MOUNT_PATH, dest);
 	else
-		source = freep = basprintf("%s/%s", TFTP_MOUNT_PATH, source);
-
-	if (!freep)
-		return -ENOMEM;
+		source = freep = xasprintf("%s/%s", TFTP_MOUNT_PATH, source);
 
 	ret = make_directory(TFTP_MOUNT_PATH);
 	if (ret)
diff --git a/common/memory.c b/common/memory.c
index c155cb317f25..36aa4bcb8800 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -367,11 +367,7 @@ static int of_memory_fixup(struct device_node *root, void *unused)
 		int len = 0;
 
 		/* Create a /memory node for each bank */
-		memnode_name = basprintf("/memory@%lx", bank->start);
-		if (!memnode_name) {
-			err = -ENOMEM;
-			goto err_out;
-		}
+		memnode_name = xasprintf("/memory@%lx", bank->start);
 
 		memnode = of_create_node(root, memnode_name);
 		if (!memnode) {
@@ -402,7 +398,6 @@ static int of_memory_fixup(struct device_node *root, void *unused)
 
 err_free:
 	free(memnode_name);
-err_out:
 	return err;
 }
 
diff --git a/common/oftree.c b/common/oftree.c
index 2ebde791c708..001f5a19c298 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -172,9 +172,7 @@ static void watchdog_build_bootargs(struct watchdog *watchdog, struct device_nod
 	if (alias_id < 0)
 		return;
 
-	buf = basprintf("systemd.watchdog_device=/dev/watchdog%d", alias_id);
-	if (!buf)
-		return;
+	buf = xasprintf("systemd.watchdog_device=/dev/watchdog%d", alias_id);
 
 	globalvar_add_simple("linux.bootargs.dyn.watchdog", buf);
 	free(buf);
@@ -204,11 +202,8 @@ static int of_write_bootargs(struct device_node *node)
 		const char *oldstr;
 
 		ret = of_property_read_string(node, "bootargs", &oldstr);
-		if (!ret) {
-			str = buf = basprintf("%s %s", oldstr, str);
-			if (!buf)
-				return -ENOMEM;
-		}
+		if (!ret)
+			str = buf = xasprintf("%s %s", oldstr, str);
 	}
 
 	ret = of_property_write_string(node, "bootargs", str);
diff --git a/common/partitions.c b/common/partitions.c
index 8e6bf16e73f1..7562536cf9b8 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -37,9 +37,7 @@ static int register_one_partition(struct block_device *blk, struct partition *pa
 		.size = part->size * SECTOR_SIZE,
 	};
 
-	partition_name = basprintf("%s.%d", blk->cdev.name, part->num);
-	if (!partition_name)
-		return -ENOMEM;
+	partition_name = xasprintf("%s.%d", blk->cdev.name, part->num);
 
 	partinfo.name = partition_name;
 
diff --git a/drivers/clk/ti-sci-clk.c b/drivers/clk/ti-sci-clk.c
index 57e0406553d7..fa1bee5d4ea7 100644
--- a/drivers/clk/ti-sci-clk.c
+++ b/drivers/clk/ti-sci-clk.c
@@ -247,9 +247,7 @@ static int _sci_clk_build(struct sci_clk_provider *provider,
 	int i;
 	int ret = 0;
 
-	name = basprintf("clk:%d:%d", sci_clk->dev_id, sci_clk->clk_id);
-	if (!name)
-		return -ENOMEM;
+	name = xasprintf("clk:%d:%d", sci_clk->dev_id, sci_clk->clk_id);
 
 	init.name = name;
 
@@ -274,13 +272,9 @@ static int _sci_clk_build(struct sci_clk_provider *provider,
 		for (i = 0; i < sci_clk->num_parents; i++) {
 			char *parent_name;
 
-			parent_name = basprintf("clk:%d:%d",
+			parent_name = xasprintf("clk:%d:%d",
 						sci_clk->dev_id,
 						sci_clk->clk_id + 1 + i);
-			if (!parent_name) {
-				ret = -ENOMEM;
-				goto err;
-			}
 			parent_names[i] = parent_name;
 		}
 		init.parent_names = (void *)parent_names;
diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
index 5188a11cbef6..8add4109b7ae 100644
--- a/drivers/mtd/nand/raw/atmel/nand-controller.c
+++ b/drivers/mtd/nand/raw/atmel/nand-controller.c
@@ -1694,12 +1694,8 @@ static int atmel_nand_attach_chip(struct nand_chip *chip)
 		 * This way, mtd->name will be set by the core when
 		 * nand_set_flash_node() is called.
 		 */
-		mtd->name = basprintf("%s:nand.%d", dev_name(nc->dev),
+		mtd->name = xasprintf("%s:nand.%d", dev_name(nc->dev),
 				      nand->cs[0].id);
-		if (!mtd->name) {
-			dev_err(nc->dev, "Failed to allocate mtd->name\n");
-			return -ENOMEM;
-		}
 	}
 
 	return 0;
diff --git a/drivers/pmdomain/ti/ti-k3.c b/drivers/pmdomain/ti/ti-k3.c
index 1616e90b6230..429de3fa0db2 100644
--- a/drivers/pmdomain/ti/ti-k3.c
+++ b/drivers/pmdomain/ti/ti-k3.c
@@ -448,7 +448,7 @@ static int ti_k3_pm_domain_probe(struct device *dev)
 	priv->pd = pd;
 
 	for (i = 0; i < num_domains; i++, pd++) {
-		pd->genpd.name = basprintf("pd:%d", i);
+		pd->genpd.name = xasprintf("pd:%d", i);
 		pd->lpsc = &data->lpsc[i];
 		pd->genpd.power_off = ti_k3_pm_domain_off;
 		pd->genpd.power_on = ti_k3_pm_domain_on;
diff --git a/drivers/pmdomain/ti/ti_sci_pm_domains.c b/drivers/pmdomain/ti/ti_sci_pm_domains.c
index ab0a4d3829cd..e712121bf5d8 100644
--- a/drivers/pmdomain/ti/ti_sci_pm_domains.c
+++ b/drivers/pmdomain/ti/ti_sci_pm_domains.c
@@ -156,9 +156,7 @@ static int ti_sci_pm_domain_probe(struct device *dev)
 
 				pd = xzalloc(sizeof(*pd));
 
-				pd->pd.name = basprintf("pd:%d", args.args[0]);
-				if (!pd->pd.name)
-					return -ENOMEM;
+				pd->pd.name = xasprintf("pd:%d", args.args[0]);
 
 				pd->pd.power_off = ti_sci_pd_power_off;
 				pd->pd.power_on = ti_sci_pd_power_on;
diff --git a/drivers/regulator/scmi-regulator.c b/drivers/regulator/scmi-regulator.c
index 6f22fa642039..fd42ae35ee7b 100644
--- a/drivers/regulator/scmi-regulator.c
+++ b/drivers/regulator/scmi-regulator.c
@@ -236,9 +236,7 @@ static int scmi_regulator_common_init(struct scmi_regulator *sreg)
 		return -EOPNOTSUPP;
 	}
 
-	sdesc->name = basprintf("%s", vinfo->name);
-	if (!sdesc->name)
-		return -ENOMEM;
+	sdesc->name = xasprintf("%s", vinfo->name);
 
 	if (vinfo->segmented)
 		ret = scmi_config_linear_regulator_mappings(sreg, vinfo);
diff --git a/drivers/spi/spi-fsl-qspi.c b/drivers/spi/spi-fsl-qspi.c
index d242035ee00a..599e5fe96a08 100644
--- a/drivers/spi/spi-fsl-qspi.c
+++ b/drivers/spi/spi-fsl-qspi.c
@@ -743,8 +743,6 @@ static int fsl_qspi_setup(struct spi_device *spi)
 static const char *fsl_qspi_get_name(struct spi_mem *mem)
 {
 	struct fsl_qspi *q = spi_controller_get_devdata(mem->spi->controller);
-	struct device *dev = &mem->spi->dev;
-	const char *name;
 
 	/*
 	 * In order to keep mtdparts compatible with the old MTD driver at
@@ -754,13 +752,7 @@ static const char *fsl_qspi_get_name(struct spi_mem *mem)
 	if (of_get_available_child_count(q->dev->of_node) == 1)
 		return dev_name(q->dev);
 
-	name = basprintf("%s-%d", dev_name(q->dev), mem->spi->chip_select);
-	if (!name) {
-		dev_err(dev, "failed to get memory for custom flash name\n");
-		return ERR_PTR(-ENOMEM);
-	}
-
-	return name;
+	return xasprintf("%s-%d", dev_name(q->dev), mem->spi->chip_select);
 }
 
 static const struct spi_controller_mem_ops fsl_qspi_mem_ops = {
diff --git a/drivers/spi/spi-nxp-fspi.c b/drivers/spi/spi-nxp-fspi.c
index d8675779dab5..cfef5795a7c8 100644
--- a/drivers/spi/spi-nxp-fspi.c
+++ b/drivers/spi/spi-nxp-fspi.c
@@ -938,21 +938,13 @@ static int nxp_fspi_setup(struct spi_device *spi)
 static const char *nxp_fspi_get_name(struct spi_mem *mem)
 {
 	struct nxp_fspi *f = spi_controller_get_devdata(mem->spi->master);
-	struct device *dev = (struct device *)&mem->spi->dev;
-	const char *name;
 
 	/* Set custom name derived from the platform_device of the controller.
 	 */
 	if (of_get_available_child_count(f->dev->of_node) == 1)
 		return dev_name(f->dev);
 
-	name = basprintf("%s-%d", dev_name(f->dev), mem->spi->chip_select);
-	if (!name) {
-		dev_err(dev, "failed to get memory for custom flash name\n");
-		return ERR_PTR(-ENOMEM);
-	}
-
-	return name;
+	return xasprintf("%s-%d", dev_name(f->dev), mem->spi->chip_select);
 }
 
 static const struct spi_controller_mem_ops nxp_fspi_mem_ops = {
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 939164a4817c..c70b22fc0c1b 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -309,9 +309,7 @@ static int spi_get_gpio_descs(struct spi_controller *ctlr)
 			 */
 			char *gpioname;
 
-			gpioname = basprintf("%s CS%d", dev_name(dev), i);
-			if (!gpioname)
-				return -ENOMEM;
+			gpioname = xasprintf("%s CS%d", dev_name(dev), i);
 			gpiod_set_consumer_name(cs[i], gpioname);
 			free(gpioname);
 		}
diff --git a/drivers/tee/tee_shm.c b/drivers/tee/tee_shm.c
index 9952608435f6..4cc7911f7695 100644
--- a/drivers/tee/tee_shm.c
+++ b/drivers/tee/tee_shm.c
@@ -242,9 +242,7 @@ int tee_shm_get_fd(struct tee_shm *shm)
 	if (shm->fd < 0) {
 		char *tmp;
 
-		tmp = basprintf("/dev/%s", shm->cdev.name);
-		if (!tmp)
-			return -ENOMEM;
+		tmp = xasprintf("/dev/%s", shm->cdev.name);
 
 		shm->fd = open(tmp, O_RDONLY);
 		free(tmp);
diff --git a/drivers/video/imx-ipu-v3/ipu-di.c b/drivers/video/imx-ipu-v3/ipu-di.c
index 6156911bfc9c..7653d512969f 100644
--- a/drivers/video/imx-ipu-v3/ipu-di.c
+++ b/drivers/video/imx-ipu-v3/ipu-di.c
@@ -729,9 +729,7 @@ int ipu_di_init(struct ipu_soc *ipu, struct device *dev, int id,
 	ipu_di_write(di, 0x10, DI_BS_CLKGEN0);
 
 	di->clk_di_pixel.parent_names = di->di_parent_names;
-	di->clk_name = basprintf("%s_di%d_pixel", dev_name(dev), id);
-	if (!di->clk_name)
-		return -ENOMEM;
+	di->clk_name = xasprintf("%s_di%d_pixel", dev_name(dev), id);
 
 	di->clk_di_pixel.ops = &clk_di_ops;
 	di->clk_di_pixel.num_parents = 2;
diff --git a/drivers/w1/slaves/w1_ds2431.c b/drivers/w1/slaves/w1_ds2431.c
index 9a5f6b5dae62..87640640f133 100644
--- a/drivers/w1/slaves/w1_ds2431.c
+++ b/drivers/w1/slaves/w1_ds2431.c
@@ -269,9 +269,7 @@ static int ds2431_probe(struct w1_device *dev)
 	cdev->priv	= dev;
 	cdev->ops	= &ds2431_ops;
 	cdev->size	= W1_F2D_EEPROM_SIZE;
-	cdev->name	= basprintf(DRIVERNAME"%d", ds2431_count++);
-	if (cdev->name == NULL)
-		return -ENOMEM;
+	cdev->name	= xasprintf(DRIVERNAME"%d", ds2431_count++);
 
 	return devfs_create(cdev);
 }
diff --git a/drivers/w1/slaves/w1_ds2433.c b/drivers/w1/slaves/w1_ds2433.c
index 0e626530db2d..acab7d6dc44e 100644
--- a/drivers/w1/slaves/w1_ds2433.c
+++ b/drivers/w1/slaves/w1_ds2433.c
@@ -166,9 +166,7 @@ static int ds2433_cdev_create(struct w1_device *dev, int size, int id)
 	cdev->priv	= dev;
 	cdev->ops	= &ds2433_ops;
 	cdev->size	= size;
-	cdev->name	= basprintf("%s%d", dev->dev.driver->name, id);
-	if (cdev->name == NULL)
-		return -ENOMEM;
+	cdev->name	= xasprintf("%s%d", dev->dev.driver->name, id);
 
 	return devfs_create(cdev);
 }
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index c9313ed73167..2617eeea0706 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -199,9 +199,7 @@ int cdev_fdopen(struct cdev *cdev, unsigned long flags)
 	if (IS_ERR(cdev))
 		return PTR_ERR(cdev);
 
-	path = basprintf("/dev/%s", cdev->name);
-	if (!path)
-		return -ENOMEM;
+	path = xasprintf("/dev/%s", cdev->name);
 
 	fd = open(path, flags);
 
diff --git a/include/w1_mac_address.h b/include/w1_mac_address.h
index 1ee0ad27c99d..3ec0e7fffdd9 100644
--- a/include/w1_mac_address.h
+++ b/include/w1_mac_address.h
@@ -32,9 +32,7 @@ static inline int w1_local_mac_address_register(int ethid, char * oui, char *w1_
 			addr[i] = oui[i];
 	}
 
-	tmp = basprintf("%s.id", w1_dev);
-	if (!tmp)
-		return -ENOMEM;
+	tmp = xasprintf("%s.id", w1_dev);
 
 	val = getenv(tmp);
 	if (!val) {
-- 
2.39.5



