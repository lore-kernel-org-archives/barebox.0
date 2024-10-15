Delivery-date: Tue, 15 Oct 2024 13:21:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0fcL-004dmA-36
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 13:21:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0fcK-0000Le-Pf
	for lore@pengutronix.de; Tue, 15 Oct 2024 13:21:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3IjpBhIiKV2hbKGhi4looi67jbXlrA6sryS3ZQaw8oI=; b=yGc12zrtFDoKlgmz7eg6ppYNGm
	3dH6N61JQqimW9bFyuqFuMXT7bV3yd84d4dpjaiAnGNaNAqcoRVzwyZaR2wcCORmjiAagtcFGyy29
	RRvA9UcYHiXCj0x/pdSXh2T2mc/WZauiOzWTkou2QvmQLZKLlOMlXRNuqU/sLqldNpPWWEpHJDWxz
	+pwSRY63bK5f5akwYHyEydWN/grVXNtEhCIMru/xLfiM/eeZYDzqAEkDAC5vmnUVUFudONKFHo6e4
	YzSYD0U6orESozefyc2zEqDYTZb4HaxazGTiR7JTD4vfjxzj1Bg2HmVGPzezRHoGs7HULt140wYqE
	jc2zUWpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0fba-00000007zjd-2B6l;
	Tue, 15 Oct 2024 11:20:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0fSC-00000007yDf-3UG6
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 11:11:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSB-0007uj-IN; Tue, 15 Oct 2024 13:11:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSB-00219G-1N; Tue, 15 Oct 2024 13:11:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSA-000ubB-37;
	Tue, 15 Oct 2024 13:11:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Oct 2024 13:11:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241015-rockchip-spi-rk808-v1-5-e276b4b59603@pengutronix.de>
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
In-Reply-To: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1728990662; l=5839;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=qnA6TyXFgCIS/AyXUjeE+lHtiOlErTK5tCoVA+JgOnU=;
 b=AWgOVo+VVqLZX+w3jKhpAe5bpBLWS05r7ZjaDUoXpFgTyvkjq+ZQlQf5ZlvLJq2jFOzq2mWzz
 zq9EVSLvIDMDqG0GlCSrFJisbSrU7F/eZWXjmw27lC1YKNSHjapCgX2
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_041104_929840_7CAD1544 
X-CRM114-Status: GOOD (  18.78  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/7] mfd: rk808: add support for RK806
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for the RK806 to the rk808 driver. Additionally to
I2C this variant comes with SPI support, so add SPI probe support to the
driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/Kconfig |   4 +-
 drivers/mfd/rk808.c | 103 +++++++++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 104 insertions(+), 3 deletions(-)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 5189364c2c..dabe71dbdc 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -119,8 +119,8 @@ config MFD_ATMEL_FLEXCOM
 
 config MFD_RK808
 	tristate "Rockchip RK805/RK808/RK809/RK817/RK818 Power Management Chip"
-	depends on I2C && OFDEVICE
-	select REGMAP_I2C
+	depends on (I2C || SPI) && OFDEVICE
+	select REGMAP_I2C if I2C
 	help
 	  If you say yes here you get support for the RK805, RK808, RK809,
 	  RK817 and RK818 Power Management chips.
diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 788e463c20..5b010e09ef 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -22,6 +22,7 @@
 #include <poweroff.h>
 #include <of.h>
 #include <linux/regmap.h>
