Delivery-date: Thu, 20 Mar 2025 06:17:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Hh-001l1o-1c
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:17:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Hg-0002cd-5d
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:17:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eTPFfeTsNAPWLwYRn30Av+QTUUZ28bH088wUdML9zz0=; b=CmfilH1Kho11PKm5jaHBI22vHN
	4UOfzlF8pahMoupsc7mrt41duqERlk9eiZ6MzRQYk8lk+0MkNC1xennGP/f5peDO5aCeaAXn60NbO
	Lw2eLFFfUm9cAY0WQKdrYuh2g6ByWX3NUET8MMgA2OECuWXT2rp+Niu72WxBEJACmAAFmSFl65M44
	4S9hyDbGLQaT63YORnaWFfBr4iKbXDdeZvXfx9LLNDmOEqaOgCQT4aOj0x7vMVTHVism+ks6Ctg6T
	WPFhHF13qiS4hsS4+994TWU8DDbsOMZVftuCFdaSb6K1N70hwqv2KuXvckJAcBw4O8yVzdgNU3TWJ
	xRtjkJyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8HD-0000000BBpP-0QnM;
	Thu, 20 Mar 2025 05:17:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8H8-0000000BBlf-0aXG
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:17:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Gq-0001yY-Sj; Thu, 20 Mar 2025 06:16:44 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Go-000huZ-26;
	Thu, 20 Mar 2025 06:16:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Go-007EvV-39;
	Thu, 20 Mar 2025 06:16:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 06:16:39 +0100
Message-Id: <20250320051641.1721377-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250320051641.1721377-1-a.fatoum@pengutronix.de>
References: <20250320051641.1721377-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_221702_179918_E821A8D8 
X-CRM114-Status: GOOD (  15.07  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 6/8] net: phy: fix of_get_phy_mode for XLGMII and beyond
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The phy_modes array needs to be kept in-sync with the
enum phy_interface_t, but this was violated by the most recent sync of
the enum type with Linux.

Th addition of new enumeration constants between existing ones resulted
in phy_modes having NULL-valued gaps, which would panic when passed
to strcmp.

Fix this by replacing the current sparse array, with a function that
always returns a string value. This is what Linux currently does.

Fixes: 63eb097f6639 ("net/phy: sync phy_interface_t types with Linux")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 drivers/of/of_net.c | 36 ++------------------
 include/linux/phy.h | 82 +++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 84 insertions(+), 34 deletions(-)

diff --git a/drivers/of/of_net.c b/drivers/of/of_net.c
index 58b4f99da111..d66de875316d 100644
--- a/drivers/of/of_net.c
+++ b/drivers/of/of_net.c
@@ -10,38 +10,6 @@
 #include <linux/phy.h>
 #include <linux/nvmem-consumer.h>
 
