Delivery-date: Fri, 11 Apr 2025 09:44:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u393m-00BA3f-2f
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 09:44:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u393l-00066l-Eh
	for lore@pengutronix.de; Fri, 11 Apr 2025 09:44:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fq3LOvSqjR9jF11n0x20SC/m3zn1ee3ahzK9/r2cvyo=; b=YPz2F57QGsduZ9DYQ4Hafq7xPA
	vrWj4V6tKkW/raLz+CIa++FCpejeICfDTEz+Ld1C/57SFDVrZVbTYSrlr5DfL5BlEm5ChzAuVWTmm
	b7BQdV+VYROdhG0rhSrwkO55Rdz3FCNH3+UYZPGikSENDduDPnqlRSW7RCeQNFT6T0tGYESBkCZVJ
	CCjMoLlX51gGZHGD0PHIDh9l4C5NQHJu5x8G3KtWtGazz6ckJX18ma3ZCB9ptq/lmfCNRVtUwCJNq
	wv3NyEqTjYgO03/xbYZ05h2m1GdCB8dLRGTatOPt2H4Rj0K5fZGpSrycGvuZYau0PQ8MgJgld3p3Z
	xmzMatQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u393B-0000000Cv2n-3MFe;
	Fri, 11 Apr 2025 07:43:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u390P-0000000CuKW-4AQK
	for barebox@bombadil.infradead.org;
	Fri, 11 Apr 2025 07:40:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=fq3LOvSqjR9jF11n0x20SC/m3zn1ee3ahzK9/r2cvyo=; b=gZtH4HKgUVzQSA1Aoaz8z8Ktgi
	1MaWA+mKhxfbUz9nSZkPTKv5yxV/Zs7M4k15ouJVTMuRKz1NQPQ0as/etdXlIKB0Z/fTsVYYj+qTV
	5FWy6RDcdfiKAbjJEKAfwfX5VW8UYb9o/Ykcvh6k4DW97YDTm7bar0wbq2PBScDwPyz0zH9ucGpU9
	SYIQLkgfdQE5y+jUvzllKi0gtIe8FUvMvGK/zcDjzg5cc2cSfgNaGA0B7NNEUC5/oIhqeip0hoKK+
	+V7JoeLXr1A9aTKqSk8TeUPjl1rKARxeH1JZDymejvhW1VOO84QvHQuCYeCb1wkguVdKctOyC+PDL
	3V4L6WbA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u390M-00000008y0u-3RWL
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 07:40:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390I-0004uU-Px; Fri, 11 Apr 2025 09:40:46 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390I-004OjF-1t;
	Fri, 11 Apr 2025 09:40:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390I-008WBo-1c;
	Fri, 11 Apr 2025 09:40:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 11 Apr 2025 09:40:37 +0200
Message-Id: <20250411074045.2019372-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
References: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_084051_234446_E6C9FA9A 
X-CRM114-Status: GOOD (  12.51  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/10] net: export list of registered ethernet addresses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Network stack keeps an ethaddr_list of Ethernet addresses that were
registered by drivers and board code.

The list currently lacks ethernet devices for which a net_device already
existed. If a net_device is added later on, the list is consulted, but
the element is not removed.

This means ethaddr_list is "the list of registered Ethernet addresses
that were added before the relevant device has been probed". Make it more
useful by genericising it to be "the list of registered Ethernet addresses".

This introduces no functional change (only consumer is fixup code that
handles both cases already), but it allows future board code to consult
the list to check which Ethernet addresses were actually assigned.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/net.h |  9 +++++++++
 net/eth.c     | 11 ++---------
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/include/net.h b/include/net.h
index b742e9499434..bc0c1edce0ce 100644
--- a/include/net.h
+++ b/include/net.h
@@ -613,4 +613,13 @@ void ifdown_all(void);
 
 extern struct class eth_class;
 
+struct eth_ethaddr {
+	struct list_head list;
+	u8 ethaddr[ETH_ALEN];
+	int ethid;
+	struct device_node *node;
+};
+
+extern struct list_head ethaddr_list;
+
 #endif /* __NET_H__ */
diff --git a/net/eth.c b/net/eth.c
index 16857ac838dd..2489ed152634 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -23,14 +23,7 @@
 
 DEFINE_DEV_CLASS(eth_class, "eth");
 
-struct eth_ethaddr {
-	struct list_head list;
-	u8 ethaddr[ETH_ALEN];
-	int ethid;
-	struct device_node *node;
-};
-
-static LIST_HEAD(ethaddr_list);
+LIST_HEAD(ethaddr_list);
 
 int eth_set_promisc(struct eth_device *edev, bool enable)
 {
@@ -102,7 +95,7 @@ void eth_register_ethaddr(int ethid, const char *ethaddr)
 	for_each_netdev(edev) {
 		if (edev->dev.id == ethid) {
 			register_preset_mac_address(edev, ethaddr);
-			return;
+			break;
 		}
 	}
 
-- 
2.39.5



