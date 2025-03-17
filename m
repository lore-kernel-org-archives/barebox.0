Delivery-date: Mon, 17 Mar 2025 11:46:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu7zV-000a9A-2d
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 11:46:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu7zU-0000Fy-JD
	for lore@pengutronix.de; Mon, 17 Mar 2025 11:46:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uFgNr8WUmrXznTrBwosno6mjb40Ub5Blc0XPLd9H8Zo=; b=IEoeFjJ7JiGOWESiu8o5HH4XE5
	JNtFitQiaISALB3wnHwPtnj63RJepQSUL34e/X5Sd4+l1/mI+7uqmQZlmn2tegVkeSh5Xatm9Qrqg
	WcueP4WLhEVLOCwCt/elvsXosJjoAlZETiiT42luDZfh7GtB3nsShVZu1Ve+OMKipGfTT1XOzW62i
	JsngvJeQ4KisfU7DQ+T3PMDQkxsSqS7zaIxufgfYpJ1Uv026btOT77LAEVF9lyriEOiKWbJvd6set
	ijwlwczehSpOzEoUGC6OIDRg3SDSk2X2XdJYatdmMOzpHEgHTP+3V/XixTJM1Vfa0hhyo+97KrlRH
	AdxrOdVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu7yu-00000002EVB-1aOC;
	Mon, 17 Mar 2025 10:46:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu7tR-00000002D0Q-0cz3
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 10:40:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu7tP-0007F5-TZ; Mon, 17 Mar 2025 11:40:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu7tP-000ELj-0y;
	Mon, 17 Mar 2025 11:40:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu7tP-004O92-1z;
	Mon, 17 Mar 2025 11:40:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 Mar 2025 11:40:22 +0100
Message-Id: <20250317104022.1046085-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_034025_186960_695E559B 
X-CRM114-Status: GOOD (  12.36  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] watchdog: rti_wdt: return 0 even when not ready for ping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The rti_wdt is a windowed watchdog which means we are not allowed to
ping the watchdog outside a certain timing window. When pinging the
watchdog too early the watchdog will trigger.

We used to return -EBUSY from the watchdogs ping callback when
pinging outside the timing window. We may ping the watchdog multiple
times in boot_entry() which then results in

Failed to enable watchdog: Device or resource busy

Avoid these messages by returning successfully even when pinged too
early.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/rti_wdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/watchdog/rti_wdt.c b/drivers/watchdog/rti_wdt.c
index f5ca6683db..ffc4427059 100644
--- a/drivers/watchdog/rti_wdt.c
+++ b/drivers/watchdog/rti_wdt.c
@@ -56,7 +56,7 @@ static int rti_wdt_ping(struct watchdog *wdt)
 	halftime = wdt->timeout_cur / 2 + 1;
 
 	if (!is_timeout_non_interruptible(wdt->last_ping, halftime * SECOND))
-		return -EBUSY;
+		return 0;
 
 	writel(WDKEY_SEQ0, priv->regs + RTIWDKEY);
 	writel(WDKEY_SEQ1, priv->regs + RTIWDKEY);
-- 
2.39.5



