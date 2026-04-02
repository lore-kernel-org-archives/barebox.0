Delivery-date: Thu, 02 Apr 2026 08:37:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BgB-007kpP-33
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 08:37:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BgB-0007oj-7g
	for lore@pengutronix.de; Thu, 02 Apr 2026 08:37:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qtxPmAed+9EFetabW9Tla4dindNVCs2I+hlfhbtOpZw=; b=3lfB84Sitm/Jy2PVVfaemmyYFr
	WYOUnAyRHfbnjjPV0/tkAowMS0Z9/alABpdNr/7HnGFPVUWLteaKQ2W3JNjnABnrm8pYwoe9ALesX
	ivFJ8OI79lwZJWOv+tv4AissNU6uvsoC33NrSt+xtKwZAznN8AMj56ww3xTjJaL1GHw707YEIMwf8
	dQc0a9Zo9M7xRtDB8PRgNTLV0OjSgCr3I5Ub3CpZUJVEdqzlLG5/LExZ0pyR90qquR+Doj0uqxGk8
	fKfGkk+AmgJHaf2j5WssAsAtNtS1xDIOVpSg4QG56LhpsucixvX4surdAmwy+ckM5AZqvOahYE7TE
	oGVQLuZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Bfc-0000000Gu3K-3RR4;
	Thu, 02 Apr 2026 06:36:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8BfZ-0000000Gu0M-1bMP
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 06:36:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfX-0007Om-Cu; Thu, 02 Apr 2026 08:36:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-003KcE-2g;
	Thu, 02 Apr 2026 08:36:42 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-00000003MbV-2xZc;
	Thu, 02 Apr 2026 08:36:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 08:36:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-eth-do-udp-v1-7-af5d9fd6beec@pengutronix.de>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
In-Reply-To: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775111802; l=933;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Q4wQkCOs2yhQ4pUaNXcpaYxRNq40PTf3joCb9eSSL/4=;
 b=SKecJhPBuHOcwUO3VlFqugXTV/Y6+MgOsTK88YjXghPTGChUpCCD/SVlaSqQY6fUyModZZ6t8
 RQYBZpQ1nzXAw9g0vyWXKRym3ghhgIgwWZacFGVRabdjMp6dIySwOSF
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_233645_469190_8F625EF8 
X-CRM114-Status: UNSURE (   9.64  )
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
Subject: [PATCH 07/10] net: netconsole: use net_eth_to_udp() for packet
 parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace the separate net_eth_to_udp_payload() and net_eth_to_udplen()
calls with the new consolidated net_eth_to_udp() helper.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
---
 net/netconsole.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/net/netconsole.c b/net/netconsole.c
index 28fd0e98ec..859cfe8e6f 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -33,9 +33,12 @@ static struct nc_priv *g_priv;
 static void nc_handler(void *ctx, char *pkt, unsigned len)
 {
 	struct nc_priv *priv = g_priv;
-	unsigned char *packet = net_eth_to_udp_payload(pkt);
+	struct net_udp_pkt udp;
 
-	kfifo_put(priv->fifo, packet, net_eth_to_udplen(pkt));
+	if (net_eth_to_udp(pkt, len, &udp))
+		return;
+
+	kfifo_put(priv->fifo, udp.payload, udp.len);
 }
 
 static int nc_getc(struct console_device *cdev)

-- 
2.47.3



