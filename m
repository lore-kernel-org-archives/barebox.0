Delivery-date: Mon, 20 Mar 2023 16:31:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTk-007zIo-Cc
	for lore@lore.pengutronix.de; Mon, 20 Mar 2023 16:31:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTj-0001p3-HS
	for lore@pengutronix.de; Mon, 20 Mar 2023 16:31:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S+5XEyfmc50YYuI8rbieRi7VTKdVADSf1tPfQi5FycY=; b=Ka2GFXkZInf9OjMzrMJ98Y0Ii7
	Cppn8ygBJHpGtI0nDNwjz8mV1NOWwdKsL1PfKBJ5+IJRo+4wCdRHXtioy/uKhvZHi4MQmOnEeVt/e
	+eLqYgnANmWjLo/9GHKtLv398g32q1k41Cu09GdJYZ3xfJj0m+kNEaT18aVCt5s599gonJ6SxQ+jY
	yzBsG8U9KW4FIbafP6GGpsKkZtzV4shPN4eCQoEkX0wBGYWXt4WsxoLsXIsYfHBlxcgtzXHfUHzZt
	K90iVY4ZlAjMgyVut3r7MANtm5XyX2A14qYj07R8rvTVCM9j5H/86Zw+UjppWM+Kb7fGkECyvjn65
	u7T6oXqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSY-009XoF-0S;
	Mon, 20 Mar 2023 15:30:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSL-009Xfp-04
	for barebox@lists.infradead.org;
	Mon, 20 Mar 2023 15:29:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSE-0000rR-Pc; Mon, 20 Mar 2023 16:29:46 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSE-005UZP-3F; Mon, 20 Mar 2023 16:29:46 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSB-00Dc0s-AA; Mon, 20 Mar 2023 16:29:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Mar 2023 16:29:29 +0100
Message-Id: <20230320152941.3155428-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230320152941.3155428-1-s.hauer@pengutronix.de>
References: <20230320152941.3155428-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_082953_062967_9EAB9B6C 
X-CRM114-Status: GOOD (  12.69  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/18] phy: Add mode setting support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/phy/phy-core.c  | 15 +++++++++++++++
 include/linux/phy/phy.h | 41 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 56 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index a5dd32e666..1a23f35b95 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -203,6 +203,21 @@ int phy_power_off(struct phy *phy)
 	return 0;
 }
 
+int phy_set_mode_ext(struct phy *phy, enum phy_mode mode, int submode)
+{
+	int ret;
+
+	if (!phy || !phy->ops->set_mode)
+		return 0;
+
+	ret = phy->ops->set_mode(phy, mode, submode);
+	if (!ret)
+		phy->attrs.mode = mode;
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(phy_set_mode_ext);
+
 struct usb_phy *phy_to_usbphy(struct phy *phy)
 {
 	if (!phy)
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 5dcc5b108a..9f01bc3e9f 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -20,12 +20,36 @@
 
 struct phy;
 
+enum phy_mode {
+	PHY_MODE_INVALID,
+	PHY_MODE_USB_HOST,
+	PHY_MODE_USB_HOST_LS,
+	PHY_MODE_USB_HOST_FS,
+	PHY_MODE_USB_HOST_HS,
+	PHY_MODE_USB_HOST_SS,
+	PHY_MODE_USB_DEVICE,
+	PHY_MODE_USB_DEVICE_LS,
+	PHY_MODE_USB_DEVICE_FS,
+	PHY_MODE_USB_DEVICE_HS,
+	PHY_MODE_USB_DEVICE_SS,
+	PHY_MODE_USB_OTG,
+	PHY_MODE_UFS_HS_A,
+	PHY_MODE_UFS_HS_B,
+	PHY_MODE_PCIE,
+	PHY_MODE_ETHERNET,
+	PHY_MODE_MIPI_DPHY,
+	PHY_MODE_SATA,
+	PHY_MODE_LVDS,
+	PHY_MODE_DP
+};
+
 /**
  * struct phy_ops - set of function pointers for performing phy operations
  * @init: operation to be performed for initializing phy
  * @exit: operation to be performed while exiting
  * @power_on: powering on the phy
  * @power_off: powering off the phy
+ * @set_mode: set the mode of the phy
  * @owner: the module owner containing the ops
  */
 struct phy_ops {
@@ -33,15 +57,18 @@ struct phy_ops {
 	int	(*exit)(struct phy *phy);
 	int	(*power_on)(struct phy *phy);
 	int	(*power_off)(struct phy *phy);
+	int	(*set_mode)(struct phy *phy, enum phy_mode mode, int submode);
 	struct usb_phy *(*to_usbphy)(struct phy *phy);
 };
 
 /**
  * struct phy_attrs - represents phy attributes
  * @bus_width: Data path width implemented by PHY
+ * @mode: PHY mode
  */
 struct phy_attrs {
 	u32			bus_width;
+	enum phy_mode		mode;
 };
 
 /**
@@ -125,6 +152,9 @@ int phy_init(struct phy *phy);
 int phy_exit(struct phy *phy);
 int phy_power_on(struct phy *phy);
 int phy_power_off(struct phy *phy);
+int phy_set_mode_ext(struct phy *phy, enum phy_mode mode, int submode);
+#define phy_set_mode(phy, mode) \
+        phy_set_mode_ext(phy, mode, 0)
 static inline int phy_get_bus_width(struct phy *phy)
 {
 	return phy->attrs.bus_width;
@@ -177,6 +207,17 @@ static inline int phy_power_off(struct phy *phy)
 	return -ENOSYS;
 }
 
+static inline int phy_set_mode_ext(struct phy *phy, enum phy_mode mode,
+				   int submode)
+{
+	if (!phy)
+		return 0;
+	return -ENOSYS;
+}
+
+#define phy_set_mode(phy, mode) \
+        phy_set_mode_ext(phy, mode, 0)
+
 static inline int phy_get_bus_width(struct phy *phy)
 {
 	return -ENOSYS;
-- 
2.30.2



