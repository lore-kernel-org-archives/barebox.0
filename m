Delivery-date: Mon, 07 Aug 2023 19:09:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qT3jH-00BGi1-Of
	for lore@lore.pengutronix.de; Mon, 07 Aug 2023 19:09:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qT3jG-0000cx-3G
	for lore@pengutronix.de; Mon, 07 Aug 2023 19:09:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PLtC1QNIcc8AwDsGQlX4ao6YmlgNG6wUCHHAlF/xunE=; b=N3yVtI44W1yqpUI/Z5QH7STgNX
	z76YWSgZ9VtFGtCgV65emap718qZD+DUmqfJhqFlOXq790iBicJyIFrahmZgqAVsVRFopsJ4NSyIE
	dvmriXnkuSZ9t7AUwG0hdsyxqUfJ2WPOdJdGK+UA3/XGBTfIgFN/uiJLiHPCtq33RrY1qfaJMQOh2
	VdyVMwJHR1Pi/4XMSvszjtMDY6vmAyNORbycKwHT8wYAdgNscLZpAgLf1AeAnjO7+RFwEWuuFbjN2
	tqrWC+V4DIdtR2I7+6kXDMm29tOqgrYvC/yUqcLdeXE4rOV/sISmt39fP5HnhnWmx3iXIxHaJXPkY
	j0W2wC7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qT3hw-000Ghn-16;
	Mon, 07 Aug 2023 17:07:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qT3ht-000GhA-0k
	for barebox@lists.infradead.org;
	Mon, 07 Aug 2023 17:07:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qT3ho-0000Vj-Jk
	for barebox@lists.infradead.org; Mon, 07 Aug 2023 19:07:44 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  7 Aug 2023 19:07:43 +0200
Message-Id: <20230807170743.149799-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_100749_288273_771A1F93 
X-CRM114-Status: UNSURE (   9.85  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] of: of_net: add support to parse ASCII encoded mac-addresses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some vendors like Polyhex store the MAC address ASCII encoded instead of
using the plain 6-byte MAC address. This commit adds the support to
decode the 12-byte ASCII encoded MAC addresses.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/of_net.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/of/of_net.c b/drivers/of/of_net.c
index 75a24073da51..4e74986cdda8 100644
--- a/drivers/of/of_net.c
+++ b/drivers/of/of_net.c
@@ -79,6 +79,8 @@ static int of_get_mac_addr(struct device_node *np, const char *name, u8 *addr)
 	return -ENODEV;
 }
 
+#define ETH_ALEN_ASCII	12
+
 int of_get_mac_addr_nvmem(struct device_node *np, u8 *addr)
 {
 	struct nvmem_cell *cell;
@@ -98,6 +100,23 @@ int of_get_mac_addr_nvmem(struct device_node *np, u8 *addr)
 	if (IS_ERR(mac))
 		return PTR_ERR(mac);
 
+	if (len == ETH_ALEN_ASCII) {
+		u8 *mac_new;
+		int ret;
+
+		mac_new = kzalloc(sizeof("xx:xx:xx:xx:xx:xx"), GFP_KERNEL);
+		ret = hex2bin(mac_new, mac, ETH_ALEN);
+		if (ret) {
+			kfree(mac_new);
+			kfree(mac);
+			return ret;
+		}
+
+		kfree(mac);
+		mac = mac_new;
+		len = ETH_ALEN;
+	}
+
 	if (len != ETH_ALEN || !is_valid_ether_addr(mac)) {
 		kfree(mac);
 		return -EINVAL;
-- 
2.39.2



