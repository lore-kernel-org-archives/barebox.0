Delivery-date: Tue, 30 Aug 2022 15:40:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oT1TZ-001jid-2W
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 15:40:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oT1TX-0003kH-Pw
	for lore@pengutronix.de; Tue, 30 Aug 2022 15:40:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YrqxAI543dkQech2W6zW2E+KvEV5s2OGs2x5dJtZAy0=; b=SO5LhrIR4psufr5hzZ0QaCG1IJ
	zmAo2rwS7dONoDs8qr/dSsOsxKzj5gJXj7nuuAS5BZ1TGM4RgrVSskOr0SrJsvGNx5FE/ou3QoTHp
	EzLtPowuBKHKjKc61K6EQbgmvNfhkmbIRQd7gqZG2bxHs9e4hvlaid08wk197Z1uPSA2ftnXth0u0
	6YdmRBU2f6kgAsnVKYaEOoOa70DCl0gBOr1nqSgXTwI6yihOR3MtXO5JQ2emYjfZ1xh9a5WbOR9fG
	yvWZR9C/rUSavn/AwxqXX2zeU57MBumXP1GWPUhFRVYhh1Nq0IItuahQPWWRwR1GzUZmzaNyCPEzp
	069+VhAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT1Rs-00HPFR-SB; Tue, 30 Aug 2022 13:38:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT1Rm-00HPDA-Hn
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 13:38:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oT1Rl-0003Me-4N; Tue, 30 Aug 2022 15:38:29 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oT1Rk-002si0-EA; Tue, 30 Aug 2022 15:38:28 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oT1Rj-005r0m-AP; Tue, 30 Aug 2022 15:38:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 30 Aug 2022 15:38:26 +0200
Message-Id: <20220830133826.1395373-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_063830_620789_31E29D36 
X-CRM114-Status: GOOD (  10.54  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mdio_bus: Configure pinctrl for phy devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some phys registered from devicetree have pinctrl settings attached to
them. Configure the pinctrl state to make sure they can be accessed
before trying to reset and detect the phy devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 99d23ffedf..e37ab79f3e 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -22,6 +22,7 @@
 #include <linux/phy.h>
 #include <linux/err.h>
 #include <of_device.h>
+#include <pinctrl.h>
 
 #define DEFAULT_GPIO_RESET_ASSERT       1000      /* us */
 #define DEFAULT_GPIO_RESET_DEASSERT     1000      /* us */
@@ -202,6 +203,7 @@ static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
 			continue;
 		}
 
+		of_pinctrl_select_state_default(child);
 		of_mdiobus_reset_phy(mdio, child);
 		of_mdiobus_register_phy(mdio, child, addr);
 	}
-- 
2.30.2



