Delivery-date: Thu, 02 Apr 2026 08:37:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BgC-007kpZ-0A
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 08:37:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BgB-0007oo-CU
	for lore@pengutronix.de; Thu, 02 Apr 2026 08:37:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6TsiygOYPhYmLsA12Z5vV9E0ZeHiWHfv6avrq8kO3B4=; b=QVPi02ESuKjc3fat9aeTdJqgRw
	ogKnQcOA9XYmiWCHXpjs0xal2TCFRcaMM2IUI48KG51lEgrZiIN3AHHYNaJX3BuGHADoVGmVeggBQ
	qmEe/zV2z2eeRuxm35UARjm9HDxxgadQT/PSp+9b9xCmqdEABCoxbTm5uLXNDA2txlbd6J04nOWf/
	LOpO/gI69IFesD861fx/vbm8zUFODYKSFWVlhHb5VYpC1tSIOlaLo1A6spXiiKOci6BleNhv3ahK8
	+YMAFZnvOr+kny9Gde3oy/gfuQ1WxzyL1ptLkbFYvTx8N0SWtyLnI4ZjYPSeNyrW+dpljAYKBfa4/
	qsJs5oAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Bfd-0000000Gu3d-226f;
	Thu, 02 Apr 2026 06:36:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8BfZ-0000000Gu0K-1boZ
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 06:36:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfX-0007Oi-CG; Thu, 02 Apr 2026 08:36:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-003Kc7-2e;
	Thu, 02 Apr 2026 08:36:42 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-00000003MbV-2t93;
	Thu, 02 Apr 2026 08:36:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 08:36:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-eth-do-udp-v1-4-af5d9fd6beec@pengutronix.de>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
In-Reply-To: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775111802; l=1222;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=2MCW7pPyowIreNuaSjYgGKxPO2SABZyV+OtbiD/IYt4=;
 b=E4M9ojH+H5cZedxgCyqW8K6cmdDoIH4FO6h0bZX9UcljlxR7zsH2v2iu61Bq/BzVlOEFxRYxJ
 4fctzgYfRJBD3t3756INkQuPdj24Ii9RFm23SGZGtGnMAO670TPv+qc
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_233645_484051_60D3F2EC 
X-CRM114-Status: GOOD (  10.90  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 04/10] fs: nfs: use net_eth_to_udp() for packet parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace net_eth_to_udp_payload() with the new consolidated
net_eth_to_udp() helper.

This also fixes a bug where the old code used the NIC-level frame
length (which includes ethernet, IP, and UDP headers) instead of the
UDP payload length when copying packet data.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
---
 fs/nfs.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 0b40c56ff3..39c92e4736 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1193,13 +1193,16 @@ static int nfs_read_req(struct file_priv *priv, uint64_t offset,
 
 static void nfs_handler(void *ctx, char *p, unsigned len)
 {
-	char *pkt = net_eth_to_udp_payload(p);
 	struct nfs_priv *npriv = ctx;
+	struct net_udp_pkt udp;
 	struct packet *packet;
 
-	packet = xmalloc(sizeof(*packet) + len);
-	memcpy(packet->data, pkt, len);
-	packet->len = len;
+	if (net_eth_to_udp(p, len, &udp))
+		return;
+
+	packet = xmalloc(sizeof(*packet) + udp.len);
+	memcpy(packet->data, udp.payload, udp.len);
+	packet->len = udp.len;
 	packet->pos = 0;
 
 	list_add_tail(&packet->list, &npriv->packets);

-- 
2.47.3



