Delivery-date: Mon, 26 Sep 2022 10:19:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocjL1-00F9jU-Le
	for lore@lore.pengutronix.de; Mon, 26 Sep 2022 10:19:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocjL0-0001ew-4t
	for lore@pengutronix.de; Mon, 26 Sep 2022 10:19:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nrY0ZoxFOLkmWA7beLkH2+bmx47lnJloYpqgMJ+brtE=; b=o1DFz3XbnaTrukv8J4wbdg164d
	70faikb5/c1GWFt+pqzro37a76bAftzLcRMNMyhjo1LjsrPIvxsqDC7GoZDJMaBqmUSqvjzErLdhM
	9qSQEcZoz90/dE0uQga7YnfclLFaUAV1arAq5JUj0gbqZeH/6nbfVlYKFTsY6O0iTaU8pUwmr+UqO
	lr1+h8qaTLhOFaOwoZkT7KgpYPW32LLa25l93PH14leuUlK9W/o6x2hv4ZMCMpnTaiWPZOjODrg4s
	3SjD+aGuZIMBmuIKVA2EgloE1KkPslRfEOixG6wLvXMhX/qkVrRKvHHsh8hyP0EkSKyrwYwr8YzS6
	epLr+bjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocjJW-0034NN-MG; Mon, 26 Sep 2022 08:18:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocjJE-00347Y-42
	for barebox@lists.infradead.org; Mon, 26 Sep 2022 08:17:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJA-0001Dd-VZ; Mon, 26 Sep 2022 10:17:45 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJB-002zk4-Mm; Mon, 26 Sep 2022 10:17:44 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJ9-000K2P-4r; Mon, 26 Sep 2022 10:17:43 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 26 Sep 2022 10:17:35 +0200
Message-Id: <20220926081740.76968-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220926081740.76968-1-o.rempel@pengutronix.de>
References: <20220926081740.76968-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_011748_196798_3B74EC0D 
X-CRM114-Status: GOOD (  14.60  )
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
Subject: [PATCH v1 3/8] net: ksz8873: add device validation to be able to detect missing switch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some board variants do not have ksz8873 chip but still need to use
same devicetree as the board with this chip. So we need to make sure if
switch chip is actually present, before completing the probe sequence.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/ksz8873.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/net/ksz8873.c b/drivers/net/ksz8873.c
index bd8071b872..38f61ed43e 100644
--- a/drivers/net/ksz8873.c
+++ b/drivers/net/ksz8873.c
@@ -10,6 +10,11 @@
 #include <of_device.h>
 #include <regmap.h>
 
+#define KSZ8873_CHIP_ID0		0x00
+#define KSZ8873_CHIP_ID1		0x01
+#define KSZ88_CHIP_ID_M			GENMASK(7, 4)
+#define KSZ88_REV_ID_M			GENMASK(3, 1)
+
 #define KSZ8873_GLOBAL_CTRL_1		0x03
 #define KSZ8873_PASS_ALL_FRAMES		BIT(7)
 #define KSZ8873_P3_TAIL_TAG_EN		BIT(6)
@@ -52,6 +57,8 @@
 struct ksz8873_dcfg {
 	unsigned int num_ports;
 	unsigned int phy_port_cnt;
+	u8 id0;
+	u8 id1;
 };
 
 struct ksz8873_switch {
@@ -363,6 +370,7 @@ static int ksz8873_probe_mdio(struct phy_device *mdiodev)
 	struct ksz8873_switch *priv;
 	struct dsa_switch *ds;
 	int ret, gpio;
+	u8 id0, id1;
 
 	priv = xzalloc(sizeof(*priv));
 
@@ -387,6 +395,18 @@ static int ksz8873_probe_mdio(struct phy_device *mdiodev)
 		gpio_set_active(gpio, false);
 	}
 
+	ret = ksz_read8(priv, KSZ8873_CHIP_ID0, &id0);
+	if (ret)
+		return ret;
+
+	ret = ksz_read8(priv, KSZ8873_CHIP_ID1, &id1);
+	if (ret)
+		return ret;
+
+	if (id0 != dcfg->id0 ||
+	    (id1 & (KSZ88_CHIP_ID_M | KSZ88_REV_ID_M)) != dcfg->id1)
+		return -ENODEV;
+
 	ds = &priv->ds;
 	ds->dev = dev;
 	ds->num_ports = dcfg->num_ports;
@@ -407,6 +427,8 @@ static int ksz8873_probe_mdio(struct phy_device *mdiodev)
 static const struct ksz8873_dcfg ksz8873_dcfg = {
 	.num_ports = 3,
 	.phy_port_cnt = 2,
+	.id0 = 0x88,
+	.id1 = 0x30,
 };
 
 static const struct of_device_id ksz8873_dt_ids[] = {
-- 
2.30.2



