Delivery-date: Tue, 12 Apr 2022 21:55:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neMbS-00HSpb-Qi
	for lore@lore.pengutronix.de; Tue, 12 Apr 2022 21:55:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neMbQ-0007am-6d
	for lore@pengutronix.de; Tue, 12 Apr 2022 21:55:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wx1lw7BVnbKD+VAN/SW7U3OUoMiNixk66FUALx3RbBQ=; b=kVt7tZyHgqSi4/
	ZvdAv3oduKlaFjxLWqViW3BPVkZ9Qmi7LUFAB6xMIcNueikwAqBX96DrBeZStH2jcpzt2hgXsHYv2
	7I+EiV7ZwVU3qUJGe1PgAx9hiyI1B0fqWfcu5K+ZLlkZUtvAxB1mDf5zsohh/whyGXjsL20Qnbun+
	X17fqpQjHk/ngQjz3pQzLfNXHOFxEnL6GtjnBcS4QJRkk+PP9L79cfsm/wW59Dr3f7CfNipquEmML
	s2Vj7yg6GKLUqlyMnyKgsEJTS+S9m3SeHp5ELCe+9px5G3Do0j3Ujdxf+NjW/tNX7HOp/NUhWEAcH
	M29YCeg2bOSK6GL0wVTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neMZu-00FdSR-Ia; Tue, 12 Apr 2022 19:53:30 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neMZm-00FdQX-Sg
 for barebox@lists.infradead.org; Tue, 12 Apr 2022 19:53:25 +0000
Received: by lynxeye.de (Postfix, from userid 501)
 id D0F65E74217; Tue, 12 Apr 2022 21:52:46 +0200 (CEST)
Received: from astat.fritz.box (a89-183-68-148.net-htp.de [89.183.68.148])
 by lynxeye.de (Postfix) with ESMTPA id A0BFFE7414D
 for <barebox@lists.infradead.org>; Tue, 12 Apr 2022 21:52:44 +0200 (CEST)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 12 Apr 2022 21:52:40 +0200
Message-Id: <20220412195241.126535-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_125323_237516_79314678 
X-CRM114-Status: GOOD (  16.27  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] phy: freescale: imx8mq-usb: add support for i.MX8MP PHY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a port of the Linux kernel commit 4708ee37826e
by Li Jun <jun.li@nxp.com>. The USB3 PHY in the i.MX8MP is very
close to the one in the i.MX8MQ and just needs a different setup
routine.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 87 ++++++++++++++++++----
 1 file changed, 74 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index d3f9c1ba6ecf..fc5fb006b56c 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -2,20 +2,24 @@
 /* Copyright (c) 2017 NXP. */
 
 #include <common.h>
+#include <driver.h>
+#include <errno.h>
 #include <init.h>
 #include <io.h>
-#include <of.h>
-#include <errno.h>
-#include <driver.h>
-#include <malloc.h>
-#include <usb/phy.h>
-#include <linux/phy/phy.h>
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <linux/phy/phy.h>
+#include <malloc.h>
+#include <of_device.h>
+#include <of.h>
+#include <usb/phy.h>
 
 
 #define PHY_CTRL0			0x0
 #define PHY_CTRL0_REF_SSP_EN		BIT(2)
+#define PHY_CTRL0_FSEL_MASK		GENMASK(10, 5)
+#define PHY_CTRL0_FSEL_24M		0x2a
 
 #define PHY_CTRL1			0x4
 #define PHY_CTRL1_RESET			BIT(0)
@@ -26,6 +30,11 @@
 
 #define PHY_CTRL2			0x8
 #define PHY_CTRL2_TXENABLEN0		BIT(8)
+#define PHY_CTRL2_OTG_DISABLE		BIT(9)
+
+#define PHY_CTRL6			0x18
+#define PHY_CTRL6_ALT_CLK_EN		BIT(1)
+#define PHY_CTRL6_ALT_CLK_SEL		BIT(0)
 
 struct imx8mq_usb_phy {
 	struct phy *phy;
@@ -59,6 +68,44 @@ static int imx8mq_usb_phy_init(struct phy *phy)
 	return 0;
 }
 
