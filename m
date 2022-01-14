Delivery-date: Fri, 14 Jan 2022 09:52:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8IJs-001t0N-LJ
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 09:52:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8IJq-00030z-Kh
	for lore@pengutronix.de; Fri, 14 Jan 2022 09:52:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zrxd/ZTIgt3OXWHDgVEiSwZxzFBdTJvN21Y+xye3vzY=; b=bq1pF7JL7qU1DR
	OIULqXbp1xmeAoveqoYaOEFTDmapPNK6pklc5XJEobvwaOxgm2qcdT82wbCq7rWUoOQqYxEN3jLDY
	c0L00AzXQMiLMo3X/B41a9j4VnHyLGjY0y1/hS6vjkiYwTv7ByxzDx5Q+Cgur6jjTAML+oXC3AEix
	wy4M9QvywhmqntQwxHTFqx8br9QVOlrszS90/roJkX5hhB+2PopLovdnqGVsi/R5AbLFoOMns28w9
	/kLs5u+yms4u5cMDwD3R0ZOzjfHMF0ZYa4rHsmv1Oc8ceEwkAV4LQLf2mTgZtOYB19HG5cUURFWdD
	DGpo3RpD04FHsYu8y8SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8IIZ-008Mj8-Ox; Fri, 14 Jan 2022 08:51:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8IIS-008MhO-Oq
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 08:50:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n8IIJ-0002la-Io; Fri, 14 Jan 2022 09:50:47 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n8IIJ-001Jc8-0z; Fri, 14 Jan 2022 09:50:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Jan 2022 09:50:45 +0100
Message-Id: <20220114085046.313677-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_005057_157319_A17CD996 
X-CRM114-Status: GOOD (  17.05  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] nvmem: retire struct nvmem_bus for better Linux
 compatibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

