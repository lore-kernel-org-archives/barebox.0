Delivery-date: Fri, 16 Sep 2022 14:08:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZA8m-006eLB-2H
	for lore@lore.pengutronix.de; Fri, 16 Sep 2022 14:08:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZA8k-0005zM-94
	for lore@pengutronix.de; Fri, 16 Sep 2022 14:08:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=04pDZWy2wxMqT345yo0ob0Yt3NZ65m1hV/VdgHdorzM=; b=2vE7gduWGNBOSj19gnqUOCF6lk
	GSpGeRX53ALadxaMwqG6U+TTAHn+bpevr4t6nrxDxwvs/lUs7KPbI3adiAZeK8444XBINtWu90sic
	PAB1nyz28XD6ICb4RUszxAikYsAvVuP+/f6TbQaojd2DQPmbFwjQ1YtQCu9epWOamQx5+1066LOyN
	sDXBIa9Xfo0KJ92YLxYQRkY+21zP/YPhMggVw3JoJqdgR7ppsAsMHqz6zMJ9L6+BRxW+d4ejKN5Rv
	gmyWchCl5h926Igmj4dvGWl/8QdECv9G2yTOC5oK+ZbQO47ZTkEswqreA+bttFlhwGvwbMT1WTc6Q
	PL4+i88g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZA78-00D18A-Gm; Fri, 16 Sep 2022 12:06:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZA71-00D12R-87
	for barebox@lists.infradead.org; Fri, 16 Sep 2022 12:06:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oZA6w-0005on-S4; Fri, 16 Sep 2022 14:06:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oZA6x-0014cL-Kf; Fri, 16 Sep 2022 14:06:22 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oZA6v-00BMdU-Hk; Fri, 16 Sep 2022 14:06:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Sep 2022 14:06:20 +0200
Message-Id: <20220916120620.2708538-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_050627_361574_91E7D3E7 
X-CRM114-Status: GOOD (  11.82  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: Use dma_alloc to allocate net packet
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

network packets are often DMAed by the network drivers, so allocate
them with dma_alloc() rather than assuming that an arbitrarily chosen
alignment is sufficient

This fixes network transfers on a Rockchip RK3568 board which
occasionally sent out packets with corrupt data.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/net.h b/include/net.h
index b50b6e76c8..310bf5169d 100644
--- a/include/net.h
+++ b/include/net.h
@@ -19,6 +19,7 @@
 #include <stdlib.h>
 #include <clock.h>
 #include <led.h>
+#include <dma.h>
 #include <slice.h>
 #include <xfuncs.h>
 #include <linux/phy.h>
@@ -470,7 +471,7 @@ struct net_connection {
 
 static inline char *net_alloc_packet(void)
 {
-	return xmemalign(32, PKTSIZE);
+	return dma_alloc(PKTSIZE);
 }
 
 struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
-- 
2.30.2