+static int imx8mp_usb_phy_init(struct phy *phy)
+{
+	struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);
+	u32 value;
+
+	/* USB3.0 PHY signal fsel for 24M ref */
+	value = readl(imx_phy->base + PHY_CTRL0);
+	value &= ~PHY_CTRL0_FSEL_MASK;
+	value |= FIELD_PREP(PHY_CTRL0_FSEL_MASK, PHY_CTRL0_FSEL_24M);
+	writel(value, imx_phy->base + PHY_CTRL0);
+
+	/* Disable alt_clk_en and use internal MPLL clocks */
+	value = readl(imx_phy->base + PHY_CTRL6);
+	value &= ~(PHY_CTRL6_ALT_CLK_SEL | PHY_CTRL6_ALT_CLK_EN);
+	writel(value, imx_phy->base + PHY_CTRL6);
+
+	value = readl(imx_phy->base + PHY_CTRL1);
+	value &= ~(PHY_CTRL1_VDATSRCENB0 | PHY_CTRL1_VDATDETENB0);
+	value |= PHY_CTRL1_RESET | PHY_CTRL1_ATERESET;
+	writel(value, imx_phy->base + PHY_CTRL1);
+
+	value = readl(imx_phy->base + PHY_CTRL0);
+	value |= PHY_CTRL0_REF_SSP_EN;
+	writel(value, imx_phy->base + PHY_CTRL0);
+
+	value = readl(imx_phy->base + PHY_CTRL2);
+	value |= PHY_CTRL2_TXENABLEN0 | PHY_CTRL2_OTG_DISABLE;
+	writel(value, imx_phy->base + PHY_CTRL2);
+
+	udelay(10);
+
+	value = readl(imx_phy->base + PHY_CTRL1);
+	value &= ~(PHY_CTRL1_RESET | PHY_CTRL1_ATERESET);
+	writel(value, imx_phy->base + PHY_CTRL1);
+
+	return 0;
+}
+
 static int imx8mq_phy_power_on(struct phy *phy)
 {
 	struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);
@@ -75,12 +122,26 @@ static int imx8mq_phy_power_off(struct phy *phy)
 	return 0;
 }
 
-static struct phy_ops imx8mq_usb_phy_ops = {
+static const struct phy_ops imx8mq_usb_phy_ops = {
 	.init		= imx8mq_usb_phy_init,
 	.power_on	= imx8mq_phy_power_on,
 	.power_off	= imx8mq_phy_power_off,
 };
 
+static const struct phy_ops imx8mp_usb_phy_ops = {
+	.init		= imx8mp_usb_phy_init,
+	.power_on	= imx8mq_phy_power_on,
+	.power_off	= imx8mq_phy_power_off,
+};
+
+static const struct of_device_id imx8mq_usb_phy_of_match[] = {
+	{.compatible = "fsl,imx8mq-usb-phy",
+	 .data = &imx8mq_usb_phy_ops,},
+	{.compatible = "fsl,imx8mp-usb-phy",
+	 .data = &imx8mp_usb_phy_ops,},
+	{ }
+};
+
 static struct phy *imx8mq_usb_phy_xlate(struct device_d *dev,
 					struct of_phandle_args *args)
 {
@@ -93,6 +154,7 @@ static int imx8mq_usb_phy_probe(struct device_d *dev)
 {
 	struct phy_provider *phy_provider;
 	struct imx8mq_usb_phy *imx_phy;
+	const struct phy_ops *phy_ops;
 
 	imx_phy = xzalloc(sizeof(*imx_phy));
 
@@ -106,7 +168,11 @@ static int imx8mq_usb_phy_probe(struct device_d *dev)
 	if (IS_ERR(imx_phy->base))
 		return PTR_ERR(imx_phy->base);
 
-	imx_phy->phy = phy_create(dev, NULL, &imx8mq_usb_phy_ops);
+	phy_ops = of_device_get_match_data(dev);
+	if (!phy_ops)
+		return -EINVAL;
+
+	imx_phy->phy = phy_create(dev, NULL, phy_ops);
 	if (IS_ERR(imx_phy->phy))
 		return PTR_ERR(imx_phy->phy);
 
@@ -117,11 +183,6 @@ static int imx8mq_usb_phy_probe(struct device_d *dev)
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
-static const struct of_device_id imx8mq_usb_phy_of_match[] = {
-	{.compatible = "fsl,imx8mq-usb-phy",},
-	{ },
-};
-
 static struct driver_d imx8mq_usb_phy_driver = {
 	.name	= "imx8mq-usb-phy",
 	.probe	= imx8mq_usb_phy_probe,
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

