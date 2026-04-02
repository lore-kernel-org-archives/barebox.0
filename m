Delivery-date: Thu, 02 Apr 2026 08:37:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BgD-007kqT-1B
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 08:37:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BgC-0007pP-NY
	for lore@pengutronix.de; Thu, 02 Apr 2026 08:37:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1BLheO5+aF3F7mtfbQVhXflTz6h4+8xw3z4/aU/KwM0=; b=pgylkDxjitYMCFYwYdWYzQo5QJ
	15NN6IHeEfjiYMrcnxbQ1+vYG1MCTEnqZxCnrfLRNoFxK5R4PDvd/bbHFyvpxAQoBbz5s0nXoPA5m
	sbw7ZdOguJ+gS9/wMD5IoT2+UI2TY6jWLq5vFNRacKHOZ3Jp0J/r3k6k5HWLQP6RLKHS9cb/O7gJT
	qqMPyxdKjH0k4+chJYPps8QQjORd1qKZMFKJlvsskJ6Jf5K6BPygBpzyqrrF7uF3i6coYcfTN/vg1
	WEudZlsr935vNKHrRJGm9RGR1B9aAzUyEUz2A34WqmKKz7mAI8s6UHwYTDoYvQAAQ+7zqXMH02DCf
	PZb9B97Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Bfd-0000000Gu3V-0sad;
	Thu, 02 Apr 2026 06:36:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8BfZ-0000000Gu0L-1beV
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 06:36:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfX-0007Oj-D1; Thu, 02 Apr 2026 08:36:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-003KcC-2i;
	Thu, 02 Apr 2026 08:36:42 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-00000003MbV-2tzi;
	Thu, 02 Apr 2026 08:36:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 08:36:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-eth-do-udp-v1-5-af5d9fd6beec@pengutronix.de>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
In-Reply-To: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775111802; l=880;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=9PR6w0Q2XDiurhGF8ENz2PARDZrM0T+S1DWYOQbGfSU=;
 b=wh91TGzhfr7O3nkcLmhyNBifYYwJl47MqCTpXqTy9n50JKYa2rjZzaUfdVHBAOqEq17PFzx5L
 dqLbZE6J2/JB7aOBF9Jc0zGa/SXMtIAmckC5F/e7dIH2TswKnPRAWJv
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_233645_486667_07E93EAE 
X-CRM114-Status: UNSURE (   8.86  )
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
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
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
Subject: [PATCH 05/10] net: dns: use net_eth_to_udp() for packet parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace the separate net_eth_to_udp_payload() and net_eth_to_udplen()
calls with the new consolidated net_eth_to_udp() helper.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
---
 net/dns.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/net/dns.c b/net/dns.c
index 8fbd13cdc3..8616e353c1 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -206,9 +206,12 @@ static void dns_recv(struct header *header, unsigned len)
 
 static void dns_handler(void *ctx, char *packet, unsigned len)
 {
-	(void)ctx;
-	dns_recv((struct header *)net_eth_to_udp_payload(packet),
-		net_eth_to_udplen(packet));
+	struct net_udp_pkt udp;
+
+	if (net_eth_to_udp(packet, len, &udp))
+		return;
+
+	dns_recv(udp.payload, udp.len);
 }
 
 int resolv(const char *host, IPaddr_t *ip)

-- 
2.47.3



