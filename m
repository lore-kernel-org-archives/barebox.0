Delivery-date: Mon, 11 Aug 2025 14:30:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfy-009KqM-1U
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfZ-0006fP-12
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tmijy/oe0bloVgp+lUqmsPmO6FXaBUATPFz/y79je3s=; b=MO0iRw2rvg1KykbDjxDuFKwuD9
	zrY87Cv7j8e+k/tMCxEC6Dj5DhqDA8XzTbIF6YABG+w15xc2DXpOswXb7VzwlGjmW0MIMXMew76K+
	b+h8tdOBbLU5hLDejiD8yW2ygonkk+M7X5GnSBE+RYpDVGYkIiZjxsth3gmIPzxMs0boMvwjjYmNE
	kHUtb+3AOutiAACDxYzS+D9i8/QEe5ennvqRXsnI0/euwXDHzKDPMkqjUIdUHeNvfdD1qQSt9sUOB
	g8gPXv+I6a8kQiLb7cjYX5YZM8NQV7Wk6WMc2HypnVR1Y77tP3zUynIUb3CMyN/YYXNEXyKg+vagk
	RfqsaDJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulReH-00000007eaS-0jih;
	Mon, 11 Aug 2025 12:29:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdk-00000007ddc-16wc
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdi-0004WP-NS; Mon, 11 Aug 2025 14:28:34 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:15 +0200
Message-Id: <20250811122824.1667791-36-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052836_327888_227E1EE0 
X-CRM114-Status: UNSURE (   9.93  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 35/44] net: dsa: export dsa_switch_list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This list will be used by the upcoming bfetch command to
determine whether the running barebox has any DSA drivers bound.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/net/dsa.c | 4 ++++
 include/dsa.h     | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
index 537e9dd72ac6..667297e8fea3 100644
--- a/drivers/net/dsa.c
+++ b/drivers/net/dsa.c
@@ -6,6 +6,8 @@
 #include <of_net.h>
 #include <param.h>
 
+LIST_HEAD(dsa_switch_list);
+
 u32 dsa_user_ports(struct dsa_switch *ds)
 {
 	u32 mask = 0;
@@ -472,6 +474,8 @@ int dsa_register_switch(struct dsa_switch *ds)
 
 	ds->tx_buf = dma_alloc(DSA_PKTSIZE);
 
+	list_add_tail(&ds->list, &dsa_switch_list);
+
 	return 0;
 }
 EXPORT_SYMBOL_GPL(dsa_register_switch);
diff --git a/include/dsa.h b/include/dsa.h
index ecf7c4f429f3..b106d5474f7b 100644
--- a/include/dsa.h
+++ b/include/dsa.h
@@ -7,6 +7,7 @@
 #define __DSA_H__
 
 #include <linux/phy.h>
+#include <linux/list.h>
 #include <net.h>
 
 /**
@@ -88,6 +89,7 @@ struct dsa_switch {
 	u32 phys_mii_mask;
 	void *priv;
 	u32 forwarding_enable;
+	struct list_head list;
 };
 
 static inline struct dsa_port *dsa_to_port(struct dsa_switch *ds, int p)
@@ -98,6 +100,8 @@ static inline struct dsa_port *dsa_to_port(struct dsa_switch *ds, int p)
 	return ds->dp[p];
 }
 
+extern struct list_head dsa_switch_list;
+
 int dsa_register_switch(struct dsa_switch *ds);
 u32 dsa_user_ports(struct dsa_switch *ds);
 
-- 
2.39.5



