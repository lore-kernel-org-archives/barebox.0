Delivery-date: Fri, 25 Oct 2024 10:51:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4G2L-000Ysy-0U
	for lore@lore.pengutronix.de;
	Fri, 25 Oct 2024 10:51:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4G2L-0001PZ-Dg
	for lore@pengutronix.de; Fri, 25 Oct 2024 10:51:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LjPBjsepXBK1RtVbrIWgTEwj4QMcHY5PpEQJOrL3ZRw=; b=X0UfUejVbu/16ym1xLjeepXNWO
	zJfnf9oDMRqMOCevaaJFM/Ei0l8GoDT9pdaBy4epYNYE4FSw10ywvzdtMN1poWyx6Fd6xJx9IBi73
	zEXeljt3IPA5F0v2rGBATDu6/QfH1+Xt0DGa5v6ncoWeFbYNevo2w3mDozJBJhkTJiyGngii8A//9
	7IHboehjPui3EBCXwY6QS0TNATMdgkfZ1ii7LXva+b6+qWycKCptTJx5ZrI3d8PEDo+3mIq3a7AsF
	bx3laAoeRPHiLa1DmhHfS9yaBhOE+S+F6wM2YJe81stVauzRPJKEYtPIeGLrojIk9yAwJnu3MWTE1
	j1qwqdFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4G1s-000000032uX-0DFj;
	Fri, 25 Oct 2024 08:50:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4G0L-000000032Ny-0jfh
	for barebox@lists.infradead.org;
	Fri, 25 Oct 2024 08:49:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G0C-0000zK-11; Fri, 25 Oct 2024 10:49:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G0B-000KrS-2f;
	Fri, 25 Oct 2024 10:48:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G0B-008U4a-2U;
	Fri, 25 Oct 2024 10:48:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 25 Oct 2024 10:48:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-phy-class-v1-1-24bf51365a08@pengutronix.de>
