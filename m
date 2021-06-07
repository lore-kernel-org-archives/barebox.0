Delivery-date: Mon, 07 Jun 2021 16:13:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqFzz-0000h2-U8
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 16:13:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqFzx-0004h0-6J
	for lore@pengutronix.de; Mon, 07 Jun 2021 16:13:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QkvQoKscUlkuQQhmxKeInrqpFnh1yKQIcYk2pYi22Mk=; b=aikr9H9GBNwC0o
	Dzs/Y+GcebIjFr55Dj3AWgVkIMbPD8AXwNtwrz9+2/+Kn+WvOkJ4xM1PQ/ZnFQnxxn+1wqlaJNAGB
	v1+Lan430Hvy5zMV7NAWfz5LjKMquVFgdiBQQsNGS1GzmWcdX30JWtQPOKDXXBPTRW2AYyxlVogpB
	i+zpgMXS4Der5Gc6KOHmOqUrt9PtBbVQgByKE0QjvyhYXlctCNupH739CGQIl61lPCBgHz19ZTvSL
	whbH9DU7hDELq+4cHo9bwjFwmXxV8QChla+SRMjlyZ+zoqb1dY8KUSW0ZnUbwxSoc60/maJG+Kl65
	lj0zkA776RwKxNEmv1mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqFy9-0040hD-T6; Mon, 07 Jun 2021 14:11:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqFy0-0040g6-LF
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 14:11:06 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqFxy-0004Cq-FK; Mon, 07 Jun 2021 16:10:58 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqFxy-00064o-50; Mon, 07 Jun 2021 16:10:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Jun 2021 16:10:56 +0200
Message-Id: <20210607141057.23255-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_071100_718595_39E33545 
X-CRM114-Status: GOOD (  13.23  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] net: designware: eqos: reset phy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The designware eqos DT binding has support for specifying reset GPIOs.
Add support for them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/designware_eqos.c | 33 +++++++++++++++++++++++++++++++++
 drivers/of/of_gpio.c          |  7 +++++++
 2 files changed, 40 insertions(+)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index d2baaeaf63..0321024169 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -8,9 +8,11 @@
 
 #include <common.h>
 #include <init.h>
+#include <gpio.h>
 #include <dma.h>
 #include <net.h>
 #include <of_net.h>
+#include <of_gpio.h>
 #include <linux/iopoll.h>
 #include <linux/time.h>
 #include <linux/sizes.h>
@@ -189,6 +191,33 @@ struct eqos_desc {
 
 #define MII_BUSY		(1 << 0)
 
+static int eqos_phy_reset(struct device_d *dev, struct eqos *eqos)
+{
+	int phy_reset;
+	int ret;
+	u32 delays[3] = { 0, 0, 0 };
+
+	phy_reset = of_get_named_gpio(dev->device_node, "snps,reset-gpio", 0);
+
+        if (!gpio_is_valid(phy_reset))
+		return 0;
+
+	ret = gpio_request(phy_reset, "phy-reset");
+	if (ret)
+		return ret;
+
+	of_property_read_u32_array(dev->device_node,
+				   "snps,reset-delays-us",
+				   delays, ARRAY_SIZE(delays));
+
+	gpio_direction_active(phy_reset, 0);
+	udelay(delays[1]);
+	gpio_set_active(phy_reset, 1);
+	udelay(delays[2]);
+
+	return 0;
+}
+
 static int eqos_mdio_wait_idle(struct eqos *eqos)
 {
 	u32 idle;
@@ -843,6 +872,10 @@ int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
 	if (ret)
 		return ret;
 
+	ret = eqos_phy_reset(dev, eqos);
+	if (ret)
+		return ret;
+
 	ret = mdiobus_register(miibus);
 	if (ret)
 		return ret;
diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
index 7cbeeaf69e..e1cafdc848 100644
--- a/drivers/of/of_gpio.c
+++ b/drivers/of/of_gpio.c
@@ -35,6 +35,13 @@ static void of_gpio_flags_quirks(struct device_node *np,
 		if (active_low)
 			*flags |= OF_GPIO_ACTIVE_LOW;
 	}
+
+	/* Legacy handling of stmmac's active-low PHY reset line */
+	if (IS_ENABLED(CONFIG_DRIVER_NET_DESIGNWARE_EQOS) &&
+	    !strcmp(propname, "snps,reset-gpio") &&
+	    of_property_read_bool(np, "snps,reset-active-low"))
+		*flags |= OF_GPIO_ACTIVE_LOW;
+
 }
 
 /**
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

