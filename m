Delivery-date: Thu, 02 Apr 2026 09:02:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8C4q-007lRL-2r
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 09:02:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8C4q-0004gb-Af
	for lore@pengutronix.de; Thu, 02 Apr 2026 09:02:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b/zT3u6+LtZ0yTy7OMdv+yoRX0c82sHIrQWLyYQvllU=; b=OQhhrtlt+QnhpOZdq0HKimRiuc
	mh/vcMFVVepi/zo0865pVC7bJa07E2C18H2505WflrjNTXBe66t1QUnYxnxJOf+9mJRwQ5OXPEARQ
	x6HSo14LmsE/s6ZVLbnPrWHzZhVos1i8U1LHDdABYpQHQt9UpgdlIRQuw6/8zs884f9SVGwLxcATO
	AJnGspMGCeCDgv1PgtIjpBwwSWMVtZhowOHckL0IbuBn3Ktluonbm3FKPHpYbyavPRsYZNUOY9v9t
	YOQ0GSYb81Q6ITM/BM/wx7flez2xwVchOlyWgj5p2ooSeYDWusKktkkQ1yG5TU4vd2NQ8kVCCIvDV
	mF+PT/mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8C4K-0000000Gyf3-3YHW;
	Thu, 02 Apr 2026 07:02:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8C4H-0000000Gydf-1o7a
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 07:02:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8C4F-0004UI-Tz; Thu, 02 Apr 2026 09:02:15 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8C4F-003Kf1-1v;
	Thu, 02 Apr 2026 09:02:15 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-00000003MbV-30CU;
	Thu, 02 Apr 2026 08:36:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 08:36:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-eth-do-udp-v1-10-af5d9fd6beec@pengutronix.de>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
In-Reply-To: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775111802; l=1309;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Cjqj7PW8OizYCLZUdTXZHPQ8cVRVKniT5FJioawaM7Q=;
 b=1DlLyYtLqVsS2gzc7jHLh0Nv3NkumDCWGKnxGygZWul3bt/Ss4abn+5Xz7tsxIU0HtN/+aoef
 tay1bPk0T+hCmSA7tfBMM99b9csDiZiwvcYJdU+qSFGOUaEbqGae8iP
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_000217_473906_AFCA7739 
X-CRM114-Status: UNSURE (   7.53  )
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
Subject: [PATCH 10/10] net: remove unused
 net_eth_to_udp{hdr,_payload,len}() helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All callers have been converted to net_eth_to_udp() which validates
the packet length before accessing headers.  Remove the old helpers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
---
 include/net.h | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/include/net.h b/include/net.h
index bdf39bc531..4d443135c1 100644
--- a/include/net.h
+++ b/include/net.h
@@ -282,11 +282,6 @@ static inline struct iphdr *net_eth_to_iphdr(char *pkt)
 	return (struct iphdr *)(pkt + ETHER_HDR_SIZE);
 }
 
-static inline struct udphdr *net_eth_to_udphdr(char *pkt)
-{
-	return (struct udphdr *)(net_eth_to_iphdr(pkt) + 1);
-}
-
 static inline struct icmphdr *net_eth_to_icmphdr(char *pkt)
 {
 	return (struct icmphdr *)(net_eth_to_iphdr(pkt) + 1);
@@ -297,17 +292,6 @@ static inline char *net_eth_to_icmp_payload(char *pkt)
 	return (char *)(net_eth_to_icmphdr(pkt) + 1);
 }
 
-static inline char *net_eth_to_udp_payload(char *pkt)
-{
-	return (char *)(net_eth_to_udphdr(pkt) + 1);
-}
-
-static inline int net_eth_to_udplen(char *pkt)
-{
-	struct udphdr *udp = net_eth_to_udphdr(pkt);
-	return ntohs(udp->uh_ulen) - 8;
-}
-
 struct net_udp_pkt {
 	struct udphdr *udp;
 	void *payload;

-- 
2.47.3



