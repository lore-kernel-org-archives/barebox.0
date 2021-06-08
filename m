Delivery-date: Tue, 08 Jun 2021 11:38:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqYBs-0003kU-Jz
	for lore@lore.pengutronix.de; Tue, 08 Jun 2021 11:38:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqYBo-0000ex-0P
	for lore@pengutronix.de; Tue, 08 Jun 2021 11:38:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BX9nStK90Ni3BdrCGWLWTWOnShVuQ69vWccZtdF0qY8=; b=AUzCW2KTQ59Q8n
	R9MyDrpa8tIKBWNK9DR9JS0OacFlrFaQI6QyapWK8q1kmQ5FdRGhfMsijpK/ohEqskqGccVdSa6iC
	0lB2LIGkUdtNSGaEmN0F8UTXL/+TxMdUa8hLPhpxiaDEMGLgKYXTTJEiyViqhWUn6/OeBKZkn8BjV
	CrJCgJqOA044LRlLKEjzFU4EUMMkbZK5V0BtzqY7h6XYLrd7evx5l/5Wqfr5tERZM59nKLr12dYBy
	jejRGKNgcRDm4xEOs0ZayJAhWDfJOzhu+T+IhJDxATmpDfHOFZd1I+3+OkAQU2tB8UmOTxI8+rTLB
	ZA162do5PR2FVpkyQWFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqYAB-007SCh-02; Tue, 08 Jun 2021 09:36:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqYA2-007SAX-Tl
 for barebox@lists.infradead.org; Tue, 08 Jun 2021 09:36:40 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqYA1-0000Qb-8r; Tue, 08 Jun 2021 11:36:37 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqYA0-0004n9-UV; Tue, 08 Jun 2021 11:36:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Jun 2021 11:36:33 +0200
Message-Id: <20210608093635.5749-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210608093635.5749-1-s.hauer@pengutronix.de>
References: <20210608093635.5749-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210608_023639_011791_9C47CE81 
X-CRM114-Status: GOOD (  14.15  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] net: designware: eqos: reset phy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The designware eqos DT binding has support for specifying reset GPIOs.
Add support for them. This binding is deprecated for new boards, but
there are still some upstream dts files using it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/designware_eqos.c | 28 ++++++++++++++++++++++++++++
 drivers/of/of_gpio.c          |  7 +++++++
 2 files changed, 35 insertions(+)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index d2baaeaf63..e6248d408e 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -8,9 +8,12 @@
 
 #include <common.h>
 #include <init.h>
+#include <gpio.h>
+#include <gpiod.h>
 #include <dma.h>
 #include <net.h>
 #include <of_net.h>
+#include <of_gpio.h>
 #include <linux/iopoll.h>
 #include <linux/time.h>
 #include <linux/sizes.h>
@@ -189,6 +192,27 @@ struct eqos_desc {
 
 #define MII_BUSY		(1 << 0)
 
+static int eqos_phy_reset(struct device_d *dev, struct eqos *eqos)
+{
+	int phy_reset;
+	u32 delays[3] = { 0, 0, 0 };
+
+	phy_reset = gpiod_get(dev, "snps,reset", GPIOF_OUT_INIT_ACTIVE);
+
+	if (!gpio_is_valid(phy_reset))
+		return 0;
+
+	of_property_read_u32_array(dev->device_node,
+				   "snps,reset-delays-us",
+				   delays, ARRAY_SIZE(delays));
+
+	udelay(delays[1]);
+	gpio_set_active(phy_reset, false);
+	udelay(delays[2]);
+
+	return 0;
+}
+
 static int eqos_mdio_wait_idle(struct eqos *eqos)
 {
 	u32 idle;
@@ -843,6 +867,10 @@ int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
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

