Delivery-date: Tue, 26 Nov 2024 16:18:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxKZ-000fPY-1f
	for lore@lore.pengutronix.de;
	Tue, 26 Nov 2024 16:18:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxKZ-0004OJ-Eq
	for lore@pengutronix.de; Tue, 26 Nov 2024 16:18:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zctIlTdFaB0hPZOpLkJQhlrMg7RYfTS4VI7anWH4udI=; b=rA73UgGwR2DNiU7Lp8Na2UDmZH
	3b1ikN5ZWwQSpu+eyLKzmo82pN+HJmnbNnCMoeM86kEjrollrA5Nee07yRTnJxM7j/Iy3oCmgjjkG
	JVOQcl2Hhrl4hJ4Z6wKtYfb2z39OT/TSQVUlojz9sG0C+uuN7HB//kKff5O+b/ZIs/kxUpD4/Cq0Y
	3SjxIFwi1kFNGPvD2SST/7d7f9Bqrh+174lpHOhgE2iy4CS4erbCDAimPEOHyYYEIcDlasd3X1xnp
	9Zbk/Q0HjYlqFMWI9qAWoPKFrwpx8e5BGPJkNgdFQDtXUSwMmnZquYXNczCiMLhDHLqrnsSWYpWhq
	CeXGAnGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxKC-0000000Aya1-1QV4;
	Tue, 26 Nov 2024 15:18:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxK6-0000000AyW7-3zv3
	for barebox@lists.infradead.org;
	Tue, 26 Nov 2024 15:17:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxJx-0003vE-JZ; Tue, 26 Nov 2024 16:17:45 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxJw-000Gru-22;
	Tue, 26 Nov 2024 16:17:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxJw-00FD3f-2G;
	Tue, 26 Nov 2024 16:17:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Nov 2024 16:17:44 +0100
Message-Id: <20241126151744.3621717-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241126151744.3621717-1-a.fatoum@pengutronix.de>
References: <20241126151744.3621717-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_071754_987208_9EAD494F 
X-CRM114-Status: UNSURE (   9.56  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] net: implement ethaddr_string_cmp()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We keep ethernet addresses either in binary or in text form at a couple
of places, e.g. device tree, device parameters, struct net_device,
... etc. We have memcmp() and strcmp() respectively to compare each, add
one more function to compare a text string with binary. This will be
used in a follow up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/net.h |  2 ++
 net/lib.c     | 17 +++++++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/include/net.h b/include/net.h
index d9b7953a3c33..dbc45b806a51 100644
--- a/include/net.h
+++ b/include/net.h
@@ -366,6 +366,8 @@ IPaddr_t getenv_ip(const char *name);
 int setenv_ip(const char *name, IPaddr_t ip);
 
 int string_to_ethaddr(const char *str, u8 enetaddr[6]);
+void ethaddr_to_string(const u8 enetaddr[6], char *str);
+int ethaddr_string_cmp(const u8 enetaddr_a[6], const char *str_b);
 
 #ifdef CONFIG_NET_RESOLV
 int resolv(const char *host, IPaddr_t *ip);
diff --git a/net/lib.c b/net/lib.c
index dc6e138f392c..59bd4c280caf 100644
--- a/net/lib.c
+++ b/net/lib.c
@@ -37,6 +37,23 @@ int string_to_ethaddr(const char *str, u8 enetaddr[ETH_ALEN])
 	return 0;
 }
 
+void ethaddr_to_string(const u8 enetaddr[ETH_ALEN], char *str)
+{
+	sprintf(str, "%02x:%02x:%02x:%02x:%02x:%02x",
+		 enetaddr[0], enetaddr[1], enetaddr[2], enetaddr[3],
+		 enetaddr[4], enetaddr[5]);
+}
+
+int ethaddr_string_cmp(const u8 enetaddr_a[ETH_ALEN], const char *str_b)
+{
+	u8 enetaddr_b[ETH_ALEN];
+
+	if (string_to_ethaddr(str_b, enetaddr_b))
+		return -EINVAL;
+
+	return memcmp(enetaddr_a, enetaddr_b, ETH_ALEN);
+}
+
 int string_to_ip(const char *s, IPaddr_t *ip)
 {
 	IPaddr_t addr = 0;
-- 
2.39.5



