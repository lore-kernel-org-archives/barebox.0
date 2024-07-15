Delivery-date: Mon, 15 Jul 2024 14:36:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTKws-0055sy-13
	for lore@lore.pengutronix.de;
	Mon, 15 Jul 2024 14:36:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTKwr-0002XI-OJ
	for lore@pengutronix.de; Mon, 15 Jul 2024 14:36:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IVGKfkEQzdvzn5++3gSWSmo8/onLG7J1ke1UkA9YqhU=; b=j69LjOdwqSGJ9xw9Flf2c8afln
	THLvDE9TF+s6B07oCjgH3gifInkCAnzQi/Y94ooSFcX0qGfT8bwk82LQyqIJCbZh2Vl0FD3K7iQTL
	aKEuUgk86d/CV/lLecbD++zoZJvnlBUz6x2qvjX9z2MOPJ9bI+aM9rXM93Qwb0HmoNpi7+FimJMUI
	sYZ8r2L+xtgwBNCsGyjgivXy2fzbW4ZY21g7ai1xp0L5XdqaF1pf95B0JkouTEoyhNa1Q9AVMPrII
	WS1Lw4St6ZSYVbSCzfGG2jXSzJoUeD+ebPmRiQ5TkwNHUgwGabRHaxEFv+Dn6IA15DtiqsV8/PFbe
	6ugYTejw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTKwI-000000072lf-1BXx;
	Mon, 15 Jul 2024 12:36:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTKwE-000000072kW-3jAD
	for barebox@lists.infradead.org;
	Mon, 15 Jul 2024 12:36:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sTKwB-0002Ko-VL; Mon, 15 Jul 2024 14:36:16 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sTKwB-009huN-IZ; Mon, 15 Jul 2024 14:36:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sTKwB-0088tG-1V;
	Mon, 15 Jul 2024 14:36:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 15 Jul 2024 14:36:14 +0200
Message-Id: <20240715123614.1940787-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240715123614.1940787-1-s.hauer@pengutronix.de>
References: <20240715123614.1940787-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_053618_951890_87B16067 
X-CRM114-Status: GOOD (  11.46  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] hab: ahab: use pr_* for printing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use pr_* functions to get the messages into the log.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/hab/hab.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 5701e5feb5..800f26f26c 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -333,11 +333,11 @@ static int imx_ahab_lockdown_device(unsigned flags)
 
 	ret = ele_forward_lifecycle(ELE_LIFECYCLE_OEM_CLOSED, NULL);
 	if (ret) {
-		printf("failed to forward lifecycle to OEM closed\n");
+		pr_err("failed to forward lifecycle to OEM closed: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
-	printf("Change to OEM closed successfully\n");
+	pr_info("Change to OEM closed successfully\n");
 
 	return 0;
 }
-- 
2.39.2



