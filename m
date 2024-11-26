Delivery-date: Tue, 26 Nov 2024 16:18:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxKP-000fOB-1t
	for lore@lore.pengutronix.de;
	Tue, 26 Nov 2024 16:18:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxKP-0004Gy-EI
	for lore@pengutronix.de; Tue, 26 Nov 2024 16:18:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vlt7M3jLrtaqfv0BwBsNYVAChE44IdxN11GXGeVjx8w=; b=Hj9iDS7Y9yNeeP9Jv2B9cThrqF
	inV1QN0hlAzwGicJ9H5rKTIJGHTd3MbVuVnlPgp0kKWopivE0z3u2Wl0V9S5NFQhkMLq9B4gLe6z/
	tygN898RoO1GIpCfc9k0N3L43ncD26AQQnbxLSMlaNeiexcizW/pMpJ2Ybn683HQ7Wp2UVtSkTVgu
	XkXZZRktR1ZXDOQWGA3wSso8YeSYWkjmAYHkJMnxd9D9pKqg5xzc9wLmrcnwbXSxLTCHmkN0r7Cre
	Gz4XBzuWR0VKXEPibPvyWUNshyYZncevdP/xpTX/x5zvPVUB5zMBmKjp5v7XZY3eDoYRSzFPqZQa7
	Wyfb0AYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxK3-0000000AyTK-2ejx;
	Tue, 26 Nov 2024 15:17:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxJy-0000000AyPr-3YQ4
	for barebox@lists.infradead.org;
	Tue, 26 Nov 2024 15:17:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxJx-0003vD-J4; Tue, 26 Nov 2024 16:17:45 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxJw-000Grr-1u;
	Tue, 26 Nov 2024 16:17:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxJw-00FD3f-27;
	Tue, 26 Nov 2024 16:17:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Nov 2024 16:17:43 +0100
Message-Id: <20241126151744.3621717-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241126151744.3621717-1-a.fatoum@pengutronix.de>
References: <20241126151744.3621717-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_071746_878276_DD169946 
X-CRM114-Status: GOOD (  13.43  )
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
Subject: [PATCH 3/4] net: export list of registered ethernet addresses
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
index 4d4996c720ef..d9b7953a3c33 100644
--- a/include/net.h
+++ b/include/net.h
@@ -625,4 +625,13 @@ void ifdown_all(void);
 
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
index a1d6860be830..3714dde44026 100644
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



