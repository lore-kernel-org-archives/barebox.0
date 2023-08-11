Delivery-date: Fri, 11 Aug 2023 13:54:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUQiw-00GXWF-Hx
	for lore@lore.pengutronix.de; Fri, 11 Aug 2023 13:54:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUQiu-00017W-I6
	for lore@pengutronix.de; Fri, 11 Aug 2023 13:54:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pEjkrFerfrLPAo3/+7D4seZcSZPfFKaV5a7yMjDPXHE=; b=ePsCQPt2Ny6PzAwPUpGQYGTEwm
	vUF3c4Y80lKW1yexeLrJimqJhxKxSkUACcNQ/UyOHQ55W+T+hY0tqsVP11+62NKUZ5yHsA8ldmbLt
	7LYQ9vGw2b4kWLTelSv/CnSYv5KThmAxrXBWeQreNjUQEAGBkMLp6oa0O8BoRNa3vc6xnWAf+RgWe
	Elt2a6DQJOBJGRdOZ4PbpiYW/IW6ty/OPR9zXoxuaLJH+3xQjLL6qajKCaxuL3iU3kmKUYX/sXZ6p
	9zXoGETgq/i8ijXOIDMXiLA/nFX2y1q+/Cw3BKhUnIMKbQJggHpxH67RRX/afVmgawh/AbM9FdvrM
	GbHB19HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUQhx-00AVYl-0e;
	Fri, 11 Aug 2023 11:53:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUQht-00AVXu-1Y
	for barebox@lists.infradead.org;
	Fri, 11 Aug 2023 11:53:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qUQhs-0000qZ-3d; Fri, 11 Aug 2023 13:53:28 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qUQhr-002hcu-FF; Fri, 11 Aug 2023 13:53:27 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qUQhq-00B6QK-2p;
	Fri, 11 Aug 2023 13:53:26 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 11 Aug 2023 13:53:25 +0200
Message-Id: <20230811115325.2646286-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230811115325.2646286-1-o.rempel@pengutronix.de>
References: <20230811115325.2646286-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_045329_546425_8E23F90E 
X-CRM114-Status: GOOD (  12.09  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/2] net: ksz9477: do not advertise EEE support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Do not advertise EEE support for all ksz9477 based chips. EEE needs
proper handling which we can't guarantee with limited resources.

At same time remove wrong comment and Gbit check. EEE is not coupled to
Gbit and KSZ8565 supports EEE as well. So, it seems like there is
nothing right on this comment.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/ksz9477.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
index a6a8144479..9665e0f723 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -175,12 +175,6 @@ static void ksz9477_phy_errata_setup(struct ksz_switch *priv, int port)
 	 */
 	ksz9477_port_mmd_write(priv, port, 0x1c, 0x04, 0x00d0);
 
-	/* Energy Efficient Ethernet (EEE) feature select must
-	 * be manually disabled (except on KSZ8565 which is 100Mbit)
-	 */
-	if (priv->features & GBIT_SUPPORT)
-		ksz9477_port_mmd_write(priv, port, 0x07, 0x3c, 0x0000);
-
 	/* Register settings are required to meet data sheet
 	 * supply current specifications
 	 */
@@ -269,6 +263,8 @@ static int ksz_port_setup(struct ksz_switch *priv, int port,
 		if (priv->features & KSZ9477_PHY_ERRATA)
 			ksz9477_phy_errata_setup(priv, port);
 
+		ksz9477_port_mmd_write(priv, port, 0x07, 0x3c, 0x0000);
+
 		ksz_pwrite16(priv, port, 0x100 + (MII_BMCR << 1),
 			     BMCR_ANENABLE | BMCR_ANRESTART | BMCR_RESET);
 	} else {
-- 
2.39.2



