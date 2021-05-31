Delivery-date: Mon, 31 May 2021 09:25:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncIx-000346-D4
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:25:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncIv-00065U-2A
	for lore@pengutronix.de; Mon, 31 May 2021 09:25:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbT7mGy2CloaHjzdauNQUY8k90wsKL9H+WVZtAXaXT4=; b=ezGVbLjRGYw5nu
	rvaNVJkLxK6snHHTHj75RurOQVrhDBKBEc3eQxtzQc4+H7QQF5bcq2rY7+94/KHjEiafaIjJnF1HF
	y+by71Nwk9MxF/0Zmm84JYVT34NdFaejRFsHYovRNqrSe0Bkzw9b5H6HV4hLkO4WATiHwkmkn5K87
	ls0b5NLBRCWK74jy6GyUG0Piqn9s0hbANXItjIfR/TUFja7NinQdDJvZ+wf5o8u3lZaDIJ8cyhNvD
	XjB8q1r8dcb0RpPy7ziulJLYbFH8wb6GJ6zt9TCWbijaQzHptajkI1Q1KjeljSbQjGJuU2K3k8nEc
	ksUERdDuN7Fwv+cbW7tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncHj-00BAwc-EA; Mon, 31 May 2021 07:24:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncHR-00BAp3-W9
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:24:13 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncHQ-0005Mf-Oz; Mon, 31 May 2021 09:24:08 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncHQ-0001WQ-BO; Mon, 31 May 2021 09:24:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:24:04 +0200
Message-Id: <20210531072406.5630-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531072406.5630-1-a.fatoum@pengutronix.de>
References: <20210531072406.5630-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_002410_382458_2B443081 
X-CRM114-Status: GOOD (  20.53  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] nvmem: provider: align read/write callback prototype with
 upstream
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox allocates a NVMEM device as part of nvmem_register, which it
passes along to the callbacks. Callbacks then use dev->parent->priv
to retrieve the driver private data. This indirection makes definition
of nvmem helpers inconvenient, because they would need to hijack the
->priv member of the hardware device. Avoid this by passing along
some private data pointer defined at registration time, just like Linux
does. This will be used in a follow up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/eeprom/at24.c            | 17 +++++------------
 drivers/net/phy/mv88e6xxx/chip.c | 11 +++++------
 drivers/nvmem/bsec.c             | 12 +++++-------
 drivers/nvmem/core.c             | 14 ++++++++------
 drivers/nvmem/eeprom_93xx46.c    | 13 +++++--------
 drivers/nvmem/ocotp.c            | 12 +++++-------
 drivers/nvmem/rave-sp-eeprom.c   | 15 +++++----------
 drivers/nvmem/snvs_lpgpr.c       | 13 +++++--------
 drivers/rtc/rtc-imxdi.c          | 13 +++++--------
 include/linux/nvmem-provider.h   |  7 +++----
 10 files changed, 51 insertions(+), 76 deletions(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 8c04c5684b61..1d35088c6bbc 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -245,12 +245,9 @@ static ssize_t at24_read(struct at24_data *at24,
 	return retval;
 }
 
-static int at24_nvmem_read(struct device_d *dev, int off,
-			       void *buf, int count)
+static int at24_nvmem_read(void *ctx, unsigned off, void *buf, size_t count)
 {
-	struct at24_data *at24 = dev->parent->priv;
-
-	return at24_read(at24, buf, off, count);
+	return at24_read(ctx, buf, off, count);
 }
 
 /*
@@ -363,12 +360,9 @@ static ssize_t at24_write(struct at24_data *at24, const char *buf, loff_t off,
 	return retval;
 }
 
-static int at24_nvmem_write(struct device_d *dev, const int off,
-			       const void *buf, int count)
+static int at24_nvmem_write(void *ctx, unsigned off, const void *buf, size_t count)
 {
-	struct at24_data *at24 = dev->parent->priv;
-
-	return at24_write(at24, buf, off, count);
+	return at24_write(ctx, buf, off, count);
 }
 
 static const struct nvmem_bus at24_nvmem_bus = {
@@ -495,14 +489,13 @@ static int at24_probe(struct device_d *dev)
 
 	at24->nvmem_config.name = devname;
 	at24->nvmem_config.dev = dev;
+	at24->nvmem_config.priv = at24;
 	at24->nvmem_config.read_only = !writable;
 	at24->nvmem_config.bus = &at24_nvmem_bus;
 	at24->nvmem_config.stride = 1;
 	at24->nvmem_config.word_size = 1;
 	at24->nvmem_config.size = chip.byte_len;
 
-	dev->priv = at24;
-
 	at24->nvmem = nvmem_register(&at24->nvmem_config);
 	err = PTR_ERR_OR_ZERO(at24->nvmem);
 	if (err)
diff --git a/drivers/net/phy/mv88e6xxx/chip.c b/drivers/net/phy/mv88e6xxx/chip.c
index b1bffe5cbc4e..873c6f84634b 100644
--- a/drivers/net/phy/mv88e6xxx/chip.c
+++ b/drivers/net/phy/mv88e6xxx/chip.c
@@ -779,10 +779,9 @@ static int mv88e6xxx_switch_reset(struct mv88e6xxx_chip *chip)
 	return 0;
 }
 
-static int mv88e6xxx_eeprom_read(struct device_d *dev, const int offset,
-				 void *val, int bytes)
+static int mv88e6xxx_eeprom_read(void *ctx, unsigned offset, void *val, size_t bytes)
 {
-	struct mv88e6xxx_chip *chip = dev->parent->priv;
+	struct mv88e6xxx_chip *chip = ctx;
 	struct ethtool_eeprom eeprom = {
 		.offset = offset,
 		.len = bytes,
@@ -794,10 +793,9 @@ static int mv88e6xxx_eeprom_read(struct device_d *dev, const int offset,
 	return chip->info->ops->get_eeprom(chip, &eeprom, val);
 }
 
-static int mv88e6xxx_eeprom_write(struct device_d *dev, const int offset,
-				  const void *val, int bytes)
+static int mv88e6xxx_eeprom_write(void *ctx, unsigned offset, const void *val, size_t bytes)
 {
-	struct mv88e6xxx_chip *chip = dev->parent->priv;
+	struct mv88e6xxx_chip *chip = ctx;
 	struct ethtool_eeprom eeprom = {
 		.offset = offset,
 		.len = bytes,
@@ -883,6 +881,7 @@ static int mv88e6xxx_probe(struct device_d *dev)
 		struct nvmem_config config = {
 			.name = basprintf("%s-eeprom", dev_name(dev)),
 			.dev = dev,
+			.priv = chip,
 			.word_size = 1,
 			.stride = 1,
 			.size = eeprom_len,
diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index 836e62ecbcc7..f154864d266e 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -72,10 +72,9 @@ static struct regmap_bus stm32_bsec_regmap_bus = {
 	.reg_read = stm32_bsec_read_shadow,
 };
 
-static int stm32_bsec_write(struct device_d *dev, int offset,
-			    const void *val, int bytes)
+static int stm32_bsec_write(void *ctx, unsigned offset, const void *val, size_t bytes)
 {
-	struct bsec_priv *priv = dev->parent->priv;
+	struct bsec_priv *priv = ctx;
 
 	/* Allow only writing complete 32-bits aligned words */
 	if ((bytes % 4) || (offset % 4))
@@ -84,10 +83,9 @@ static int stm32_bsec_write(struct device_d *dev, int offset,
 	return regmap_bulk_write(priv->map, offset, val, bytes);
 }
 
-static int stm32_bsec_read(struct device_d *dev, int offset,
-			   void *buf, int bytes)
+static int stm32_bsec_read(void *ctx, unsigned offset, void *buf, size_t bytes)
 {
-	struct bsec_priv *priv = dev->parent->priv;
+	struct bsec_priv *priv = ctx;
 	u32 roffset, rbytes, val;
 	u8 *buf8 = buf, *val8 = (u8 *)&val;
 	int i, j = 0, ret, skip_bytes, size;
@@ -218,12 +216,12 @@ static int stm32_bsec_probe(struct device_d *dev)
 		return PTR_ERR(priv->map);
 
 	priv->config.name = "stm32-bsec";
+	priv->config.priv = priv;
 	priv->config.dev = dev;
 	priv->config.stride = 1;
 	priv->config.word_size = 1;
 	priv->config.size = data->num_regs;
 	priv->config.bus = &stm32_bsec_nvmem_bus;
-	dev->priv = priv;
 
 	nvmem = nvmem_register(&priv->config);
 	if (IS_ERR(nvmem))
diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 2a1c4b694145..cfeecf70cd5d 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -33,6 +33,7 @@ struct nvmem_device {
 	size_t			size;
 	bool			read_only;
 	struct cdev		cdev;
+	void			*priv;
 };
 
 struct nvmem_cell {
@@ -206,6 +207,7 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	nvmem->bus = config->bus;
 	np = config->dev->device_node;
 	nvmem->dev.device_node = np;
+	nvmem->priv = config->priv;
 
 	nvmem->read_only = of_property_read_bool(np, "read-only") |
 			   config->read_only;
@@ -507,7 +509,7 @@ static int __nvmem_cell_read(struct nvmem_device *nvmem,
 {
 	int rc;
 
-	rc = nvmem->bus->read(&nvmem->dev, cell->offset, buf, cell->bytes);
+	rc = nvmem->bus->read(nvmem->priv, cell->offset, buf, cell->bytes);
 	if (IS_ERR_VALUE(rc))
 		return rc;
 
@@ -572,7 +574,7 @@ static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell *cell,
 		*b <<= bit_offset;
 
 		/* setup the first byte with lsb bits from nvmem */
-		rc = nvmem->bus->read(&nvmem->dev, cell->offset, &v, 1);
+		rc = nvmem->bus->read(nvmem->priv, cell->offset, &v, 1);
 		*b++ |= GENMASK(bit_offset - 1, 0) & v;
 
 		/* setup rest of the byte if any */
@@ -589,7 +591,7 @@ static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell *cell,
 	/* if it's not end on byte boundary */
 	if ((nbits + bit_offset) % BITS_PER_BYTE) {
 		/* setup the last byte with msb bits from nvmem */
-		rc = nvmem->bus->read(&nvmem->dev, cell->offset + cell->bytes - 1,
+		rc = nvmem->bus->read(nvmem->priv, cell->offset + cell->bytes - 1,
 				      &v, 1);
 		*p |= GENMASK(7, (nbits + bit_offset) % BITS_PER_BYTE) & v;
 
@@ -622,7 +624,7 @@ int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len)
 			return PTR_ERR(buf);
 	}
 
-	rc = nvmem->bus->write(&nvmem->dev, cell->offset, buf, cell->bytes);
+	rc = nvmem->bus->write(nvmem->priv, cell->offset, buf, cell->bytes);
 
 	/* free the tmp buffer */
 	if (cell->bit_offset || cell->nbits)
@@ -719,7 +721,7 @@ int nvmem_device_read(struct nvmem_device *nvmem,
 	if (!bytes)
 		return 0;
 
-	rc = nvmem->bus->read(&nvmem->dev, offset, buf, bytes);
+	rc = nvmem->bus->read(nvmem->priv, offset, buf, bytes);
 
 	if (IS_ERR_VALUE(rc))
 		return rc;
@@ -753,7 +755,7 @@ int nvmem_device_write(struct nvmem_device *nvmem,
 	if (!bytes)
 		return 0;
 
-	rc = nvmem->bus->write(&nvmem->dev, offset, buf, bytes);
+	rc = nvmem->bus->write(nvmem->priv, offset, buf, bytes);
 
 	if (IS_ERR_VALUE(rc))
 		return rc;
diff --git a/drivers/nvmem/eeprom_93xx46.c b/drivers/nvmem/eeprom_93xx46.c
index 49ed396dc210..5833cb0d86ab 100644
--- a/drivers/nvmem/eeprom_93xx46.c
+++ b/drivers/nvmem/eeprom_93xx46.c
@@ -79,10 +79,9 @@ static inline bool has_quirk_instruction_length(struct eeprom_93xx46_dev *edev)
 	return edev->pdata->quirks & EEPROM_93XX46_QUIRK_INSTRUCTION_LENGTH;
 }
 
-static int eeprom_93xx46_read(struct device_d *dev, int off,
-			      void *val, int count)
+static int eeprom_93xx46_read(void *ctx, unsigned off, void *val, size_t count)
 {
-	struct eeprom_93xx46_dev *edev = dev->parent->priv;
+	struct eeprom_93xx46_dev *edev = ctx;
 	char *buf = val;
 	int err = 0;
 
@@ -241,10 +240,9 @@ eeprom_93xx46_write_word(struct eeprom_93xx46_dev *edev,
 	return ret;
 }
 
-static int eeprom_93xx46_write(struct device_d *dev, const int off,
-			       const void *val, int count)
+static int eeprom_93xx46_write(void *ctx, unsigned off, const void *val, size_t count)
 {
-	struct eeprom_93xx46_dev *edev = dev->parent->priv;
+	struct eeprom_93xx46_dev *edev = ctx;
 	const char *buf = val;
 	int i, ret, step = 1;
 
@@ -411,14 +409,13 @@ static int eeprom_93xx46_probe(struct device_d *dev)
 	edev->size = 128;
 	edev->nvmem_config.name = dev_name(&spi->dev);
 	edev->nvmem_config.dev = &spi->dev;
+	edev->nvmem_config.priv = edev;
 	edev->nvmem_config.read_only = pd->flags & EE_READONLY;
 	edev->nvmem_config.bus = &eeprom_93xx46_nvmem_bus;
 	edev->nvmem_config.stride = 4;
 	edev->nvmem_config.word_size = 1;
 	edev->nvmem_config.size = edev->size;
 
-	dev->priv = edev;
-
 	edev->nvmem = nvmem_register(&edev->nvmem_config);
 	if (IS_ERR(edev->nvmem)) {
 		err = PTR_ERR(edev->nvmem);
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index cee50955e97f..b2fad3c68770 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -673,18 +673,16 @@ static void imx_ocotp_init_dt(struct ocotp_priv *priv)
 	}
 }
 
-static int imx_ocotp_write(struct device_d *dev, const int offset,
-			    const void *val, int bytes)
+static int imx_ocotp_write(void *ctx, unsigned offset, const void *val, size_t bytes)
 {
-	struct ocotp_priv *priv = dev->parent->priv;
+	struct ocotp_priv *priv = ctx;
 
 	return regmap_bulk_write(priv->map, offset, val, bytes);
 }
 
-static int imx_ocotp_read(struct device_d *dev, const int offset, void *val,
-			   int bytes)
+static int imx_ocotp_read(void *ctx, unsigned offset, void *val, size_t bytes)
 {
-	struct ocotp_priv *priv = dev->parent->priv;
+	struct ocotp_priv *priv = ctx;
 
 	return regmap_bulk_read(priv->map, offset, val, bytes);
 }
@@ -746,11 +744,11 @@ static int imx_ocotp_probe(struct device_d *dev)
 
 	priv->config.name = "imx-ocotp";
 	priv->config.dev = dev;
+	priv->config.priv = priv;
 	priv->config.stride = 4;
 	priv->config.word_size = 4;
 	priv->config.size = data->num_regs;
 	priv->config.bus = &imx_ocotp_nvmem_bus;
-	dev->priv = priv;
 
 	nvmem = nvmem_register(&priv->config);
 	if (IS_ERR(nvmem))
diff --git a/drivers/nvmem/rave-sp-eeprom.c b/drivers/nvmem/rave-sp-eeprom.c
index 6c6ed17f18f6..f27491e5472b 100644
--- a/drivers/nvmem/rave-sp-eeprom.c
+++ b/drivers/nvmem/rave-sp-eeprom.c
@@ -280,19 +280,15 @@ static int rave_sp_eeprom_access(struct rave_sp_eeprom *eeprom,
 	return 0;
 }
 
-static int rave_sp_eeprom_read(struct device_d *dev, const int offset,
-			       void *val, int bytes)
+static int rave_sp_eeprom_read(void *ctx, unsigned offset, void *val, size_t bytes)
 {
-	return rave_sp_eeprom_access(dev->parent->priv,
-				     RAVE_SP_EEPROM_READ,
+	return rave_sp_eeprom_access(ctx, RAVE_SP_EEPROM_READ,
 				     offset, val, bytes);
 }
 
-static int rave_sp_eeprom_write(struct device_d *dev, const int offset,
-				const void *val, int bytes)
+static int rave_sp_eeprom_write(void *ctx, unsigned offset, const void *val, size_t bytes)
 {
-	return rave_sp_eeprom_access(dev->parent->priv,
-				     RAVE_SP_EEPROM_WRITE,
+	return rave_sp_eeprom_access(ctx, RAVE_SP_EEPROM_WRITE,
 				     offset, (void *)val, bytes);
 }
 
@@ -329,8 +325,6 @@ static int rave_sp_eeprom_probe(struct device_d *dev)
 	eeprom->address = reg[0];
 	eeprom->sp      = sp;
 
-	dev->priv = eeprom;
-
 	if (size > SZ_8K)
 		eeprom->header_size = RAVE_SP_EEPROM_HEADER_BIG;
 	else
@@ -343,6 +337,7 @@ static int rave_sp_eeprom_probe(struct device_d *dev)
 	of_property_read_string(dev->device_node, "zii,eeprom-name",
 				&config.name);
 	config.dev       = dev;
+	config.priv      = eeprom;
 	config.word_size = 1;
 	config.stride    = 1;
 	config.size      = reg[1];
diff --git a/drivers/nvmem/snvs_lpgpr.c b/drivers/nvmem/snvs_lpgpr.c
index fe7fe599f65e..1890af135d61 100644
--- a/drivers/nvmem/snvs_lpgpr.c
+++ b/drivers/nvmem/snvs_lpgpr.c
@@ -42,10 +42,9 @@ static const struct snvs_lpgpr_cfg snvs_lpgpr_cfg_imx6q = {
 	.offset_lplr	= IMX6Q_SNVS_LPLR,
 };
 
-static int snvs_lpgpr_write(struct device_d *dev, const int offset,
-			    const void *val, int bytes)
+static int snvs_lpgpr_write(void *ctx, unsigned offset, const void *val, size_t bytes)
 {
-	struct snvs_lpgpr_priv *priv = dev->parent->priv;
+	struct snvs_lpgpr_priv *priv = ctx;
 	const struct snvs_lpgpr_cfg *dcfg = priv->dcfg;
 	unsigned int lock_reg;
 	int ret;
@@ -68,10 +67,9 @@ static int snvs_lpgpr_write(struct device_d *dev, const int offset,
 				 bytes);
 }
 
-static int snvs_lpgpr_read(struct device_d *dev, const int offset, void *val,
-			   int bytes)
+static int snvs_lpgpr_read(void *ctx, unsigned offset, void *val, size_t bytes)
 {
-	struct snvs_lpgpr_priv *priv = dev->parent->priv;
+	struct snvs_lpgpr_priv *priv = ctx;
 	const struct snvs_lpgpr_cfg *dcfg = priv->dcfg;
 
 	return regmap_bulk_read(priv->regmap, dcfg->offset + offset,
@@ -113,6 +111,7 @@ static int snvs_lpgpr_probe(struct device_d *dev)
 	cfg = &priv->cfg;
 	cfg->name = dev_name(dev);
 	cfg->dev = dev;
+	cfg->priv = priv;
 	cfg->stride = 4;
 	cfg->word_size = 4;
 	cfg->size = 4;
@@ -124,8 +123,6 @@ static int snvs_lpgpr_probe(struct device_d *dev)
 		return PTR_ERR(nvmem);
 	}
 
-	dev->priv = priv;
-
 	return 0;
 }
 
diff --git a/drivers/rtc/rtc-imxdi.c b/drivers/rtc/rtc-imxdi.c
index 8fcaf631fff9..82ed6d500753 100644
--- a/drivers/rtc/rtc-imxdi.c
+++ b/drivers/rtc/rtc-imxdi.c
@@ -511,10 +511,9 @@ static const struct rtc_class_ops dryice_rtc_ops = {
 	.set_time = dryice_rtc_set_time,
 };
 
-static int nvstore_write(struct device_d *dev, const int reg, const void *val,
-			 int bytes)
+static int nvstore_write(void *ctx, unsigned reg, const void *val, size_t bytes)
 {
-	struct imxdi_dev *imxdi = dev->parent->priv;
+	struct imxdi_dev *imxdi = ctx;
 	const u32 *val32 = val;
 
 	if (bytes != 4)
@@ -525,10 +524,9 @@ static int nvstore_write(struct device_d *dev, const int reg, const void *val,
 	return 0;
 }
 
-static int nvstore_read(struct device_d *dev, const int reg, void *val,
-			int bytes)
+static int nvstore_read(void *ctx, unsigned reg, void *val, size_t bytes)
 {
-	struct imxdi_dev *imxdi = dev->parent->priv;
+	struct imxdi_dev *imxdi = ctx;
 	u32 *val32 = val;
 
 	if (bytes != 4)
@@ -588,9 +586,8 @@ static int __init dryice_rtc_probe(struct device_d *dev)
 	if (ret)
 		goto err;
 
-	dev->priv = imxdi;
-
 	nvstore_nvmem_config.dev = dev;
+	nvstore_nvmem_config.priv = imxdi;
 
 	imxdi->nvmem = nvmem_register(&nvstore_nvmem_config);
 	if (IS_ENABLED(CONFIG_NVMEM) && IS_ERR(imxdi->nvmem)) {
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index 6ef5ea6854d9..ac9ad21711aa 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -18,10 +18,8 @@
 struct nvmem_device;
 
 struct nvmem_bus {
-	int (*write)(struct device_d *dev, const int reg, const void *val,
-		     int val_size);
-	int (*read)(struct device_d *dev, const int reg, void *val,
-		    int val_size);
+	int (*write)(void *ctx, unsigned int reg, const void *val, size_t val_size);
+	int (*read)(void *ctx, unsigned int reg, void *val, size_t val_size);
 };
 
 struct nvmem_config {
@@ -32,6 +30,7 @@ struct nvmem_config {
 	int			word_size;
 	int			size;
 	const struct nvmem_bus	*bus;
+	void			*priv;
 };
 
 #if IS_ENABLED(CONFIG_NVMEM)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

