Delivery-date: Fri, 19 Mar 2021 14:12:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNEv5-0007Qv-Jj
	for lore@lore.pengutronix.de; Fri, 19 Mar 2021 14:12:03 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNEv2-0006vK-DI
	for lore@pengutronix.de; Fri, 19 Mar 2021 14:12:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XOZxZYbJrNcB0CHUDRwEjEsHW4KkSeUtmdo8C8KAqa4=; b=DmSVFx5JKAhX8481rDs7iJe5W
	AoE79KCF+VNK7NejjZ/wP7RCYRUJOqqno7nCYKF18ZvO1HxK9oY2jjnYOjfbC35HqFLZDZK8POMY9
	wADNWKVVvSc3f0Kp5u2TLX+OyPy3d7+dUbceiRTtqDzzRfsNI/oRGogl4pmP5gJBxMAvxVEgWrXnD
	SSv0jK3CeMv80PHTlgdgZwRnSrKKbLaz7BJfLHBv4iJxWsOjfH5ArBmi9+Yqw7+Hrx8BpkMVU4ke5
	ah3zl431rfPQqOSyRtNudQB6aPiX8IFjNEmTJUUI/KywMg4f8hnZMH6Y786lo0tCkAlacbzCTNCNu
	/iGfqRQFg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNEtv-007SJk-Ne; Fri, 19 Mar 2021 13:10:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNEtP-007SAn-Ei
 for barebox@lists.infradead.org; Fri, 19 Mar 2021 13:10:25 +0000
Received: from [2a0a:edc0:0:c01:1d::a2]
 (helo=drehscheibe.grey.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtO-0006Kn-0k; Fri, 19 Mar 2021 14:10:18 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtN-0000z6-EE; Fri, 19 Mar 2021 14:10:17 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtM-00AxYH-DZ; Fri, 19 Mar 2021 14:10:16 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.tretter@pengutronix.de
Date: Fri, 19 Mar 2021 14:10:16 +0100
Message-Id: <20210319131016.2612134-8-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210319131016.2612134-1-m.tretter@pengutronix.de>
References: <20210319131016.2612134-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_131019_566869_19594988 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 7/7] net: phy: dp83867: enable link downshift by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>

Linux enables link downshift by default. Use the same bit definitions as
Linux and enable downshift in Barebox, as well.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/net/phy/dp83867.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
index c19f6ecba267..05af83f076a8 100644
--- a/drivers/net/phy/dp83867.c
+++ b/drivers/net/phy/dp83867.c
@@ -75,12 +75,12 @@
 #define DP83867_RGMII_TX_CLK_DELAY_SHIFT	4
 
 /* CFG2 bits */
-#define MII_DP83867_CFG2_SPEEDOPT_10EN		0x0040
-#define MII_DP83867_CFG2_SGMII_AUTONEGEN	0x0080
-#define MII_DP83867_CFG2_SPEEDOPT_ENH		0x0100
-#define MII_DP83867_CFG2_SPEEDOPT_CNT		0x0800
-#define MII_DP83867_CFG2_SPEEDOPT_INTLOW	0x2000
-#define MII_DP83867_CFG2_MASK			0x003F
+#define DP83867_DOWNSHIFT_EN			(BIT(8) | BIT(9))
+#define DP83867_DOWNSHIFT_ATTEMPT_MASK		(BIT(10) | BIT(11))
+#define DP83867_DOWNSHIFT_1_COUNT_VAL		0
+#define DP83867_DOWNSHIFT_2_COUNT_VAL		1
+#define DP83867_DOWNSHIFT_4_COUNT_VAL		2
+#define DP83867_DOWNSHIFT_8_COUNT_VAL		3
 
 /* CFG4 bits */
 #define DP83867_CFG4_SGMII_AUTONEG_TIMER_MASK	0x60
@@ -301,6 +301,10 @@ static int dp83867_config_init(struct phy_device *phydev)
 		phy_write(phydev, MII_DP83867_BISCR, 0x0);
 	}
 
+	val = phy_read(phydev, MII_DP83867_CFG2);
+	val |= DP83867_DOWNSHIFT_EN;
+	phy_write(phydev, MII_DP83867_CFG2, val);
+
 	if (dp83867->port_mirroring != DP83867_PORT_MIRROING_KEEP)
 		dp83867_config_port_mirroring(phydev);
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