nvmem_bus is arguably a confusing name and serves no real purpose over
just embedding its two members directly. That's what Linux currently
does, so follow suit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/eeprom/at24.c            |  8 ++------
 drivers/net/phy/mv88e6xxx/chip.c |  8 ++------
 drivers/nvmem/core.c             | 22 +++++++++++++---------
 drivers/nvmem/eeprom_93xx46.c    |  9 +++------
 drivers/nvmem/ocotp.c            |  8 ++------
 drivers/nvmem/partition.c        |  8 ++------
 drivers/nvmem/rave-sp-eeprom.c   |  8 ++------
 drivers/nvmem/regmap.c           |  8 ++------
 drivers/nvmem/rmem.c             |  6 +-----
 drivers/nvmem/snvs_lpgpr.c       |  8 ++------
 drivers/rtc/rtc-imxdi.c          |  8 ++------
 include/linux/nvmem-provider.h   | 10 ++++------
 12 files changed, 37 insertions(+), 74 deletions(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 3103d7722a40..22f3d6d880ed 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -361,11 +361,6 @@ static int at24_nvmem_write(void *ctx, unsigned off, const void *buf, size_t cou
 	return at24_write(ctx, buf, off, count);
 }
 
-static const struct nvmem_bus at24_nvmem_bus = {
-	.write = at24_nvmem_write,
-	.read  = at24_nvmem_read,
-};
-
 static int at24_probe(struct device_d *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
@@ -487,7 +482,8 @@ static int at24_probe(struct device_d *dev)
 	at24->nvmem_config.dev = dev;
 	at24->nvmem_config.priv = at24;
 	at24->nvmem_config.read_only = !writable;
-	at24->nvmem_config.bus = &at24_nvmem_bus;
+	at24->nvmem_config.reg_write = at24_nvmem_write;
+	at24->nvmem_config.reg_read  = at24_nvmem_read;
 	at24->nvmem_config.stride = 1;
 	at24->nvmem_config.word_size = 1;
 	at24->nvmem_config.size = chip.byte_len;
diff --git a/drivers/net/phy/mv88e6xxx/chip.c b/drivers/net/phy/mv88e6xxx/chip.c
index ae59d134e792..88e0ab5c42af 100644
--- a/drivers/net/phy/mv88e6xxx/chip.c
+++ b/drivers/net/phy/mv88e6xxx/chip.c
@@ -808,11 +808,6 @@ static int mv88e6xxx_eeprom_write(void *ctx, unsigned offset, const void *val, s
 	return chip->info->ops->set_eeprom(chip, &eeprom, (void *)val);
 }
 
-static const struct nvmem_bus mv88e6xxx_eeprom_nvmem_bus = {
-	.write = mv88e6xxx_eeprom_write,
-	.read  = mv88e6xxx_eeprom_read,
-};
-
 static int mv88e6xxx_probe(struct device_d *dev)
 {
 	struct device_node *np = dev->device_node;
@@ -887,7 +882,8 @@ static int mv88e6xxx_probe(struct device_d *dev)
 			.stride = 1,
 			.size = eeprom_len,
 			.read_only = false,
-			.bus = &mv88e6xxx_eeprom_nvmem_bus,
+			.reg_write = mv88e6xxx_eeprom_write,
+			.reg_read = mv88e6xxx_eeprom_read,
 		};
 
 		if (IS_ERR(nvmem_register(&config)))
diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index fed387c43a26..f1df0969ecfd 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -16,7 +16,6 @@
 struct nvmem_device {
 	const char		*name;
 	struct device_d		dev;
-	const struct nvmem_bus	*bus;
 	struct list_head	node;
 	int			stride;
 	int			word_size;
@@ -26,6 +25,10 @@ struct nvmem_device {
 	bool			read_only;
 	struct cdev		cdev;
 	void			*priv;
+	int			(*reg_write)(void *ctx, unsigned int reg,
+					     const void *val, size_t val_size);
+	int			(*reg_read)(void *ctx, unsigned int reg,
+					    void *val, size_t val_size);
 };
 
 struct nvmem_cell {
@@ -205,12 +208,13 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	nvmem->word_size = config->word_size;
 	nvmem->size = config->size;
 	nvmem->dev.parent = config->dev;
-	nvmem->bus = config->bus;
+	nvmem->reg_read = config->reg_read;
+	nvmem->reg_write = config->reg_write;
 	np = config->cdev ? config->cdev->device_node : config->dev->device_node;
 	nvmem->dev.device_node = np;
 	nvmem->priv = config->priv;
 
-	if (config->read_only || !config->bus->write || of_property_read_bool(np, "read-only"))
+	if (config->read_only || !config->reg_write || of_property_read_bool(np, "read-only"))
 		nvmem->read_only = true;
 
 	dev_set_name(&nvmem->dev, config->name);
@@ -525,7 +529,7 @@ static int __nvmem_cell_read(struct nvmem_device *nvmem,
 {
 	int rc;
 
-	rc = nvmem->bus->read(nvmem->priv, cell->offset, buf, cell->bytes);
+	rc = nvmem->reg_read(nvmem->priv, cell->offset, buf, cell->bytes);
 	if (IS_ERR_VALUE(rc))
 		return rc;
 
@@ -590,7 +594,7 @@ static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell *cell,
 		*b <<= bit_offset;
 
 		/* setup the first byte with lsb bits from nvmem */
-		rc = nvmem->bus->read(nvmem->priv, cell->offset, &v, 1);
+		rc = nvmem->reg_read(nvmem->priv, cell->offset, &v, 1);
 		*b++ |= GENMASK(bit_offset - 1, 0) & v;
 
 		/* setup rest of the byte if any */
@@ -607,7 +611,7 @@ static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell *cell,
 	/* if it's not end on byte boundary */
 	if ((nbits + bit_offset) % BITS_PER_BYTE) {
 		/* setup the last byte with msb bits from nvmem */
-		rc = nvmem->bus->read(nvmem->priv, cell->offset + cell->bytes - 1,
+		rc = nvmem->reg_read(nvmem->priv, cell->offset + cell->bytes - 1,
 				      &v, 1);
 		*p |= GENMASK(7, (nbits + bit_offset) % BITS_PER_BYTE) & v;
 
@@ -640,7 +644,7 @@ int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len)
 			return PTR_ERR(buf);
 	}
 
-	rc = nvmem->bus->write(nvmem->priv, cell->offset, buf, cell->bytes);
+	rc = nvmem->reg_write(nvmem->priv, cell->offset, buf, cell->bytes);
 
 	/* free the tmp buffer */
 	if (cell->bit_offset || cell->nbits)
@@ -737,7 +741,7 @@ int nvmem_device_read(struct nvmem_device *nvmem,
 	if (!bytes)
 		return 0;
 
-	rc = nvmem->bus->read(nvmem->priv, offset, buf, bytes);
+	rc = nvmem->reg_read(nvmem->priv, offset, buf, bytes);
 
 	if (IS_ERR_VALUE(rc))
 		return rc;
@@ -771,7 +775,7 @@ int nvmem_device_write(struct nvmem_device *nvmem,
 	if (!bytes)
 		return 0;
 
-	rc = nvmem->bus->write(nvmem->priv, offset, buf, bytes);
+	rc = nvmem->reg_write(nvmem->priv, offset, buf, bytes);
 
 	if (IS_ERR_VALUE(rc))
 		return rc;
diff --git a/drivers/nvmem/eeprom_93xx46.c b/drivers/nvmem/eeprom_93xx46.c
index 2f598fbc97f6..b76750ebbd33 100644
--- a/drivers/nvmem/eeprom_93xx46.c
+++ b/drivers/nvmem/eeprom_93xx46.c
@@ -364,11 +364,6 @@ static int eeprom_93xx46_probe_dt(struct spi_device *spi)
 	return 0;
 }
 
-static const struct nvmem_bus eeprom_93xx46_nvmem_bus = {
-	.write = eeprom_93xx46_write,
-	.read  = eeprom_93xx46_read,
-};
-
 static int eeprom_93xx46_probe(struct device_d *dev)
 {
 	struct spi_device *spi = (struct spi_device *)dev->type_data;
@@ -408,7 +403,9 @@ static int eeprom_93xx46_probe(struct device_d *dev)
 	edev->nvmem_config.dev = &spi->dev;
 	edev->nvmem_config.priv = edev;
 	edev->nvmem_config.read_only = pd->flags & EE_READONLY;
-	edev->nvmem_config.bus = &eeprom_93xx46_nvmem_bus;
+	edev->nvmem_config.reg_write = eeprom_93xx46_write;
+	edev->nvmem_config.reg_read  = eeprom_93xx46_read;
+
 	edev->nvmem_config.stride = 4;
 	edev->nvmem_config.word_size = 1;
 	edev->nvmem_config.size = edev->size;
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 1f99a8012f7a..e7212f144c35 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -697,11 +697,6 @@ static void imx_ocotp_set_unique_machine_id(void)
 	machine_id_set_hashable(unique_id_parts, sizeof(unique_id_parts));
 }
 
-static const struct nvmem_bus imx_ocotp_nvmem_bus = {
-	.write = imx_ocotp_write,
-	.read  = imx_ocotp_read,
-};
-
 static int imx_ocotp_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -745,7 +740,8 @@ static int imx_ocotp_probe(struct device_d *dev)
 	priv->config.stride = 4;
 	priv->config.word_size = 4;
 	priv->config.size = data->num_regs;
-	priv->config.bus = &imx_ocotp_nvmem_bus;
+	priv->config.reg_write = imx_ocotp_write;
+	priv->config.reg_read  = imx_ocotp_read;
 
 	nvmem = nvmem_register(&priv->config);
 	if (IS_ERR(nvmem))
diff --git a/drivers/nvmem/partition.c b/drivers/nvmem/partition.c
index a034c6c4d55a..14907e05ba2d 100644
--- a/drivers/nvmem/partition.c
+++ b/drivers/nvmem/partition.c
@@ -18,11 +18,6 @@ static int nvmem_cdev_read(void *ctx, unsigned offset, void *buf, size_t bytes)
 	return cdev_read(ctx, buf, bytes, offset, 0);
 }
 
-static struct nvmem_bus nvmem_cdev_bus = {
-	.read = nvmem_cdev_read,
-	.write = nvmem_cdev_write,
-};
-
 struct nvmem_device *nvmem_partition_register(struct cdev *cdev)
 {
 	struct nvmem_config config = {};
@@ -34,7 +29,8 @@ struct nvmem_device *nvmem_partition_register(struct cdev *cdev)
 	config.stride = 1;
 	config.word_size = 1;
 	config.size = cdev->size;
-	config.bus = &nvmem_cdev_bus;
+	config.reg_read = nvmem_cdev_read;
+	config.reg_write = nvmem_cdev_write;
 
 	return nvmem_register(&config);
 }
diff --git a/drivers/nvmem/rave-sp-eeprom.c b/drivers/nvmem/rave-sp-eeprom.c
index 2345b24936be..26367a02de17 100644
--- a/drivers/nvmem/rave-sp-eeprom.c
+++ b/drivers/nvmem/rave-sp-eeprom.c
@@ -280,11 +280,6 @@ static int rave_sp_eeprom_write(void *ctx, unsigned offset, const void *val, siz
 				     offset, (void *)val, bytes);
 }
 
-static const struct nvmem_bus rave_sp_eeprom_nvmem_bus = {
-	.write = rave_sp_eeprom_write,
-	.read  = rave_sp_eeprom_read,
-};
-
 static int rave_sp_eeprom_probe(struct device_d *dev)
 {
 	struct rave_sp *sp = dev->parent->priv;
@@ -329,7 +324,8 @@ static int rave_sp_eeprom_probe(struct device_d *dev)
 	config.word_size = 1;
 	config.stride    = 1;
 	config.size      = reg[1];
-	config.bus       = &rave_sp_eeprom_nvmem_bus;
+	config.reg_write = rave_sp_eeprom_write;
+	config.reg_read  = rave_sp_eeprom_read;
 
 	nvmem = nvmem_register(&config);
 	if (IS_ERR(nvmem)) {
diff --git a/drivers/nvmem/regmap.c b/drivers/nvmem/regmap.c
index 56611819a2b4..3c33a8aa75a8 100644
--- a/drivers/nvmem/regmap.c
+++ b/drivers/nvmem/regmap.c
@@ -53,11 +53,6 @@ static int nvmem_regmap_read(void *ctx, unsigned offset, void *buf, size_t bytes
 	return 0;
 }
 
-static struct nvmem_bus nvmem_regmap_bus = {
-	.read = nvmem_regmap_read,
-	.write = nvmem_regmap_write,
-};
-
 struct nvmem_device *nvmem_regmap_register(struct regmap *map, const char *name)
 {
 	struct nvmem_config config = {};
@@ -72,7 +67,8 @@ struct nvmem_device *nvmem_regmap_register(struct regmap *map, const char *name)
 	config.stride = 1;
 	config.word_size = 1;
 	config.size = regmap_get_max_register(map) * regmap_get_reg_stride(map);
-	config.bus = &nvmem_regmap_bus;
+	config.reg_read = nvmem_regmap_read;
+	config.reg_write = nvmem_regmap_write;
 
 	return nvmem_register(&config);
 }
diff --git a/drivers/nvmem/rmem.c b/drivers/nvmem/rmem.c
index cd735e5ef39d..e0b9bd6d39f7 100644
--- a/drivers/nvmem/rmem.c
+++ b/drivers/nvmem/rmem.c
@@ -21,10 +21,6 @@ static int rmem_read(void *context, unsigned int offset,
 			bytes, offset, 0);
 }
 
-static struct nvmem_bus rmem_nvmem_bus = {
-	.read = rmem_read,
-};
-
 static int rmem_probe(struct device_d *dev)
 {
 	struct nvmem_config config = { };
@@ -45,7 +41,7 @@ static int rmem_probe(struct device_d *dev)
 	config.priv = priv;
 	config.name = "rmem";
 	config.size = resource_size(mem);
-	config.bus = &rmem_nvmem_bus;
+	config.reg_read = rmem_read;
 
 	return PTR_ERR_OR_ZERO(nvmem_register(&config));
 }
diff --git a/drivers/nvmem/snvs_lpgpr.c b/drivers/nvmem/snvs_lpgpr.c
index ddfc15e1479a..767ce0d17f61 100644
--- a/drivers/nvmem/snvs_lpgpr.c
+++ b/drivers/nvmem/snvs_lpgpr.c
@@ -73,11 +73,6 @@ static int snvs_lpgpr_read(void *ctx, unsigned offset, void *val, size_t bytes)
 				val, bytes);
 }
 
-static const struct nvmem_bus snvs_lpgpr_nvmem_bus = {
-	.write = snvs_lpgpr_write,
-	.read  = snvs_lpgpr_read,
-};
-
 static int snvs_lpgpr_probe(struct device_d *dev)
 {
 	struct device_node *node = dev->device_node;
@@ -112,7 +107,8 @@ static int snvs_lpgpr_probe(struct device_d *dev)
 	cfg->stride = 4;
 	cfg->word_size = 4;
 	cfg->size = 4;
-	cfg->bus = &snvs_lpgpr_nvmem_bus;
+	cfg->bus.reg_write = snvs_lpgpr_write;
+	cfg->bus.reg_read  = snvs_lpgpr_read;
 
 	nvmem = nvmem_register(cfg);
 	if (IS_ERR(nvmem)) {
diff --git a/drivers/rtc/rtc-imxdi.c b/drivers/rtc/rtc-imxdi.c
index 297fdc17b986..01d3b26aa2b6 100644
--- a/drivers/rtc/rtc-imxdi.c
+++ b/drivers/rtc/rtc-imxdi.c
@@ -529,17 +529,13 @@ static int nvstore_read(void *ctx, unsigned reg, void *val, size_t bytes)
 	return 0;
 }
 
-static struct nvmem_bus nvstore_nvmem_bus = {
-	.write = nvstore_write,
-	.read  = nvstore_read,
-};
-
 static struct nvmem_config nvstore_nvmem_config = {
 	.name = "nvstore",
 	.stride = 4,
 	.word_size = 4,
 	.size = 4,
-	.bus = &nvstore_nvmem_bus,
+	.reg_write = nvstore_write,
+	.reg_read = nvstore_read,
 };
 
 static int __init dryice_rtc_probe(struct device_d *dev)
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index a293f60c1ef3..560c78ded376 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -17,11 +17,6 @@
 
 struct nvmem_device;
 
-struct nvmem_bus {
-	int (*write)(void *ctx, unsigned int reg, const void *val, size_t val_size);
-	int (*read)(void *ctx, unsigned int reg, void *val, size_t val_size);
-};
-
 struct nvmem_config {
 	struct device_d		*dev;
 	const char		*name;
@@ -30,7 +25,10 @@ struct nvmem_config {
 	int			stride;
 	int			word_size;
 	int			size;
-	const struct nvmem_bus	*bus;
+	int			(*reg_write)(void *ctx, unsigned int reg,
+					     const void *val, size_t val_size);
+	int			(*reg_read)(void *ctx, unsigned int reg,
+					    void *val, size_t val_size);
 	void			*priv;
 };
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

