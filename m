Delivery-date: Wed, 11 Jan 2023 14:32:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFbD8-008r6j-Aq
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 14:32:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFbD5-0002Ww-09
	for lore@pengutronix.de; Wed, 11 Jan 2023 14:32:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qbvP2TdfrB+Htk9Od5ZVwZG0tRFtYkfrV/v0pJmuN18=; b=4LiDtuRKhqw/HQ51pX/p6uLZ2v
	XVMflFleZf7PTwEh2AgWBBA8B4TG5aP/Nk6QiumqyTGnVVgNmIMZI0Ah6siSYRmOmXaB/VEFQTa53
	rUHOvzVs+6nm21S8V/v9lrlcpG/48kpVEo58ruv/sZ4+ufS9FVnLZ/aMckDzz1iTxu3ROzwRUXF4M
	8aJwLrXaqaRVb3R6KWucgipCxGTjvcbYgXoK/UB2cdU4JhNr4K4qrp/Fx8mbzFTpVg/5JEunfHDvL
	3rclWCJ+ybFVBZOcQhXINvuNsHRJGqTUzauWbld1ag278M9sxSkMiLNitIJqDkabCsYBehyZs9o5a
	6qx4BQPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFbBc-00BZnm-RT; Wed, 11 Jan 2023 13:30:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFbB7-00BZa6-GN
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 13:30:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB3-0001dl-FE; Wed, 11 Jan 2023 14:30:01 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB2-005JQ4-PG; Wed, 11 Jan 2023 14:30:00 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB1-004rp9-En; Wed, 11 Jan 2023 14:29:59 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 14:29:50 +0100
Message-Id: <20230111132956.1153359-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111132956.1153359-1-a.fatoum@pengutronix.de>
References: <20230111132956.1153359-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_053005_902770_37B3E56A 
X-CRM114-Status: GOOD (  22.29  )
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
Subject: [PATCH v2 05/11] net: dsa: ksz9477: switch to regmap_init_spi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux uses three regmaps for the KSZ9477 DSA driver, one for each of the
three access sizes supported by the chip. While this increases overhead
a bit, it'll allow us in future to extend the driver seamlessly for i2c
support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/Kconfig      |   1 +
 drivers/net/ksz9477.c    | 150 +++++++-------------------------------
 drivers/net/ksz_common.h | 153 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 180 insertions(+), 124 deletions(-)
 create mode 100644 drivers/net/ksz_common.h

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 2dafd9c7a8b9..e881b671d027 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -309,6 +309,7 @@ config DRIVER_NET_KSZ8873
 config DRIVER_NET_KSZ9477
 	bool "KSZ9477 switch driver"
 	depends on SPI
+	select REGMAP_SPI
 	help
 	  This option enables support for the Microchip KSZ9477
 	  switch chip.
diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
index d9186b1177b8..a980735e8e3a 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -7,13 +7,12 @@
 #include <net.h>
 #include <platform_data/ksz9477_reg.h>
 #include <spi/spi.h>
+#include "ksz_common.h"
 
 /* SPI frame opcodes */
-#define KS_SPIOP_RD			3
-#define KS_SPIOP_WR			2
 
 #define SPI_ADDR_SHIFT			24
-#define SPI_ADDR_MASK			(BIT(SPI_ADDR_SHIFT) - 1)
+#define SPI_ADDR_ALIGN			3
 #define SPI_TURNAROUND_SHIFT		5
 
 #define GBIT_SUPPORT			BIT(0)
@@ -21,127 +20,8 @@
 #define IS_9893				BIT(2)
 #define KSZ9477_PHY_ERRATA		BIT(3)
 
