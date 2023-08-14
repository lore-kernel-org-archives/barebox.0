Delivery-date: Mon, 14 Aug 2023 07:34:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVQDP-003MsT-Uh
	for lore@lore.pengutronix.de; Mon, 14 Aug 2023 07:34:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVQDO-0006mn-5H
	for lore@pengutronix.de; Mon, 14 Aug 2023 07:34:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1USYJ6rTxB5XK95F18V2Ex5kK+Y87CpmQvEsPAMnu2Q=; b=Nu/vMBAZ3zsvAHR4l5tn71ywcc
	c2hOU6WjF2MeyNwD0hTid2N2nyjTpYKF+VN01gGTzr1p/A+R/nF+ZDtlFYbblA66JOpeiuBr6KX3Q
	ZXh23eAGbUZmzF3qUv0ufS2y4ei/nKwvzGnyuK8JVbnftQQ3dZM56syfHKEWRpeWyovfxFDy25ipm
	GmrzOq6jckPeqYQA/kkfx1c3vjIUu2COZscPWAlC2Is9y2ox3Ks1reG5WfvV3RSm1jsyGd1x2FYtp
	GJwZtdfS7U1OifP/qVwwv9nT+mU99buX9bkvEsog7T+xLd4M63z/ff8Zwyle7Zh1V0xEUtfwyOHXD
	WTkNZk1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVQC1-00GCPa-1V;
	Mon, 14 Aug 2023 05:32:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVQBx-00GCNs-2W
	for barebox@lists.infradead.org;
	Mon, 14 Aug 2023 05:32:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qVQBr-0006XR-NR; Mon, 14 Aug 2023 07:32:31 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qVQBr-000VUB-0q; Mon, 14 Aug 2023 07:32:31 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qVQBq-009hEB-2A;
	Mon, 14 Aug 2023 07:32:30 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 14 Aug 2023 07:32:25 +0200
Message-Id: <20230814053229.2311097-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230814053229.2311097-1-o.rempel@pengutronix.de>
References: <20230814053229.2311097-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230813_223237_834095_6D3A8C4B 
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/5] net: designware: eqos: initialize MAC address specific DMA channel configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make sure we use predictable DMA Channel Select configuration. Otherwise
bad things may happen.
So far this fix is not related to any known issue and was noticed by
investigating other bugs.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/designware_eqos.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 5e5c9ebe68..845f9f51ef 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -351,6 +351,11 @@ int eqos_set_ethaddr(struct eth_device *edev, const unsigned char *mac)
 
 	memcpy(eqos->macaddr, mac, ETH_ALEN);
 
+	/* mac_hi is only partially overwritten by the following code. Part of
+	 * this variable is DCS (DMA Channel Select). If this variable is not
+	 * zeroed, we may get some random DMA RX channel.
+	 */
+	mac_hi = 0;
 	/* Update the MAC address */
 	memcpy(&mac_hi, &mac[4], 2);
 	memcpy(&mac_lo, &mac[0], 4);
-- 
2.39.2



