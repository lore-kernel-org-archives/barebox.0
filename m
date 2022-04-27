Delivery-date: Wed, 27 Apr 2022 09:35:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njcDE-00GlRS-KC
	for lore@lore.pengutronix.de; Wed, 27 Apr 2022 09:35:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njcDC-00062Z-1T
	for lore@pengutronix.de; Wed, 27 Apr 2022 09:35:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0aN4Ru5a93qTqoBEbwsdMC72P65h+7kfj4JyS/pVB8Q=; b=SCDOSiRKFuJR7l
	xl0BYZ/Uj4MqJKHAFzaYbwjpUw/A4KGfsJO8gUKix/CwtHlZxnjEGiqeyHP73/f1vzJxVVThTCEXs
	2dYwdr4y5H3RNvNhpg6KPBbbqSUHh4qtLm0s9IcYAPvZ3JgdU3Pu32KGQQ3UDPJu1hz/N/NjbmxsK
	3iTtXXuO/OXWR4rp/scZdK5x17R+4Q4xv12f6tmgi2Y9sOE9Oj/9AaThJ1vaR0ziKC6QtHlTdFaZI
	EfS5cWT/jX0+wg2e+CK5KWy+c/2NvRrfBlsPnTU6/dEEbVByiRKzK7cR8QAtrJT/eZEHUUYJAHJDd
	aEdQCm1iw03N4DvNfzBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njcBV-000JGq-0Y; Wed, 27 Apr 2022 07:34:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njcBI-000JBG-JK
 for barebox@lists.infradead.org; Wed, 27 Apr 2022 07:33:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1njcBD-0005o5-Ho; Wed, 27 Apr 2022 09:33:43 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1njcBE-005Vte-9q; Wed, 27 Apr 2022 09:33:42 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1njcBB-00D73L-76; Wed, 27 Apr 2022 09:33:41 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 27 Apr 2022 09:33:40 +0200
Message-Id: <20220427073340.3125330-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_003348_653867_4C10BC14 
X-CRM114-Status: UNSURE (   9.01  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1] net: dsa: wait until PHY aneg is done
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some PHYs need a bit longer to complete auto negotiation. So, wait long
enough until this process is done.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/dsa.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
index f2420d306f..d9e629cefc 100644
--- a/drivers/net/dsa.c
+++ b/drivers/net/dsa.c
@@ -111,6 +111,10 @@ static int dsa_port_start(struct eth_device *edev)
 
 	dsa_port_set_ethaddr(edev);
 
+	ret = phy_wait_aneg_done(dp->edev.phydev);
+	if (ret)
+		return ret;
+
 	if (ops->port_enable) {
 		ret = ops->port_enable(dp, dp->index, dp->edev.phydev);
 		if (ret)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