-struct ksz_switch {
-	struct spi_device *spi;
-	struct dsa_switch ds;
-	struct device *dev;
-	int phy_port_cnt;
-	u32 chip_id;
-	u8 features;
-};
-
-static int ksz9477_spi_read_reg(struct spi_device *spi, u32 reg, u8 *val,
-				unsigned int len)
-{
-	u32 txbuf;
-	int ret;
-
-	txbuf = reg & SPI_ADDR_MASK;
-	txbuf |= KS_SPIOP_RD << SPI_ADDR_SHIFT;
-	txbuf <<= SPI_TURNAROUND_SHIFT;
-	txbuf = cpu_to_be32(txbuf);
-
-	ret = spi_write_then_read(spi, &txbuf, 4, val, len);
-
-	return ret;
-}
-
-static int ksz9477_spi_write_reg(struct spi_device *spi, u32 reg, u8 *val,
-				 unsigned int len)
-{
-	u32 txbuf[2];
-
-	txbuf[0] = reg & SPI_ADDR_MASK;
-	txbuf[0] |= (KS_SPIOP_WR << SPI_ADDR_SHIFT);
-	txbuf[0] <<= SPI_TURNAROUND_SHIFT;
-	txbuf[0] = cpu_to_be32(*txbuf);
-	memcpy(&txbuf[1], val, len);
-
-	return spi_write(spi, txbuf, 4 + len);
-}
-
-static int ksz_read8(struct ksz_switch *priv, u32 reg, u8 *val)
-{
-	return ksz9477_spi_read_reg(priv->spi, reg, val, 1);
-}
-
-static int ksz_write8(struct ksz_switch *priv, u32 reg, u8 value)
-{
-	return ksz9477_spi_write_reg(priv->spi, reg, &value, 1);
-}
-
-static int ksz_read16(struct ksz_switch *priv, u32 reg, u16 *val)
-{
-	int ret = ksz9477_spi_read_reg(priv->spi, reg, (u8 *)val, 2);
-
-	if (!ret)
-		*val = be16_to_cpu(*val);
-
-	return ret;
-}
-
-static int ksz_write16(struct ksz_switch *priv, u32 reg, u16 value)
-{
-	struct spi_device *spi = priv->spi;
-
-	value = cpu_to_be16(value);
-	return ksz9477_spi_write_reg(spi, reg, (u8 *)&value, 2);
-}
-
-static int ksz_read32(struct ksz_switch *priv, u32 reg, u32 *val)
-{
-	int ret = ksz9477_spi_read_reg(priv->spi, reg, (u8 *)val, 4);
-
-	if (!ret)
-		*val = be32_to_cpu(*val);
-
-	return ret;
-}
-
-static int ksz_write32(struct ksz_switch *priv, u32 reg, u32 value)
-{
-	struct spi_device *spi = priv->spi;
-
-	value = cpu_to_be32(value);
-	return ksz9477_spi_write_reg(spi, reg, (u8 *)&value, 4);
-}
-
-static void ksz_cfg(struct ksz_switch *priv, u32 addr, u8 bits, bool set)
-{
-	u8 data;
-
-	ksz_read8(priv, addr, &data);
-	if (set)
-		data |= bits;
-	else
-		data &= ~bits;
-	ksz_write8(priv, addr, data);
-}
-
-static int ksz_pread8(struct ksz_switch *priv, int port, int reg, u8 *val)
-{
-	return ksz_read8(priv, PORT_CTRL_ADDR(port, reg), val);
-}
-
-static int ksz_pwrite8(struct ksz_switch *priv, int port, int reg, u8 val)
-{
-	return ksz_write8(priv, PORT_CTRL_ADDR(port, reg), val);
-}
-
-static int ksz_pread16(struct ksz_switch *priv, int port, int reg, u16 *val)
-{
-	return ksz_read16(priv, PORT_CTRL_ADDR(port, reg), val);
-}
-
-static int ksz_pwrite16(struct ksz_switch *priv, int port, int reg, u16 val)
-{
-	return ksz_write16(priv, PORT_CTRL_ADDR(port, reg), val);
-}
-
-static int ksz_pwrite32(struct ksz_switch *priv, int port, int reg, u32 val)
-{
-	return ksz_write32(priv, PORT_CTRL_ADDR(port, reg), val);
-}
+KSZ_REGMAP_TABLE(ksz9477_spi, 32, SPI_ADDR_SHIFT,
+		 SPI_TURNAROUND_SHIFT, SPI_ADDR_ALIGN);
 
 static int ksz9477_phy_read16(struct dsa_switch *ds, int addr, int reg)
 {
@@ -503,6 +383,24 @@ static int ksz_default_setup(struct ksz_switch *priv)
 	return 0;
 }
 
