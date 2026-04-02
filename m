Delivery-date: Thu, 02 Apr 2026 08:37:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BgE-007kqr-03
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 08:37:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BgD-0007qF-Ej
	for lore@pengutronix.de; Thu, 02 Apr 2026 08:37:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EknLbxeJH5DgmU1XUNzrJL76w+41I+rDfZi5ffTrprI=; b=PusEbcE7bW+3Ml0W3Qd5duw3Fn
	P0nGxXpH7SwzWwqKqRHCqZeTUJuSI5kyeRc8a3kOnSZB4iicykOwzz3SlXo6bFunPIJYllDyE4KVZ
	hwDI2WvUA5qoLLIa50tyMv+vxdwwb9/tleZEd/VTsPyrpKHUBKOyE3T5iKgO+voL40KCTzSQKN0Fp
	no4XaxCIdUmzk7PPBY7ce6xhIVOgsPNLa1+gmgXS9h0UHU95KGJQXwfhwH87juTuPU1mTZjx6xPLG
	HWmEsZAHkYaVPW3YcDk5YGQldAl/KIWcvw78d6QV3q8Uej+08jbKkZNjqopfXeR2bHND8lulp4JZb
	ZqueQKWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Bfe-0000000Gu46-1Wdf;
	Thu, 02 Apr 2026 06:36:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8BfZ-0000000Gu0H-1c2u
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 06:36:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfX-0007Og-Ab; Thu, 02 Apr 2026 08:36:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-003KcG-2i;
	Thu, 02 Apr 2026 08:36:42 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-00000003MbV-2zUb;
	Thu, 02 Apr 2026 08:36:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 08:36:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-eth-do-udp-v1-9-af5d9fd6beec@pengutronix.de>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
In-Reply-To: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775111802; l=990;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=jaktqxdquMn8aB14XZGuIhSt8XXVQy9lGff40Q94CSg=;
 b=byVxO1Ky/wVl2II1Z/BgrIBt67Y//f2nMQweBXezg6KP0qA/eo4+fzxruKcuFdqm+YqAHCcP+
 1chGNCF27uGDK1XB9MTSLgsXGqtamPDtwp+z8eI1scxklzMd6LO2WGd
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_233645_464618_B18C2A2B 
X-CRM114-Status: GOOD (  10.21  )
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
Subject: [PATCH 09/10] net: fastboot: stop using net_eth_to_udp_payload()
 for PACKET_SIZE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The PACKET_SIZE macro used net_eth_to_udp_payload(0) as a trick to
compute the combined ethernet + IP + UDP header size at compile time.
Replace this with an explicit constant, removing the last user of the
old helpers outside of the header itself.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
---
 net/fastboot.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/fastboot.c b/net/fastboot.c
index 506af00cb8..b1cb8c8bf6 100644
--- a/net/fastboot.c
+++ b/net/fastboot.c
@@ -23,8 +23,8 @@
 
 #define FASTBOOT_PORT 5554
 #define MAX_MTU 1500
-#define PACKET_SIZE (min(PKTSIZE, MAX_MTU + ETHER_HDR_SIZE) \
-		      - (net_eth_to_udp_payload(0) - (char *)0))
+#define NET_UDP_HDR_SIZE (ETHER_HDR_SIZE + sizeof(struct iphdr) + sizeof(struct udphdr))
+#define PACKET_SIZE (min(PKTSIZE, MAX_MTU + ETHER_HDR_SIZE) - NET_UDP_HDR_SIZE)
 
 enum {
 	FASTBOOT_ERROR = 0,

-- 
2.47.3



