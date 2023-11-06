Delivery-date: Mon, 06 Nov 2023 15:23:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r00Vo-000F0G-1v
	for lore@lore.pengutronix.de;
	Mon, 06 Nov 2023 15:23:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r00Vo-0001t1-FR
	for lore@pengutronix.de; Mon, 06 Nov 2023 15:23:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iVrmDaOCeAjQktqDiQycvYp9mUpR+rT+J0BesVSt3L8=; b=GayS4CDtCo6z8+7sLIYd+2H1a3
	M+i6i3Wx6R1VEKCpQoqiOKnKrcHFV5PI75KQ/k80RH629BnkYM3Lfl7Z7gyiPm9l9fe5nIFrQFTJB
	GUtIOC10jNHWePFk6kl1Y4YU8vRheWBGP9WC99svzpDuZuPp6pvH3zC71erbHFcHb2r9u3pkImiJG
	NltYjSjJunbNyUDy7UJBW7y3PS9wTCravDpSyQTVqKvg9r9L+hh/Gt9nt7Az7LW44jsP079sNimUI
	Th9UB59vngW4rKPbYDhDqY3lCdiIlmepdA9bjBG57gjpv6QJD+Js8Q3+66r2yYXzj2lRP6s3XPQoL
	CquHy5+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r00UN-00Gp1q-1O;
	Mon, 06 Nov 2023 14:22:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r00UK-00Gp0J-0m
	for barebox@lists.infradead.org;
	Mon, 06 Nov 2023 14:22:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r00UH-0001aY-HF; Mon, 06 Nov 2023 15:21:57 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r00UH-00740B-4p; Mon, 06 Nov 2023 15:21:57 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r00UH-007fbz-0H;
	Mon, 06 Nov 2023 15:21:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  6 Nov 2023 15:21:56 +0100
Message-Id: <20231106142156.1828102-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_062200_298019_765CE96C 
X-CRM114-Status: GOOD (  10.30  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] net: mvneta: increase RX ring size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To better cope with bigger TFTP window sizes increase the RX ring size.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/mvneta.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
index ba32eeabdc..1e176dbdc2 100644
--- a/drivers/net/mvneta.c
+++ b/drivers/net/mvneta.c
@@ -166,7 +166,7 @@
 
 #define MVNETA_MH_SIZE		2
 #define TXQ_NUM			8
-#define RX_RING_SIZE		4
+#define RX_RING_SIZE		128
 #define TRANSFER_TIMEOUT	(10 * MSECOND)
 
 struct rxdesc {
-- 
2.39.2



