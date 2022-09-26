Delivery-date: Mon, 26 Sep 2022 10:19:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocjL1-00F9jc-ST
	for lore@lore.pengutronix.de; Mon, 26 Sep 2022 10:19:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocjL0-0001f0-A0
	for lore@pengutronix.de; Mon, 26 Sep 2022 10:19:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wmRwciTx+JgqSS9oadpu1VrHUHNwVCt9HOGFUK/q0x4=; b=WV+TPHVX03g4rbzKa3YPzNCoGh
	qFgkFdg9xLcErjmWTQBqBzfp+pehOWugcMKS/lrSDqOnsBpwvnYcukeilLTeHb/DWq7j8dI8aw8jV
	G8m7aleW1yNhoFScPOFkKlnI9N2b/0tBNiSn/f5La3Dm/q3KftJ20vhQV2E+Ol1gS3vlGgHipYaa/
	TjWr8Tc1jFAP2dwS/IlnG7G0/V2tUtK+nKwxeSsDpI3em6hbTu0b3b/T/2tofDXRxulPL3RkD+Fy2
	5CQZZu2YoNE7EsPzczH6bF2/rPGP9blzx6GeiS2kmp9mzccy1PJYncxZt6eWmyo9w8gvY80nVO//O
	G5Xkbdlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocjJi-0034UJ-R5; Mon, 26 Sep 2022 08:18:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocjJE-00347Q-6r
	for barebox@lists.infradead.org; Mon, 26 Sep 2022 08:17:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJA-0001Dc-SO; Mon, 26 Sep 2022 10:17:44 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJB-002zk1-Ib; Mon, 26 Sep 2022 10:17:44 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJ9-000K2e-6Y; Mon, 26 Sep 2022 10:17:43 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 26 Sep 2022 10:17:40 +0200
Message-Id: <20220926081740.76968-8-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220926081740.76968-1-o.rempel@pengutronix.de>
References: <20220926081740.76968-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_011748_360743_5FB8F106 
X-CRM114-Status: GOOD (  10.52  )
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
Subject: [PATCH v1 8/8] net: dsa: do not wait for aneg is actually done on the port start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Aneg configuration should be done by the eth code, not dsa.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/dsa.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
index 7a64a79412..040ba897e2 100644
--- a/drivers/net/dsa.c
+++ b/drivers/net/dsa.c
@@ -111,10 +111,6 @@ static int dsa_port_start(struct eth_device *edev)
 
 	dsa_port_set_ethaddr(edev);
 
-	ret = phy_wait_aneg_done(dp->edev.phydev);
-	if (ret)
-		return ret;
-
 	if (ops->port_enable) {
 		ret = ops->port_enable(dp, dp->index, dp->edev.phydev);
 		if (ret)
-- 
2.30.2



