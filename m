Delivery-date: Mon, 03 Nov 2025 16:20:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFwLo-00EtdF-1Z
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 16:20:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFwLn-00028V-Sr
	for lore@pengutronix.de; Mon, 03 Nov 2025 16:20:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CK9ZUXHCnVClNzItYVsbNKOdwprpNdhsoR3TkJ7D52o=; b=AS+7QmRXIx8n0frzt01KXtUdat
	kpsX4+1wt6A0SdrVypxARfsuCQJkJdj1Qy9LmwCy4GZyVlmCjaM1OtCoJjY6P4mJr2ebVN7hiwVGa
	m0p+BhO7/RVPfurpSzj0C7IVIUNvfhZTaiLofej/hDjGcrM3pPuEZT3oUiExAPHLO25aJB7PdpZiR
	Nuadxa46QnJ5f4y4PjLK4yXh6pWLuStM1+ahJwCWJ1Et+08dCm47g2jUh4/cqAZiY9rgvolb7D14N
	Bsm6Jexd7bDy5+3JODW8bBY3+N5RRmkJLWOlh1zEQL0YNPhfV9SXhiXzG3DN+4yD2X1WKTuyCPsDg
	fuBwndVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFwLM-0000000A7s9-0zPN;
	Mon, 03 Nov 2025 15:19:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFwLK-0000000A7r6-2Q4o
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 15:19:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vFwLI-0001za-ON; Mon, 03 Nov 2025 16:19:36 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vFwLI-006sq6-1p;
	Mon, 03 Nov 2025 16:19:36 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vFwLI-00000009w3q-1xxA;
	Mon, 03 Nov 2025 16:19:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Holger Assmann <h.assmann@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Nov 2025 16:19:32 +0100
Message-ID: <20251103151935.2368094-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251103151935.2368094-1-a.fatoum@pengutronix.de>
References: <20251103151935.2368094-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_071938_611105_B5EE9844 
X-CRM114-Status: GOOD (  17.37  )
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
X-Spam-Status: No, score=-1.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] phy: freescale: imx8mq-usb: add support for 8MP/8MQ vbus-supply
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The PHY device tree node may reference a regulator via vbus-supply that
needs to be switched by software.

Linux already supported this binding, so implement it for barebox as well.

Unlike the Linux driver, we do not treat a missing regulator as hard
error for backwards compatibility reasons. Instead, we just print a
warning and move along:

- If we have a driver, then on deep probe systems, this should always
  succeed anyway.

- If we do not have a driver and are on deep probe system, the VBUS is
  powered on already, then the warning can be suppressed by
  barebox,allow-dummy-supply in the provider node.

- If the user is not on a deep probe system, they should either patch
  out vbus-supply or enable deep probe.

Reported-by: Holger Assmann <h.assmann@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index 1349ca922c70..414d21241496 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -5,6 +5,7 @@
 #include <driver.h>
 #include <errno.h>
 #include <init.h>
+#include <regulator.h>
 #include <io.h>
 #include <linux/bitfield.h>
 #include <linux/clk.h>
@@ -40,6 +41,7 @@ struct imx8mq_usb_phy {
 	struct phy *phy;
 	struct clk *clk;
 	void __iomem *base;
+	struct regulator *vbus;
 };
 
 static int imx8mq_usb_phy_init(struct phy *phy)
@@ -109,6 +111,11 @@ static int imx8mp_usb_phy_init(struct phy *phy)
 static int imx8mq_phy_power_on(struct phy *phy)
 {
 	struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);
+	int ret;
+
+	ret = regulator_enable(imx_phy->vbus);
+	if (ret)
+		return ret;
 
 	return clk_enable(imx_phy->clk);
 }
@@ -118,6 +125,7 @@ static int imx8mq_phy_power_off(struct phy *phy)
 	struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);
 
 	clk_disable(imx_phy->clk);
+	regulator_disable(imx_phy->vbus);
 
 	return 0;
 }
@@ -177,6 +185,12 @@ static int imx8mq_usb_phy_probe(struct device *dev)
 	if (IS_ERR(imx_phy->phy))
 		return PTR_ERR(imx_phy->phy);
 
+	imx_phy->vbus = regulator_get(dev, "vbus");
+	if (IS_ERR(imx_phy->vbus)) {
+		imx_phy->vbus = NULL;
+		dev_warn(dev, "Failed to get 'vbus' regulator (ignored).\n");
+	}
+
 	phy_set_drvdata(imx_phy->phy, imx_phy);
 
 	phy_provider = of_phy_provider_register(dev, imx8mq_usb_phy_xlate);
-- 
2.47.3



