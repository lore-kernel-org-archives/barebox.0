Delivery-date: Tue, 26 Nov 2024 16:18:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxKP-000fOL-2F
	for lore@lore.pengutronix.de;
	Tue, 26 Nov 2024 16:18:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxKP-0004H2-It
	for lore@pengutronix.de; Tue, 26 Nov 2024 16:18:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yUgR7N0Nxwx2dILDm7sFIdWOHazYHeomD+MqiAxyq7E=; b=gv8kUHVL11bVRwu3CTz1+aSQir
	TM30jDZUDICeZbyjOuMe0R748P5d9LnqnhNVGj9sCSJN8/89bN9L9fvvv0cXBOB0G4FdmxIlKI3bE
	wi1jj4+hBkdUefdS5OUy1EEFj5LHbsNed+zNhjQEfzw28Yu4pULTmUOYdsoLdZH0ZpM/A1dnTRvPs
	np/Y7wCtKxMCu0nMkcKFD1ElCKSr2iLJQ1aL0UovevHSB/s8mEmd+s+l67FVeDpcsS+zGQFheYyxZ
	zUMIFDYyKP3x4U6KIauMTzVXydoBQj1m65n5KOUPRvibTG70EK9gEiYZ0RT2k9xxsuVihoaLesAir
	tiZX6tHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxK2-0000000AyS4-0Gd1;
	Tue, 26 Nov 2024 15:17:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxJy-0000000AyPs-3hal
	for barebox@lists.infradead.org;
	Tue, 26 Nov 2024 15:17:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxJx-0003vB-FM; Tue, 26 Nov 2024 16:17:45 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxJw-000Grl-1c;
	Tue, 26 Nov 2024 16:17:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxJw-00FD3f-1q;
	Tue, 26 Nov 2024 16:17:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Nov 2024 16:17:41 +0100
Message-Id: <20241126151744.3621717-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241126151744.3621717-1-a.fatoum@pengutronix.de>
References: <20241126151744.3621717-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_071746_913973_8D763C96 
X-CRM114-Status: UNSURE (   9.79  )
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
Subject: [PATCH 1/4] net: add ethaddr sequence handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of storing every MAC address in full, boards may elect
to store a base address and increment it N times. Add a helper
to iterate over such an Ethernet address sequence. Example usage:

  const u8 *eth_addr;
  u8 eth_base[ETH_ALEN] = "\x00\x01\x02\x03\x04\x05";
  int i = 0, eth_count = 4;

  for_each_seq_ethaddr(eth_addr, eth_base, &eth_count)
          eth_register_ethaddr(i++, eth_addr);

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/net.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/net.h b/include/net.h
index a04ed5b0ab92..1b6995b50043 100644
--- a/include/net.h
+++ b/include/net.h
@@ -516,6 +516,18 @@ static inline void eth_addr_add(u8 *addr, long offset)
 	u64_to_ether_addr(u, addr);
 }
 
+#define for_each_seq_ethaddr(eth_addr, eth_base, eth_count) \
+	for (eth_addr = *eth_count ? eth_base : NULL; eth_addr; eth_addr = eth_addr_seq_next(eth_base, eth_count))
+
+static inline const u8 *eth_addr_seq_next(u8 eth_base[6], unsigned *eth_count)
+{
+	if (--(*eth_count) <= 0)
+		return NULL;
+
+	eth_addr_inc(eth_base);
+	return eth_base;
+}
+
 typedef void rx_handler_f(void *ctx, char *packet, unsigned int len);
 
 struct eth_device *eth_get_byname(const char *name);
-- 
2.39.5



