Delivery-date: Wed, 02 Nov 2022 11:09:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqAgh-00CAkB-LV
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 11:09:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqAgg-0003ID-0y
	for lore@pengutronix.de; Wed, 02 Nov 2022 11:09:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7N41YYRQUmsRgbNNkVnJ6UnuBLXXSJKTOgmNrIvxVJU=; b=Pej4ANyzYOXsBf6s0vo507NcYS
	3tvJM2cACRwXT3QiyPMzzOBrZxrqgXAdiK86lunU231m+UXFjNUcTc7roVewcPpnXqxa2RlqTIaJg
	vNZK9sBerTLvwX4HfAfd3I2TMqkh39Nz53nI24Ocgdi+JmnYysYYVTYQTe2oIyLr35nqPnM2i6LAV
	6i0V/rzOjNWieFQ1G7aLy+vz6efGF8oEHuzmw/plul/++l9nYUmDVKthPqXuLABk3ZcXJY7bJESxX
	QOp8vrR1RbCcxOzMsBGmJnxu0ktE+AE7GBlxcbUsCsTOq82eSEOM1/Mxgyt8AoS9kw8SuB68a3kUO
	nQ+p/0OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqAfD-00ARNX-NF; Wed, 02 Nov 2022 10:08:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqAf5-00ARJE-3A
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 10:07:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1oqAez-00030F-L0; Wed, 02 Nov 2022 11:07:49 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1oqAez-001qpI-Te; Wed, 02 Nov 2022 11:07:48 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1oqAey-008BEK-2a; Wed, 02 Nov 2022 11:07:48 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  2 Nov 2022 11:07:41 +0100
Message-Id: <20221102100744.1949741-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_030755_181153_9D0DB03A 
X-CRM114-Status: GOOD (  11.55  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 1/4] drivers: net: fec_imx: fix receive issue with external switch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Enable poromisc mode by default to allow using multiple MAC address on
same FEC interfaces.

We already use poromisc mode on designware stmmac, so it will make
behavior more consistent on different systems.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/fec_imx.c | 3 +++
 drivers/net/fec_imx.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 673555a48a..9aa4b4f595 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -262,6 +262,9 @@ static int fec_init(struct eth_device *dev)
 	 */
 	rcntl = FEC_R_CNTRL_MAX_FL(1518);
 
+	/* Set promisc mode to make switches with different ethaddr work */
+	rcntl |= FEC_R_CNTRL_PROMISC;
+
 	rcntl |= FEC_R_CNTRL_MII_MODE;
 	/*
 	 * Set MII_SPEED = (1/(mii_speed * 2)) * System Clock
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index 316eefe48f..9bb1c64b55 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -58,6 +58,7 @@
 #define FEC_R_CNTRL_RMII_10T		(1 << 9) /* i.MX28 specific */
 #define FEC_R_CNTRL_RMII_MODE		(1 << 8) /* i.MX28 specific */
 #define FEC_R_CNTRL_FCE			(1 << 5)
+#define FEC_R_CNTRL_PROMISC		(1 << 3)
 #define FEC_R_CNTRL_MII_MODE		(1 << 2)
 
 #define FEC_IEVENT_HBERR                0x80000000 /* Note: Not on i.MX28 */
-- 
2.30.2