References: <20241025-phy-class-v1-0-24bf51365a08@pengutronix.de>
In-Reply-To: <20241025-phy-class-v1-0-24bf51365a08@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729846139; l=6448;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=sFdEj/dydI0LwsW9HZSSlZKp41JcwLUqAMXMvCwlhCA=;
 b=Qr+Ra00Qts63E5lqo72hzHkBD6ZI103Xp1TU7/lwPUeqMst/aJe5T9xENFyfCoG1zSQr+zVFg
 xCLZb2Pn62ACO1Cy8SfQxXz2MEg/0M6N1y7T18uSmel7ZamtKraWX9M
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_014909_406420_3FE6AED2 
X-CRM114-Status: GOOD (  13.10  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] phy: make of_phandle_args constant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Like done in Linux the of_xlate() args argument should be constant.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c         | 2 +-
 drivers/phy/phy-core.c                             | 2 +-
 drivers/phy/phy-stm32-usbphyc.c                    | 2 +-
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c      | 2 +-
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 2 +-
 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c     | 2 +-
 drivers/phy/usb-nop-xceiv.c                        | 2 +-
 drivers/pinctrl/pinctrl-tegra-xusb.c               | 2 +-
 drivers/usb/imx/imx-usb-phy.c                      | 2 +-
 include/linux/phy/phy.h                            | 4 ++--
 10 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index b9f9fad1fd..1349ca922c 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -144,7 +144,7 @@ static const struct of_device_id imx8mq_usb_phy_of_match[] = {
 MODULE_DEVICE_TABLE(of, imx8mq_usb_phy_of_match);
 
 static struct phy *imx8mq_usb_phy_xlate(struct device *dev,
-					struct of_phandle_args *args)
+					const struct of_phandle_args *args)
 {
 	struct imx8mq_usb_phy *imx_phy = dev->priv;
 
diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 0a2f1b0d11..c289e75c78 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -81,7 +81,7 @@ struct phy *phy_create(struct device *dev, struct device_node *node,
  */
 struct phy_provider *__of_phy_provider_register(struct device *dev,
 						struct phy * (*of_xlate)(struct device *dev,
-									 struct of_phandle_args *args))
+							const struct of_phandle_args *args))
 {
 	struct phy_provider *phy_provider;
 
diff --git a/drivers/phy/phy-stm32-usbphyc.c b/drivers/phy/phy-stm32-usbphyc.c
index 6bac5e1e59..815d9c8f7b 100644
--- a/drivers/phy/phy-stm32-usbphyc.c
+++ b/drivers/phy/phy-stm32-usbphyc.c
@@ -567,7 +567,7 @@ static void stm32_usbphyc_switch_setup(struct stm32_usbphyc *usbphyc,
 }
 
 static struct phy *stm32_usbphyc_of_xlate(struct device *dev,
-					  struct of_phandle_args *args)
+					  const struct of_phandle_args *args)
 {
 	struct stm32_usbphyc *usbphyc = dev->priv;
 	struct stm32_usbphyc_phy *usbphyc_phy = NULL;
diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 34abbd85db..e46624111d 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -257,7 +257,7 @@ static int rockchip_usb2phy_power_off(struct phy *phy)
 }
 
 static struct phy *rockchip_usb2phy_of_xlate(struct device *dev,
-					     struct of_phandle_args *args)
+					     const struct of_phandle_args *args)
 {
 	struct rockchip_usb2phy *rphy = dev->priv;
 	struct device_node *phynode = args->np;
diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index b864ecb76e..b334ced811 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -270,7 +270,7 @@ static const struct phy_ops rochchip_combphy_ops = {
 };
 
 static struct phy *rockchip_combphy_xlate(struct device *dev,
-					  struct of_phandle_args *args)
+					  const struct of_phandle_args *args)
 {
 	struct rockchip_combphy_priv *priv = dev->priv;
 
diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
index 7f39b261ca..e533b77ac1 100644
--- a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
+++ b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
@@ -209,7 +209,7 @@ static const struct phy_ops rochchip_p3phy_ops = {
 };
 
 static struct phy *rockchip_p3phy_xlate(struct device *dev,
-					struct of_phandle_args *args)
+					const struct of_phandle_args *args)
 {
 	struct rockchip_p3phy_priv *priv = dev->priv;
 
diff --git a/drivers/phy/usb-nop-xceiv.c b/drivers/phy/usb-nop-xceiv.c
index 9a0acf9e7f..5434ba58c7 100644
--- a/drivers/phy/usb-nop-xceiv.c
+++ b/drivers/phy/usb-nop-xceiv.c
@@ -25,7 +25,7 @@ struct nop_usbphy {
 };
 
 static struct phy *nop_usbphy_xlate(struct device *dev,
-				    struct of_phandle_args *args)
+				    const struct of_phandle_args *args)
 {
 	struct nop_usbphy *nopphy = dev->priv;
 
diff --git a/drivers/pinctrl/pinctrl-tegra-xusb.c b/drivers/pinctrl/pinctrl-tegra-xusb.c
index f3a9a0203f..ed48fabc5b 100644
--- a/drivers/pinctrl/pinctrl-tegra-xusb.c
+++ b/drivers/pinctrl/pinctrl-tegra-xusb.c
@@ -269,7 +269,7 @@ static const struct phy_ops sata_phy_ops = {
 };
 
 static struct phy *tegra_xusb_padctl_xlate(struct device *dev,
-					   struct of_phandle_args *args)
+					   const struct of_phandle_args *args)
 {
 	struct tegra_xusb_padctl *padctl = dev->priv;
 	unsigned int index = args->args[0];
diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index 70bf292f80..3dcaa1e1f4 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -109,7 +109,7 @@ static int imx_usbphy_notify_disconnect(struct usb_phy *phy,
 }
 
 static struct phy *imx_usbphy_xlate(struct device *dev,
-				    struct of_phandle_args *args)
+				    const struct of_phandle_args *args)
 {
 	struct imx_usbphy *imxphy = dev->priv;
 
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 9f01bc3e9f..e861e50f76 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -102,7 +102,7 @@ struct phy_provider {
 	struct device		*dev;
 	struct list_head	list;
 	struct phy * (*of_xlate)(struct device *dev,
-				 struct of_phandle_args *args);
+				 const struct of_phandle_args *args);
 };
 
 /**
@@ -174,7 +174,7 @@ struct phy *phy_create(struct device *dev, struct device_node *node,
 void phy_destroy(struct phy *phy);
 struct phy_provider *__of_phy_provider_register(struct device *dev,
 						struct phy * (*of_xlate)(struct device *dev,
-									 struct of_phandle_args *args));
+								const struct of_phandle_args *args));
 void of_phy_provider_unregister(struct phy_provider *phy_provider);
 struct usb_phy *phy_to_usbphy(struct phy *phy);
 struct phy *phy_get_by_index(struct device *dev, int index);

-- 
2.39.5



