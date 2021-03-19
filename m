Delivery-date: Fri, 19 Mar 2021 17:27:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNHy5-0007lr-96
	for lore@lore.pengutronix.de; Fri, 19 Mar 2021 17:27:21 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNHy4-0003Fd-K3
	for lore@pengutronix.de; Fri, 19 Mar 2021 17:27:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rlRoB/Y4sK8CoqwfbAx9/4OZEG/7a9SnH8ocwI9ZGyo=; b=gqKnudwVrvAhe8A4iEogeQ8DKe
	vWQuOTg/LMEeECfg7KIkiS6tvc8fFl3LBNUEBLDp0SCAAK+G+/3gFKSwyP3qKWxQZMXEXJE7mLWUw
	TXrI5jKYjnQ6y9i6n7Hzd9kPA9jzOIOyAugRt0Uf5Vwsps3OpzSrE3MpNyXpoVyc73cuMkUnDFSSV
	6LOTUSLr0u+Bf4AGPHYxEXa3MFe6XeyUkhcf3tzMxChJeitfHkuVaTlHJM4gsEnJ1bUUgPnf1uBfg
	kh9a+e544ShTt5UQVS8kuimYn5pN4PA/M/WjTN3aA/Z7OLeGygCjqZAZSvDCjBkwnVkqguScwTRgS
	wRqM+m9g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNHx0-007iWJ-Bc; Fri, 19 Mar 2021 16:26:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNHws-007iV4-O9
 for barebox@lists.infradead.org; Fri, 19 Mar 2021 16:26:09 +0000
Received: from [2a0a:edc0:0:c01:1d::a2]
 (helo=drehscheibe.grey.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNHwr-000340-VQ; Fri, 19 Mar 2021 17:26:06 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNHwr-00011d-En; Fri, 19 Mar 2021 17:26:05 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNHwr-00CA83-E4; Fri, 19 Mar 2021 17:26:05 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.tretter@pengutronix.de
Date: Fri, 19 Mar 2021 17:26:05 +0100
Message-Id: <20210319162605.2898826-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_162606_969823_6C39C97A 
X-CRM114-Status: UNSURE (   9.46  )
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
Subject: [PATCH] net: macb: add tx clock rate for 10 MBit link
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If the phy reports a 10 MBit link, which can happen during link
negotiation, the macb prints a warning, because it does not know the
clock rate for the TX clock.

Implement setting the TX clock rate for 10 MBit to avoid the warnings.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/net/macb.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 188dbf2d8c15..14a0b45322bf 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -269,6 +269,9 @@ static int macb_set_tx_clk(struct macb_device *macb, int speed)
 	}
 
 	switch (speed) {
+	case SPEED_10:
+		rate = 2500000;
+		break;
 	case SPEED_100:
 		rate = 25000000;
 		break;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

