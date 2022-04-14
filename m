Delivery-date: Thu, 14 Apr 2022 12:06:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1newN7-001Y8z-QA
	for lore@lore.pengutronix.de; Thu, 14 Apr 2022 12:06:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1newN4-0005dS-Vd
	for lore@pengutronix.de; Thu, 14 Apr 2022 12:06:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BIynwB5E7zCeziBOj8PTWURt6k4CUCN7KeghMD8Z2w0=; b=oxdj9wGgkiABNm
	nVtfhxw9nE/CPOfNAwjuRox7TCAHmqYyzFUPvO4RaeNSbJ+xMs4yi+OQ1YDqbayuSc5bFTb8wfZIa
	DXD43dqGjlbfVg454q7PBSYpQp8aVIhkGsi3izcNNRioeV9HGJnFbFuzoGAIjP4TR1Y/OE6nR/O/I
	12coyhNPUDMc7BsbafmZPReCtDD8RSm+d7AHri822rAD/F9EbQtT67XIvEWBHA/T8NpVu4DulwIUm
	a4v4ORUOv0J7s9mz/PdGmptzM8QBLWYkFCu5ubRYuBjRKeOEywdyVdgB4/U9iE9NbtVD9kuCvfeWu
	KJiBlxEN+k9bAdUaBtHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1newLW-0052RL-AN; Thu, 14 Apr 2022 10:05:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1newLL-0052Mx-TV
 for barebox@lists.infradead.org; Thu, 14 Apr 2022 10:04:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1newLG-0005F6-CE; Thu, 14 Apr 2022 12:04:46 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1newLH-002x97-3q; Thu, 14 Apr 2022 12:04:45 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1newLE-006HSR-SK; Thu, 14 Apr 2022 12:04:44 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 14 Apr 2022 12:04:42 +0200
Message-Id: <20220414100442.1497017-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220414_030452_008833_29C4696C 
X-CRM114-Status: GOOD (  14.97  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1] net: phy: add TI DP83TD510E T1L PHY support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add basic driver for TI DP83TD510E T1L PHY

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/Kconfig     |  6 +++++
 drivers/net/phy/Makefile    |  1 +
 drivers/net/phy/dp83td510.c | 45 +++++++++++++++++++++++++++++++++++++
 3 files changed, 52 insertions(+)
 create mode 100644 drivers/net/phy/dp83td510.c

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 9f74335443..cd20e1de27 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -29,6 +29,12 @@ config DP83867_PHY
 	help
 	  Currently supports the DP83867 PHY.
 
+config DP83TD510_PHY
+	tristate "Texas Instruments DP83TD510 Ethernet 10Base-T1L PHY"
+	help
+	  Support for the DP83TD510 Ethernet 10Base-T1L PHY. This PHY supports
+	  a 10M single pair Ethernet connection for up to 1000 meter cable.
+
 config LXT_PHY
 	bool "Driver for the Intel LXT PHYs"
 	help
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 54b83e06dd..83f46f11d3 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -17,4 +17,5 @@ obj-$(CONFIG_MDIO_GPIO)		+= mdio-gpio.o
 obj-$(CONFIG_MDIO_BUS_MUX)	+= mdio-mux.o
 obj-$(CONFIG_MDIO_BUS_MUX_GPIO)	+= mdio-mux-gpio.o
 obj-$(CONFIG_DP83867_PHY)	+= dp83867.o
+obj-$(CONFIG_DP83TD510_PHY)	+= dp83td510.o
 
diff --git a/drivers/net/phy/dp83td510.c b/drivers/net/phy/dp83td510.c
new file mode 100644
index 0000000000..44c551e795
--- /dev/null
+++ b/drivers/net/phy/dp83td510.c
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <linux/phy.h>
+
+#define DP83TD510E_PHY_ID		0x20000181
+
+#define DP83TD510E_PHY_STS		0x10
+#define DP83TD510E_LINK_STATUS		BIT(0)
+
+static int dp83td510_read_status(struct phy_device *phydev)
+{
+	u16 phy_sts;
+
+	phy_sts = phy_read(phydev, DP83TD510E_PHY_STS);
+
+	phydev->link = !!(phy_sts & DP83TD510E_LINK_STATUS);
+	if (phydev->link) {
+		phydev->duplex = DUPLEX_FULL;
+		phydev->speed = SPEED_10;
+	} else {
+		phydev->speed = SPEED_UNKNOWN;
+		phydev->duplex = DUPLEX_UNKNOWN;
+	}
+
+	return 0;
+}
+
+static int dp83td510_config_init(struct phy_device *phydev)
+{
+	phydev->supported = SUPPORTED_10baseT_Full | SUPPORTED_Autoneg;
+	phydev->advertising = SUPPORTED_10baseT_Full | SUPPORTED_Autoneg;
+
+	return 0;
+}
+
+static struct phy_driver dp83td510_driver[] = {
+	{
+		PHY_ID_MATCH_MODEL(DP83TD510E_PHY_ID),
+		.drv.name	= "TI DP83TD510E",
+		.read_status	= dp83td510_read_status,
+		.config_init	= dp83td510_config_init,
+	}
+};
+device_phy_drivers(dp83td510_driver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

