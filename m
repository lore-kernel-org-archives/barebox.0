Delivery-date: Sun, 01 Jun 2025 23:00:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLpnd-002jUl-2b
	for lore@lore.pengutronix.de;
	Sun, 01 Jun 2025 23:00:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLpnb-0000t7-S6
	for lore@pengutronix.de; Sun, 01 Jun 2025 23:00:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jMY9ym3uxeqhCEnSmPXhJ9pcr6K5hsbjGzftQXlvkIs=; b=C63XQBr0ptccynYh2jOYQ78Ohe
	nIFdMQtTstys6GXw9T/dsJTGj33d4Q5p1ykfJjZrNqsKqVupv5OtsoIXKYPQ5vwNJ/qJFFZUM4qV3
	RibH1aYXRzujJmRVAuatfP1b45zNB1CI+b4OQeEPjZcT9efF8mk6YoWedXfyaPjLrGiE4LXBl6rJb
	pcqxP9CoI7nsVZK3oSmN/gobez7DsL+sSzq9+iAt/I9u7EvGO+0oWLqjjGsSmOqgUQhZJcQd0Czka
	FIvh78Fqw1Xofltp9NM/kWbtxC9vs/f2Agkdej15w/nFD4mMARdGhnZzIzwXIyTi2feAfTqZl30nw
	cEqqX56Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLpmt-00000005xMC-0GAs;
	Sun, 01 Jun 2025 21:00:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLpmp-00000005xIW-392I
	for barebox@lists.infradead.org;
	Sun, 01 Jun 2025 21:00:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uLpmo-0000FO-AR; Sun, 01 Jun 2025 23:00:06 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  1 Jun 2025 22:59:59 +0200
Message-Id: <20250601210002.562733-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250601210002.562733-1-a.fatoum@barebox.org>
References: <20250601210002.562733-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250601_140007_795869_CCE1EC68 
X-CRM114-Status: UNSURE (   9.79  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] fbconsole: darken shade of non-bright white
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Bold/bright white at 255 is too close to 229 for the shades to be
clearly discernible. Bump down the white to 205 instead, which is
still white-ish enough.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fbconsole.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 55df524a96a3..cd1950a644cc 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -123,7 +123,7 @@ static struct rgb colors[] = {
 	[BLUE]			= { 0, 0, 238 },
 	[MAGENTA]		= { 205, 0, 205 },
 	[CYAN]			= { 0, 205, 205 },
-	[WHITE]			= { 229, 229, 229 },
+	[WHITE]			= { 205, 205, 205 },
 	[BRIGHT + BLACK]	= { 127, 127, 127 },
 	[BRIGHT + RED]		= { 255, 0, 0 },
 	[BRIGHT + GREEN]	= { 0, 255, 0 },
-- 
2.39.5