+#include <spi/spi.h>
 
 struct rk808_reg_data {
 	int addr;
@@ -61,6 +62,12 @@ static const struct mfd_cell rk805s[] = {
 	{ .name = "rk805-pwrkey", },
 };
 
+static const struct mfd_cell rk806s[] = {
+	{ .name = "rk805-pinctrl", },
+	{ .name = "rk808-regulator", },
+	{ .name = "rk805-pwrkey", },
+};
+
 static const struct mfd_cell rk808s[] = {
 	{ .name = "rk808-clkout", },
 	{ .name = "rk808-regulator", },
@@ -94,6 +101,12 @@ static const struct rk808_reg_data rk805_pre_init_reg[] = {
 	{RK805_THERMAL_REG, TEMP_HOTDIE_MSK, TEMP115C},
 };
 
+static const struct rk808_reg_data rk806_pre_init_reg[] = {
+	{ RK806_GPIO_INT_CONFIG, RK806_INT_POL_MSK, RK806_INT_POL_L },
+	{ RK806_SYS_CFG3, RK806_SLAVE_RESTART_FUN_MSK, RK806_SLAVE_RESTART_FUN_EN },
+	{ RK806_SYS_OPTION, RK806_SYS_ENB2_2M_MSK, RK806_SYS_ENB2_2M_EN },
+};
+
 static const struct rk808_reg_data rk808_pre_init_reg[] = {
 	{ RK808_BUCK3_CONFIG_REG, BUCK_ILMIN_MASK,  BUCK_ILMIN_150MA },
 	{ RK808_BUCK4_CONFIG_REG, BUCK_ILMIN_MASK,  BUCK_ILMIN_200MA },
@@ -274,6 +287,12 @@ static int rk8xx_probe(struct device *dev, int variant, struct regmap *regmap)
 		cells = rk805s;
 		nr_cells = ARRAY_SIZE(rk805s);
 		break;
+	case RK806_ID:
+		pre_init_reg = rk806_pre_init_reg;
+		nr_pre_init_regs = ARRAY_SIZE(rk806_pre_init_reg);
+		cells = rk806s;
+		nr_cells = ARRAY_SIZE(rk806s);
+		break;
 	case RK808_ID:
 		pre_init_reg = rk808_pre_init_reg;
 		nr_pre_init_regs = ARRAY_SIZE(rk808_pre_init_reg);
@@ -399,6 +418,75 @@ static int rk808_probe(struct device *dev)
 	return rk8xx_probe(dev, variant, regmap);
 }
 
+#define RK806_ADDR_SIZE 2
+#define RK806_CMD_WITH_SIZE(CMD, VALUE_BYTES) \
+        (RK806_CMD_##CMD | RK806_CMD_CRC_DIS | (VALUE_BYTES - 1))
+
+static const struct regmap_config rk806_regmap_config_spi = {
+	.reg_bits = 16,
+	.val_bits = 8,
+	.max_register = RK806_BUCK_RSERVE_REG5,
+};
+
+static int rk806_spi_bus_write(void *context, const void *vdata, size_t count)
+{
+	struct device *dev = context;
+	struct spi_device *spi = to_spi_device(dev);
+	struct spi_transfer xfer[2] = { 0 };
+	/* data and thus count includes the register address */
+	size_t val_size = count - RK806_ADDR_SIZE;
+	char cmd;
+
+	if (val_size < 1 || val_size > (RK806_CMD_LEN_MSK + 1))
+		return -EINVAL;
+
+	cmd = RK806_CMD_WITH_SIZE(WRITE, val_size);
+
+	xfer[0].tx_buf = &cmd;
+	xfer[0].len = sizeof(cmd);
+	xfer[1].tx_buf = vdata;
+	xfer[1].len = count;
+
+	return spi_sync_transfer(spi, xfer, ARRAY_SIZE(xfer));
+}
+
+static int rk806_spi_bus_read(void *context, const void *vreg, size_t reg_size,
+			      void *val, size_t val_size)
+{
+	struct device *dev = context;
+	struct spi_device *spi = to_spi_device(dev);
+	char txbuf[3] = { 0 };
+
+	if (reg_size != RK806_ADDR_SIZE ||
+	    val_size < 1 || val_size > (RK806_CMD_LEN_MSK + 1))
+		return -EINVAL;
+
+	/* TX buffer contains command byte followed by two address bytes */
+	txbuf[0] = RK806_CMD_WITH_SIZE(READ, val_size);
+	memcpy(txbuf+1, vreg, reg_size);
+
+	return spi_write_then_read(spi, txbuf, sizeof(txbuf), val, val_size);
+}
+
+static const struct regmap_bus rk806_regmap_bus_spi = {
+	.write = rk806_spi_bus_write,
+	.read = rk806_spi_bus_read,
+	.reg_format_endian_default = REGMAP_ENDIAN_LITTLE,
+};
+
+static int rk808_probe_spi(struct device *dev)
+{
+	struct regmap *regmap;
+
+	regmap = regmap_init(dev, &rk806_regmap_bus_spi,
+				  dev, &rk806_regmap_config_spi);
+	if (IS_ERR(regmap))
+		return dev_err_probe(dev, PTR_ERR(regmap),
+				     "Failed to init regmap\n");
+
+	return rk8xx_probe(dev, RK806_ID, regmap);
+}
+
 static const struct of_device_id rk808_of_match[] = {
 	{ .compatible = "rockchip,rk805" },
 	{ .compatible = "rockchip,rk808" },
@@ -409,13 +497,26 @@ static const struct of_device_id rk808_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, rk808_of_match);
 
-static struct driver rk808_i2c_driver = {
+static __maybe_unused struct driver rk808_i2c_driver = {
 	.name = "rk808",
 	.of_compatible = rk808_of_match,
 	.probe    = rk808_probe,
 };
 coredevice_i2c_driver(rk808_i2c_driver);
 
+static const struct of_device_id rk808_spi_of_match[] = {
+	{ .compatible = "rockchip,rk806" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, rk808_of_match);
+
+static __maybe_unused struct driver rk808_spi_driver = {
+	.name = "rk808",
+	.of_compatible = rk808_spi_of_match,
+	.probe    = rk808_probe_spi,
+};
+coredevice_spi_driver(rk808_spi_driver);
+
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Chris Zhong <zyw@rock-chips.com>");
 MODULE_AUTHOR("Zhang Qing <zhangqing@rock-chips.com>");

-- 
2.39.5



