Delivery-date: Thu, 02 Apr 2026 10:25:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8DN9-007mgn-1m
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 10:25:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8DN8-00056w-W8
	for lore@pengutronix.de; Thu, 02 Apr 2026 10:25:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o+Ok8vKknchH+pbK67rSLBywpmVaKDbZr3yCwFzAgMM=; b=xzY58f5XjB1vShRw8ZXDPlsJuP
	kyu7OFcWgSBcAm2USuOdoWxtj6Mn5hQaKjte066PewowkKy5FWabByBANu+zxJqDNuGrfUA9KQERf
	OtTFIPkbzTbfg2tY7bhh57m5wRMo4+RwtSkODY7eG6AOlYyXUsOWH5GyXlWHrQOcK0AN6mEqxbAgu
	uEDEwh5F7xnF8BtxUvnJUdT0pN3H5lteyY+Zw9A7ZWGQvHbTqpfvTTgCzvYo43YgHg0PF/+X8EVUU
	qZYr89FKV4v2N/k7/VkND80LiYZwcy8Wg4fKEjWg0v1YDzyACLyoLQ1CaWB0x5k5GsK9zsQkl94AE
	ABAO2q8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8DMh-0000000HB2s-0KF8;
	Thu, 02 Apr 2026 08:25:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8DMe-0000000HB2T-23CD
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 08:25:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8DMU-0004sG-O1; Thu, 02 Apr 2026 10:25:10 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8DMU-003LOH-1l;
	Thu, 02 Apr 2026 10:25:10 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8DMU-00000003hKJ-1wMO;
	Thu, 02 Apr 2026 10:25:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 10:25:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-dns-buffer-overflows-v1-2-30621fe8c6b7@pengutronix.de>
References: <20260402-net-dns-buffer-overflows-v1-0-30621fe8c6b7@pengutronix.de>
In-Reply-To: <20260402-net-dns-buffer-overflows-v1-0-30621fe8c6b7@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775118310; l=1186;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=GNpVp8XWm3d4H3KlIUaWsquXDOSitlDPbVozFXuI3KE=;
 b=t5eGr9JACGaDPg3H6Z+nH5YKSny+uD2ZPTiY4W+3yDBhNDDx28lqn0aMPPoDEuc7Ns7HxLTGS
 I6/+XSpDljbD1oZVylFq7gy9HkrADB80ORr/PC5iOlBc7sysP6ZpvAo
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_012520_533912_0A26029D 
X-CRM114-Status: GOOD (  11.11  )
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
Cc: "Claude Opus 4.6 \(1M context\)" <noreply@anthropic.com>
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
Subject: [PATCH 2/2] net: dns: fix OOB read in dns_recv query type check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

After skipping the query name in a DNS response, dns_recv() reads
p[1] and p[2] to check the query type BEFORE validating that these
offsets are within the packet bounds. The bounds check '&p[5] > e'
follows the reads, but by then the OOB access has already occurred.

If the query name's null terminator is at or near the end of the
packet, p[1] and p[2] read 1-2 bytes past the packet data.

Fix by moving the bounds check before the reads.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 net/dns.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/net/dns.c b/net/dns.c
index fde1439469..5a3ee30720 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -166,8 +166,13 @@ static void dns_recv(struct header *header, unsigned len)
 		continue;
 
 	/* We sent query class 1, query type 1 */
+	if (&p[5] > e) {
+		pr_debug("DNS response too short\n");
+		return;
+	}
+
 	tmp = p[1] | (p[2] << 8);
-	if (&p[5] > e || ntohs(tmp) != DNS_A_RECORD) {
+	if (ntohs(tmp) != DNS_A_RECORD) {
 		pr_debug("DNS response was not A record\n");
 		return;
 	}

-- 
2.47.3



