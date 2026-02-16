Delivery-date: Mon, 16 Feb 2026 09:43:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruCN-002G8C-2M
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:43:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruCN-0001Ob-UO
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:43:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JCY6ep+bsquW/CsuXyv0KK4It0iLBQZTuOwF8jSlh9c=; b=3uzu+dyRzs8x4tkaRa98OjdQ/8
	kzvskgE1WKRdDdZb0RV2iGjXULMRfGu0kufw2fqlByNGzkWEq4sNEa0WlS4FxwdOsfXvq/ezR5VNG
	dPWacU+nc8M8BlwJXlS3Aa9eF8TL5lc2LnbUCEkeOyV+fgyv/3z0VWo78Rb4St8udWFi3eBcI+6FF
	ABn4vWYqzx4h7fEEkthiV4LZXWN/igNNznnWU43Sf/xq9wQ2VVzJcYKlQ25cgqjYREJpRQ/B8xDMK
	RfkHjslDylczpCA4HCyPi6BKoWeE7GKV3kfiWgMQKxOGUPjhlzgYvAAdfml/MY3awSlZ1mBcaHxu2
	D1+N7a3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruC2-00000006Am2-2mz7;
	Mon, 16 Feb 2026 08:42:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruBz-00000006Aji-3faz
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:42:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruBy-00011Y-8l; Mon, 16 Feb 2026 09:42:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruBw-0012Bt-2J;
	Mon, 16 Feb 2026 09:42:54 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruBx-0000000Esrv-44UK;
	Mon, 16 Feb 2026 09:42:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:42:19 +0100
Message-ID: <20260216084253.3547270-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084253.3547270-1-a.fatoum@pengutronix.de>
References: <20260216084253.3547270-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_004255_935493_3E713EDB 
X-CRM114-Status: UNSURE (   9.42  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 03/12] net: eth: avoid overlapping memcpy in eth_set_ethaddr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

eth_param_set_ethaddr() calls eth_set_ethaddr(edev, edev->ethaddr),
which results in memcpy(edev->ethaddr, ethaddr, ETH_ALEN) where source
and destination are the same buffer. This is undefined behavior with
memcpy.

Skip the memcpy when ethaddr already points to edev->ethaddr.

Fixes: b9170a1bde ("net: eth: Remove ethaddr_param")
Reported-by: GCC 14.2 -fanalyzer
Co-authored-by: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 net/eth.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/eth.c b/net/eth.c
index 4201ed1c6b66..37f55e0b3612 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -42,7 +42,8 @@ int eth_set_ethaddr(struct eth_device *edev, const char *ethaddr)
 	if (ret)
 		return ret;
 
-	memcpy(edev->ethaddr, ethaddr, ETH_ALEN);
+	if (ethaddr != edev->ethaddr)
+		memcpy(edev->ethaddr, ethaddr, ETH_ALEN);
 
 	return 0;
 }
-- 
2.47.3



