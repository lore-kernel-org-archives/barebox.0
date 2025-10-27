Delivery-date: Mon, 27 Oct 2025 08:02:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHFe-00CFkt-1w
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 08:02:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHFe-0003lT-0W
	for lore@pengutronix.de; Mon, 27 Oct 2025 08:02:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XUkzdIC9EFVbabhB6U9nAtlc5ay80+BOGZD9nooY66c=; b=GWL10ObQDNbH8rBmvHiup9h6GB
	bsByE9sCX8iEs79oYvNLWoeIjAht243kJKQ5MzYx33Hw8AugTe1lHudJF44pQ9R0GczOS/wHVuL/S
	F63653MaV90CH+JEWaMK759mJ9OgrMC9j5wjCz9l8Vgtkq2rm1QFfqTwle5E06N472SV+A/iIPRR5
	Q6klz+uqTovIMgO8gEJZ31uzikXYIB9yGsJnPfgY0RFL4uvhBtJ3S+XzrHQcWSmYsf4/jqrvZl6nX
	SNXtRr8Kdie/bDM+Zt+IE+SygberitsFlFDA3uVeU7Y+7XHzqayKd6HGIa4t9Nwk/94KUU+EhvJ7m
	NWC80org==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHFF-0000000DF9g-0ECd;
	Mon, 27 Oct 2025 07:02:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHFC-0000000DF7u-32UW
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 07:02:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDHFB-0003Rs-6t; Mon, 27 Oct 2025 08:02:17 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 08:00:54 +0100
Message-ID: <20251027070214.2425834-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251027070214.2425834-1-a.fatoum@barebox.org>
References: <20251027070214.2425834-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_000218_760453_82A3231B 
X-CRM114-Status: GOOD (  10.34  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] phy: add devinfo callback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make debugging of generic PHYs more convenient, add a devinfo
callback to extract some information from the struct phy.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/phy/phy-core.c | 61 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index f876dc2dea0f..d4c704809cfa 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -20,6 +20,65 @@ static int phy_ida;
 
 DEFINE_DEV_CLASS(phy_class, "phy");
 
+static const char *phy_mode_tostr(struct phy *phy)
+{
+	switch (phy->attrs.mode) {
+	case PHY_MODE_INVALID:
+		return "invalid";
+	case PHY_MODE_USB_HOST:
+		return "usb-host";
+	case PHY_MODE_USB_HOST_LS:
+		return "usb-host-ls";
+	case PHY_MODE_USB_HOST_FS:
+		return "usb-host-fs";
+	case PHY_MODE_USB_HOST_HS:
+		return "usb-host-hs";
+	case PHY_MODE_USB_HOST_SS:
+		return "usb-host-ss";
+	case PHY_MODE_USB_DEVICE:
+		return "usb-device";
+	case PHY_MODE_USB_DEVICE_LS:
+		return "usb-device-ls";
+	case PHY_MODE_USB_DEVICE_FS:
+		return "usb-device-fs";
+	case PHY_MODE_USB_DEVICE_HS:
+		return "usb-device-hs";
+	case PHY_MODE_USB_DEVICE_SS:
+		return "usb-device-ss";
+	case PHY_MODE_USB_OTG:
+		return "usb-otg";
+	case PHY_MODE_UFS_HS_A:
+		return "ufs-hs-a";
+	case PHY_MODE_UFS_HS_B:
+		return "ufs-hs-b";
+	case PHY_MODE_PCIE:
+		return "pcie";
+	case PHY_MODE_ETHERNET:
+		return "ethernet";
+	case PHY_MODE_MIPI_DPHY:
+		return "mipi-dphy";
+	case PHY_MODE_SATA:
+		return "sata";
+	case PHY_MODE_LVDS:
+		return "lvds";
+	case PHY_MODE_DP:
+		return "dp";
+	}
+
+	return "unknown";
+}
+
+static void phy_devinfo(struct device *dev)
+{
+	struct phy *phy = container_of(dev, struct phy, dev);
+
+	printf("PHY info:\n");
+	if (phy->attrs.mode != PHY_MODE_INVALID)
+		printf("  mode: %s\n", phy_mode_tostr(phy));
+	printf("  init count: %u\n", phy->init_count);
+	printf("  power count: %u\n", phy->power_count);
+}
+
 /**
  * phy_create() - create a new phy
  * @dev: device that is creating the new phy
@@ -64,6 +123,8 @@ struct phy *phy_create(struct device *dev, struct device_node *node,
 	if (ret)
 		goto free_ida;
 
+	devinfo_add(&phy->dev, phy_devinfo);
+
 	return phy;
 
 free_ida:
-- 
2.47.3