-/**
- * It maps 'enum phy_interface_t' found in include/linux/phy.h
- * into the device tree binding of 'phy-mode', so that Ethernet
- * device driver can get phy interface from device tree.
- */
-static const char *phy_modes[] = {
-	[PHY_INTERFACE_MODE_NA]		= "",
-	[PHY_INTERFACE_MODE_INTERNAL]	= "internal",
-	[PHY_INTERFACE_MODE_MII]	= "mii",
-	[PHY_INTERFACE_MODE_GMII]	= "gmii",
-	[PHY_INTERFACE_MODE_SGMII]	= "sgmii",
-	[PHY_INTERFACE_MODE_TBI]	= "tbi",
-	[PHY_INTERFACE_MODE_REVMII]	= "rev-mii",
-	[PHY_INTERFACE_MODE_RMII]	= "rmii",
-	[PHY_INTERFACE_MODE_REVRMII]	= "rev-rmii",
-	[PHY_INTERFACE_MODE_RGMII]	= "rgmii",
-	[PHY_INTERFACE_MODE_RGMII_ID]	= "rgmii-id",
-	[PHY_INTERFACE_MODE_RGMII_RXID]	= "rgmii-rxid",
-	[PHY_INTERFACE_MODE_RGMII_TXID]	= "rgmii-txid",
-	[PHY_INTERFACE_MODE_RTBI]	= "rtbi",
-	[PHY_INTERFACE_MODE_SMII]	= "smii",
-	[PHY_INTERFACE_MODE_XGMII]	= "xgmii",
-	[PHY_INTERFACE_MODE_MOCA]	= "moca",
-	[PHY_INTERFACE_MODE_QSGMII]	= "qsgmii",
-	[PHY_INTERFACE_MODE_TRGMII]	= "trgmii",
-	[PHY_INTERFACE_MODE_1000BASEX]	= "1000base-x",
-	[PHY_INTERFACE_MODE_2500BASEX]	= "2500base-x",
-	[PHY_INTERFACE_MODE_RXAUI]	= "rxaui",
-	[PHY_INTERFACE_MODE_XAUI]	= "xaui",
-	[PHY_INTERFACE_MODE_10GKR]	= "10gbase-kr",
-};
-
 /**
  * of_get_phy_mode - Get phy mode for given device_node
  * @np:	Pointer to the given device_node
@@ -60,8 +28,8 @@ int of_get_phy_mode(struct device_node *np)
 	if (err < 0)
 		return err;
 
-	for (i = 0; i < ARRAY_SIZE(phy_modes); i++)
-		if (!strcmp(pm, phy_modes[i]))
+	for (i = 0; i < PHY_INTERFACE_MODE_MAX; i++)
+		if (!strcasecmp(pm, phy_modes(i)))
 			return i;
 
 	return -ENODEV;
diff --git a/include/linux/phy.h b/include/linux/phy.h
index d8e53d446ef5..5cbd21f91a50 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -115,6 +115,88 @@ typedef enum {
 	PHY_INTERFACE_MODE_MAX,
 } phy_interface_t;
 
+/**
+ * phy_modes - map phy_interface_t enum to device tree binding of phy-mode
+ * @interface: enum phy_interface_t value
+ *
+ * Description: maps enum &phy_interface_t defined in this file
+ * into the device tree binding of 'phy-mode', so that Ethernet
+ * device driver can get PHY interface from device tree.
+ */
+static inline const char *phy_modes(phy_interface_t interface)
+{
+	switch (interface) {
+	case PHY_INTERFACE_MODE_NA:
+		return "";
+	case PHY_INTERFACE_MODE_INTERNAL:
+		return "internal";
+	case PHY_INTERFACE_MODE_MII:
+		return "mii";
+	case PHY_INTERFACE_MODE_GMII:
+		return "gmii";
+	case PHY_INTERFACE_MODE_SGMII:
+		return "sgmii";
+	case PHY_INTERFACE_MODE_TBI:
+		return "tbi";
+	case PHY_INTERFACE_MODE_REVMII:
+		return "rev-mii";
+	case PHY_INTERFACE_MODE_RMII:
+		return "rmii";
+	case PHY_INTERFACE_MODE_REVRMII:
+		return "rev-rmii";
+	case PHY_INTERFACE_MODE_RGMII:
+		return "rgmii";
+	case PHY_INTERFACE_MODE_RGMII_ID:
+		return "rgmii-id";
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+		return "rgmii-rxid";
+	case PHY_INTERFACE_MODE_RGMII_TXID:
+		return "rgmii-txid";
+	case PHY_INTERFACE_MODE_RTBI:
+		return "rtbi";
+	case PHY_INTERFACE_MODE_SMII:
+		return "smii";
+	case PHY_INTERFACE_MODE_XGMII:
+		return "xgmii";
+	case PHY_INTERFACE_MODE_XLGMII:
+		return "xlgmii";
+	case PHY_INTERFACE_MODE_MOCA:
+		return "moca";
+	case PHY_INTERFACE_MODE_PSGMII:
+		return "psgmii";
+	case PHY_INTERFACE_MODE_QSGMII:
+		return "qsgmii";
+	case PHY_INTERFACE_MODE_TRGMII:
+		return "trgmii";
+	case PHY_INTERFACE_MODE_1000BASEX:
+		return "1000base-x";
+	case PHY_INTERFACE_MODE_1000BASEKX:
+		return "1000base-kx";
+	case PHY_INTERFACE_MODE_2500BASEX:
+		return "2500base-x";
+	case PHY_INTERFACE_MODE_5GBASER:
+		return "5gbase-r";
+	case PHY_INTERFACE_MODE_RXAUI:
+		return "rxaui";
+	case PHY_INTERFACE_MODE_XAUI:
+		return "xaui";
+	case PHY_INTERFACE_MODE_10GBASER:
+		return "10gbase-r";
+	case PHY_INTERFACE_MODE_25GBASER:
+		return "25gbase-r";
+	case PHY_INTERFACE_MODE_USXGMII:
+		return "usxgmii";
+	case PHY_INTERFACE_MODE_10GKR:
+		return "10gbase-kr";
+	case PHY_INTERFACE_MODE_100BASEX:
+		return "100base-x";
+	case PHY_INTERFACE_MODE_QUSGMII:
+		return "qusgmii";
+	default:
+		return "unknown";
+	}
+}
+
 #define PHY_INIT_TIMEOUT	100000
 #define PHY_FORCE_TIMEOUT	10
 #define PHY_AN_TIMEOUT		10
-- 
2.39.5



