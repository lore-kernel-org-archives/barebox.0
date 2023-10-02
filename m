Delivery-date: Mon, 02 Oct 2023 12:18:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnG0Q-001uF0-VT
	for lore@lore.pengutronix.de; Mon, 02 Oct 2023 12:18:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnG0O-0003yU-VL
	for lore@pengutronix.de; Mon, 02 Oct 2023 12:18:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Del8Gkx4ezejKkMXs/tkjDAkZphQQyxhZIgDJ/xC6C0=; b=T6C6Qv+cQdS7FPd7Qo/ey2W02y
	P4aHdqWLTqccQifpUSk+xajm+/6U2dMMNIGuBFHWVMJ+IUq0/8rTN6dBJQXuI8gGCj5HxJtP7xgQV
	s3oMkEna41JN0hjWAIeQuXhgNsxtPfXK2LXyvDlBVTBU25rEjKwgBTzCCl/eMaNiOvV9QXpCl/kqY
	GMnmHiOHv3vf6cyNvMWIY5fxv9aF07SGB914XJkPb28csLiCVGuj29ILY2Rp+tvpO9R36kYjK2Pdo
	FAkPO5VRZpYw3zqlCwW1iBLGv8J/Z0dXgpFFjbWLPCc3ZeXCB3N8f8nXujqYUPxVdit5kD4vPSrUz
	Hrc+jEzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnFzH-00CIlN-24;
	Mon, 02 Oct 2023 10:17:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnFz8-00CIh5-2o
	for barebox@lists.infradead.org;
	Mon, 02 Oct 2023 10:17:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qnFz6-0003TW-BK; Mon, 02 Oct 2023 12:17:04 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qnFz5-00AV2T-Ox; Mon, 02 Oct 2023 12:17:03 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qnFz5-009xLV-28;
	Mon, 02 Oct 2023 12:17:03 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon,  2 Oct 2023 12:16:53 +0200
Message-Id: <20231002101654.2373000-10-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231002101654.2373000-1-o.rempel@pengutronix.de>
References: <20231002101654.2373000-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_031706_908793_95325E8D 
X-CRM114-Status: GOOD (  11.38  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 09/10] net: lib: add ether_addr_inc() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add helper function to calculate Ethernet address by incriminating it.
This helper can be used for multiport devices like switches to generate
address for each port based on one stored address.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/net.h |  1 +
 net/lib.c     | 25 +++++++++++++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/include/net.h b/include/net.h
index a0ef8bee04..fe82451cc9 100644
--- a/include/net.h
+++ b/include/net.h
@@ -360,6 +360,7 @@ int setenv_ip(const char *name, IPaddr_t ip);
 
 int string_to_ethaddr(const char *str, u8 enetaddr[6]);
 void ethaddr_to_string(const u8 enetaddr[6], char *str);
+void ether_addr_inc(u8 *dst_addr, const u8 *src_addr, u32 increment);
 
 #ifdef CONFIG_NET_RESOLV
 int resolv(const char *host, IPaddr_t *ip);
diff --git a/net/lib.c b/net/lib.c
index d4536441bd..dc7d83bc6d 100644
--- a/net/lib.c
+++ b/net/lib.c
@@ -44,6 +44,31 @@ void ethaddr_to_string(const u8 enetaddr[ETH_ALEN], char *str)
 		 enetaddr[4], enetaddr[5]);
 }
 
+/**
+ * ether_addr_inc - Increment an Ethernet address.
+ * @dst_addr: Destination address to store the incremented address.
+ * @src_addr: Source address to be incremented.
+ * @increment: Value by which to increment the source address.
+ *
+ * This function increments the given source Ethernet address by
+ * the specified increment value, storing the result in the
+ * destination address.
+ */
+void ether_addr_inc(u8 *dst_addr, const u8 *src_addr, u32 increment)
+{
+	u32 value;
+	int i;
+
+	for(i = 0; i < 6; ++i)
+		dst_addr[i] = src_addr[i];
+
+	for(i = 5; i >= 0 && increment; --i) {
+		value = dst_addr[i] + increment;
+		dst_addr[i] = value & 0xFF;
+		increment = value >> 8;
+	}
+}
+
 int string_to_ip(const char *s, IPaddr_t *ip)
 {
 	IPaddr_t addr = 0;
-- 
2.39.2