+static int microchip_switch_regmap_init(struct ksz_switch *priv)
+{
+	const struct regmap_config *cfg;
+	int i;
+
+	cfg = ksz9477_spi_regmap_config;
+
+	for (i = 0; i < KSZ_REGMAP_ENTRY_COUNT; i++) {
+		priv->regmap[i] = regmap_init_spi(priv->spi, &cfg[i]);
+		if (IS_ERR(priv->regmap[i]))
+			return dev_err_probe(priv->dev, PTR_ERR(priv->regmap[i]),
+					     "Failed to initialize regmap%i\n",
+					     cfg[i].val_bits);
+	}
+
+	return 0;
+}
+
 static int microchip_switch_probe(struct device *dev)
 {
 	struct ksz_switch *priv;
@@ -518,6 +416,10 @@ static int microchip_switch_probe(struct device *dev)
 	priv->spi->mode = SPI_MODE_0;
 	priv->spi->bits_per_word = 8;
 
+	ret = microchip_switch_regmap_init(priv);
+	if (ret)
+		return ret;
+
 	gpio = gpiod_get(dev, "reset", GPIOF_OUT_INIT_ACTIVE);
 	if (gpio_is_valid(gpio)) {
 		mdelay(1);
diff --git a/drivers/net/ksz_common.h b/drivers/net/ksz_common.h
new file mode 100644
index 000000000000..01447b61419e
--- /dev/null
+++ b/drivers/net/ksz_common.h
@@ -0,0 +1,153 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef NET_KSZ_COMMON_H_
+#define NET_KSZ_COMMON_H_
+
+#include <linux/swab.h>
+#include <regmap.h>
+#include <linux/bitops.h>
+#include <platform_data/ksz9477_reg.h>
+
+struct ksz_switch {
+	struct spi_device *spi;
+	struct dsa_switch ds;
+	struct device *dev;
+	int phy_port_cnt;
+	u32 chip_id;
+	u8 features;
+	struct regmap *regmap[3];
+};
+
+static inline int ksz_read8(struct ksz_switch *priv, u32 reg, u8 *val)
+{
+	unsigned int value;
+	int ret = regmap_read(priv->regmap[0], reg, &value);
+
+	*val = value;
+	return ret;
+}
+
+static inline int ksz_read16(struct ksz_switch *priv, u32 reg, u16 *val)
+{
+	unsigned int value;
+	int ret = regmap_read(priv->regmap[1], reg, &value);
+
+	*val = value;
+	return ret;
+}
+
+static inline int ksz_read32(struct ksz_switch *priv, u32 reg, u32 *val)
+{
+	unsigned int value;
+	int ret = regmap_read(priv->regmap[2], reg, &value);
+
+	*val = value;
+	return ret;
+}
+
+static inline int ksz_read64(struct ksz_switch *priv, u32 reg, u64 *val)
+{
+	u32 value[2];
+	int ret;
+
+	ret = regmap_bulk_read(priv->regmap[2], reg, value, 2);
+	if (!ret)
+		*val = (u64)value[0] << 32 | value[1];
+
+	return ret;
+}
+
+static inline int ksz_write8(struct ksz_switch *priv, u32 reg, u8 value)
+{
+	return regmap_write(priv->regmap[0], reg, value);
+}
+
+static inline int ksz_write16(struct ksz_switch *priv, u32 reg, u16 value)
+{
+	return regmap_write(priv->regmap[1], reg, value);
+}
+
+static inline int ksz_write32(struct ksz_switch *priv, u32 reg, u32 value)
+{
+	return regmap_write(priv->regmap[2], reg, value);
+}
+
+static inline int ksz_write64(struct ksz_switch *priv, u32 reg, u64 value)
+{
+	u32 val[2];
+
+	/* Ick! ToDo: Add 64bit R/W to regmap on 32bit systems */
+	value = swab64(value);
+	val[0] = swab32(value & 0xffffffffULL);
+	val[1] = swab32(value >> 32ULL);
+
+	return regmap_bulk_write(priv->regmap[2], reg, val, 2);
+}
+
+static inline int ksz_pread8(struct ksz_switch *priv, int port, int reg, u8 *val)
+{
+       return ksz_read8(priv, PORT_CTRL_ADDR(port, reg), val);
+}
+
+static inline int ksz_pwrite8(struct ksz_switch *priv, int port, int reg, u8 val)
+{
+       return ksz_write8(priv, PORT_CTRL_ADDR(port, reg), val);
+}
+
+static inline int ksz_pread16(struct ksz_switch *priv, int port, int reg, u16 *val)
+{
+       return ksz_read16(priv, PORT_CTRL_ADDR(port, reg), val);
+}
+
+static inline int ksz_pwrite16(struct ksz_switch *priv, int port, int reg, u16 val)
+{
+       return ksz_write16(priv, PORT_CTRL_ADDR(port, reg), val);
+}
+
+static inline int ksz_pwrite32(struct ksz_switch *priv, int port, int reg, u32 val)
+{
+       return ksz_write32(priv, PORT_CTRL_ADDR(port, reg), val);
+}
+
+static void ksz_cfg(struct ksz_switch *priv, u32 addr, u8 bits, bool set)
+{
+	regmap_update_bits(priv->regmap[0], addr, bits, set ? bits : 0);
+}
+
+/* Regmap tables generation */
+#define KSZ_SPI_OP_RD		3
+#define KSZ_SPI_OP_WR		2
+
+#define swabnot_used(x)		0
+
+#define KSZ_SPI_OP_FLAG_MASK(opcode, swp, regbits, regpad)		\
+	swab##swp((opcode) << ((regbits) + (regpad)))
+
+#define KSZ_REGMAP_ENTRY_COUNT	3
+
+#define KSZ_REGMAP_ENTRY(width, swp, regbits, regpad, regalign)		\
+	{								\
+		.name = #width,						\
+		.val_bits = (width),					\
+		.reg_stride = 1,					\
+		.reg_bits = (regbits) + (regalign),			\
+		.pad_bits = (regpad),					\
+		.max_register = BIT(regbits) - 1,			\
+		.read_flag_mask =					\
+			KSZ_SPI_OP_FLAG_MASK(KSZ_SPI_OP_RD, swp,	\
+					     regbits, regpad),		\
+		.write_flag_mask =					\
+			KSZ_SPI_OP_FLAG_MASK(KSZ_SPI_OP_WR, swp,	\
+					     regbits, regpad),		\
+		.reg_format_endian = REGMAP_ENDIAN_BIG,			\
+		.val_format_endian = REGMAP_ENDIAN_BIG			\
+	}
+
+#define KSZ_REGMAP_TABLE(ksz, swp, regbits, regpad, regalign)		\
+	static const struct regmap_config ksz##_regmap_config[KSZ_REGMAP_ENTRY_COUNT] = {	\
+		KSZ_REGMAP_ENTRY(8, swp, (regbits), (regpad), (regalign)), \
+		KSZ_REGMAP_ENTRY(16, swp, (regbits), (regpad), (regalign)), \
+		KSZ_REGMAP_ENTRY(32, swp, (regbits), (regpad), (regalign)), \
+	}
+
+
+#endif
-- 
2.30.2



