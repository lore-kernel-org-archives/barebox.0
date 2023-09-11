Delivery-date: Mon, 11 Sep 2023 18:00:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfjLD-00BfS0-8v
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 18:00:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfjLB-0004Lk-GP
	for lore@pengutronix.de; Mon, 11 Sep 2023 18:00:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/YJwfnrYYYj4WXshNFIPKC2GkElfIbJfLqYPTj6CGZQ=; b=0LEBsG/TJCFlqzlbE3uDxU+bpz
	MxU2Ec3Jq0vX0PM9q21B2fCH4FYuaSIv3yKXMKZ4bUMdzBkSUI1Kx6FELAc1RZ1sJC2FfUMpdH5K2
	dTntzFskunGRVyqPzOF44FnEKURVDKoV5NKYbCVJvvbHhpJgXM4jYlOhN1nBMONpOwoZ+Rbf/BqN9
	iLvBfzVzGbSc1s2W1+KTVPlRWPHpSTKQz0R0IkpDFJCgwJ1TFDVhIGi5nc8vKvsbZyqJhV6rfWewr
	3NrdW6Mw8IANbVVwgnY3h+GmcWN8n9HLQ2e5qlstP3p+XNe57Qkhqo/pP5d5xxFoKvYoUX1iEhlH9
	ojHfvoyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfjK4-000xJv-2h;
	Mon, 11 Sep 2023 15:59:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfjK1-000xIV-1x
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 15:59:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfjK0-0003yg-3O; Mon, 11 Sep 2023 17:59:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfjJz-005aH2-5b; Mon, 11 Sep 2023 17:59:31 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfjJy-00Ft0S-2h;
	Mon, 11 Sep 2023 17:59:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 17:59:26 +0200
Message-Id: <20230911155927.3786335-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911155927.3786335-1-a.fatoum@pengutronix.de>
References: <20230911155927.3786335-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_085933_641300_D7342C0B 
X-CRM114-Status: GOOD (  13.05  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] net: import Linux eth_addr_inc/dec/add helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux has a number of helpers to do arithmetic on Ethernet addresses,
which are useful for generating sequential MAC addresses. Import them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/net.h | 71 +++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/include/net.h b/include/net.h
index 5e029c71f29e..a0ef8bee0404 100644
--- a/include/net.h
+++ b/include/net.h
@@ -449,6 +449,77 @@ static inline int is_valid_ether_addr(const u8 *addr)
 	return !is_multicast_ether_addr(addr) && !is_zero_ether_addr(addr);
 }
 
+/**
+ * ether_addr_to_u64 - Convert an Ethernet address into a u64 value.
+ * @addr: Pointer to a six-byte array containing the Ethernet address
+ *
+ * Return a u64 value of the address
+ */
+static inline u64 ether_addr_to_u64(const u8 *addr)
+{
+	u64 u = 0;
+	int i;
+
+	for (i = 0; i < ETH_ALEN; i++)
+		u = u << 8 | addr[i];
+
+	return u;
+}
+
+/**
+ * u64_to_ether_addr - Convert a u64 to an Ethernet address.
+ * @u: u64 to convert to an Ethernet MAC address
+ * @addr: Pointer to a six-byte array to contain the Ethernet address
+ */
+static inline void u64_to_ether_addr(u64 u, u8 *addr)
+{
+	int i;
+
+	for (i = ETH_ALEN - 1; i >= 0; i--) {
+		addr[i] = u & 0xff;
+		u = u >> 8;
+	}
+}
+
+/**
+ * eth_addr_dec - Decrement the given MAC address
+ *
+ * @addr: Pointer to a six-byte array containing Ethernet address to decrement
+ */
+static inline void eth_addr_dec(u8 *addr)
+{
+	u64 u = ether_addr_to_u64(addr);
+
+	u--;
+	u64_to_ether_addr(u, addr);
+}
+
+/**
+ * eth_addr_inc() - Increment the given MAC address.
+ * @addr: Pointer to a six-byte array containing Ethernet address to increment.
+ */
+static inline void eth_addr_inc(u8 *addr)
+{
+	u64 u = ether_addr_to_u64(addr);
+
+	u++;
+	u64_to_ether_addr(u, addr);
+}
+
+/**
+ * eth_addr_add() - Add (or subtract) an offset to/from the given MAC address.
+ *
+ * @offset: Offset to add.
+ * @addr: Pointer to a six-byte array containing Ethernet address to increment.
+ */
+static inline void eth_addr_add(u8 *addr, long offset)
+{
+	u64 u = ether_addr_to_u64(addr);
+
+	u += offset;
+	u64_to_ether_addr(u, addr);
+}
+
 typedef void rx_handler_f(void *ctx, char *packet, unsigned int len);
 
 struct eth_device *eth_get_byname(const char *name);
-- 
2.39.2



