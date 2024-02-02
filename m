Delivery-date: Fri, 02 Feb 2024 16:31:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVvWE-0002SY-0B
	for lore@lore.pengutronix.de;
	Fri, 02 Feb 2024 16:31:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVvWE-0005nk-EP
	for lore@pengutronix.de; Fri, 02 Feb 2024 16:31:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lZmcSN6YpU9d+yLU8qNf3EWf+59gJpBeGeNIuqdnf3A=; b=UMRhzUdmSjVVt2kPiz4dkLLHE1
	ZCiNCM6EkL4dQ1k+at5QEm8UAeAtxNrw0ZTlgm74FKZjY1KD+iNMNugkQR0pvxZJLW5YJKifAVzWV
	xo/aP8GoXMCeZc9WOdkQXsHLV27Rn5LRx9BCXBeKu0rjkbZatTxlwV+RQYNVix0VgCfpTYXw5Mplp
	Yy07ByuWlNwfGBQrqrdqhXEHM2lpznMHNaKfffDL6ocRHFvLAQw+KHCmY99TUfOYIb9lnii+91xLM
	Nzw3BXnaAd9Di9p/NhE+asDGw7apXU/1vL6+dDsypzccX2W/ECYTPQde1CWytPSPPixByAl6BFrG7
	ownConeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvVh-0000000C126-3CZM;
	Fri, 02 Feb 2024 15:31:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvVc-0000000C0yh-0G12
	for barebox@lists.infradead.org;
	Fri, 02 Feb 2024 15:31:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvVa-0005UE-TY; Fri, 02 Feb 2024 16:31:14 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvVa-0045XL-Gi; Fri, 02 Feb 2024 16:31:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvVa-0015Pr-1M;
	Fri, 02 Feb 2024 16:31:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  2 Feb 2024 16:31:08 +0100
Message-Id: <20240202153113.245488-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240202153113.245488-1-s.hauer@pengutronix.de>
References: <20240202153113.245488-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_073116_190083_F0806EB8 
X-CRM114-Status: GOOD (  17.56  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/8] i2c: lpi2c: add PBL support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds PBL support to the lpi2c driver which can be used for early
I2C support on i.MX93.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/Makefile        |  2 +-
 drivers/i2c/busses/i2c-imx-lpi2c.c | 34 ++++++++++++++++++++++++++++++
 include/pbl/i2c.h                  |  1 +
 3 files changed, 36 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/Makefile b/drivers/i2c/busses/Makefile
index 48f9b5be04..b4225995c0 100644
--- a/drivers/i2c/busses/Makefile
+++ b/drivers/i2c/busses/Makefile
@@ -4,7 +4,7 @@ obj-$(CONFIG_I2C_BCM283X)	+= i2c-bcm283x.o
 obj-$(CONFIG_I2C_GPIO)		+= i2c-gpio.o
 obj-$(CONFIG_I2C_IMX)		+= i2c-imx.o
 lwl-$(CONFIG_I2C_IMX_EARLY)	+= i2c-imx-early.o
-obj-$(CONFIG_I2C_IMX_LPI2C)	+= i2c-imx-lpi2c.o
+obj-pbl-$(CONFIG_I2C_IMX_LPI2C)	+= i2c-imx-lpi2c.o
 obj-$(CONFIG_I2C_MV64XXX)	+= i2c-mv64xxx.o
 obj-$(CONFIG_I2C_OMAP)		+= i2c-omap.o
 obj-$(CONFIG_I2C_TEGRA)		+= i2c-tegra.o
diff --git a/drivers/i2c/busses/i2c-imx-lpi2c.c b/drivers/i2c/busses/i2c-imx-lpi2c.c
index 42f7b37143..a7d52fb1b1 100644
--- a/drivers/i2c/busses/i2c-imx-lpi2c.c
+++ b/drivers/i2c/busses/i2c-imx-lpi2c.c
@@ -19,6 +19,7 @@
 #include <pinctrl.h>
 #include <of_gpio.h>
 #include <of_device.h>
+#include <pbl/i2c.h>
 
 #include <io.h>
 #include <i2c/i2c.h>
@@ -93,6 +94,7 @@ enum lpi2c_imx_pincfg {
 
 struct lpi2c_imx_struct {
 	struct i2c_adapter	adapter;
+	struct pbl_i2c		pbl_i2c;
 	int			num_clks;
 	struct clk_bulk_data	*clks;
 	void __iomem		*base;
@@ -455,6 +457,36 @@ static int lpi2c_imx_xfer(struct i2c_adapter *adapter,
 	return (result < 0) ? result : num;
 }
 
+#ifdef __PBL__
+
+static int lpi2c_pbl_imx_xfer(struct pbl_i2c *lpi2c, struct i2c_msg *msgs, int num)
+{
+	struct lpi2c_imx_struct *lpi2c_imx = container_of(lpi2c, struct lpi2c_imx_struct, pbl_i2c);
+
+	return lpi2c_imx_xfer(&lpi2c_imx->adapter, msgs, num);
+}
+
+struct pbl_i2c *imx93_i2c_early_init(void __iomem *regs)
+{
+	static struct lpi2c_imx_struct lpi2c;
+	u32 temp;
+
+	lpi2c.base = regs;
+
+	temp = readl(lpi2c.base + LPI2C_PARAM);
+	printf("%s: 0x%08x\n", __func__, temp);
+	lpi2c.txfifosize = 1 << (temp & 0x0f);
+	lpi2c.rxfifosize = 1 << ((temp >> 8) & 0x0f);
+	lpi2c.bitrate = 100000;
+	lpi2c.clk_rate = 24000000;
+
+	lpi2c.pbl_i2c.xfer = lpi2c_pbl_imx_xfer;
+
+	return &lpi2c.pbl_i2c;
+}
+
+#else
+
 static const struct of_device_id lpi2c_imx_of_match[] = {
 	{ .compatible = "fsl,imx7ulp-lpi2c" },
 	{ },
@@ -517,6 +549,8 @@ static struct driver lpi2c_imx_driver = {
 };
 coredevice_platform_driver(lpi2c_imx_driver);
 
+#endif
+
 MODULE_AUTHOR("Gao Pan <pandy.gao@nxp.com>");
 MODULE_DESCRIPTION("I2C adapter driver for LPI2C bus");
 MODULE_LICENSE("GPL");
diff --git a/include/pbl/i2c.h b/include/pbl/i2c.h
index ea2ae447a3..b31f72bee7 100644
--- a/include/pbl/i2c.h
+++ b/include/pbl/i2c.h
@@ -18,6 +18,7 @@ static inline int pbl_i2c_xfer(struct pbl_i2c *i2c,
 struct pbl_i2c *imx8m_i2c_early_init(void __iomem *regs);
 struct pbl_i2c *imx6_i2c_early_init(void __iomem *regs);
 struct pbl_i2c *ls1046_i2c_init(void __iomem *regs);
+struct pbl_i2c *imx93_i2c_early_init(void __iomem *regs);
 
 static inline int i2c_dev_probe(struct pbl_i2c *i2c, int addr, bool onebyte)
 {
-- 
2.39.2



