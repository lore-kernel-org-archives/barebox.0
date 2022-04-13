Delivery-date: Wed, 13 Apr 2022 10:24:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neYIQ-000W1i-Rp
	for lore@lore.pengutronix.de; Wed, 13 Apr 2022 10:24:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neYIN-0002IX-6u
	for lore@pengutronix.de; Wed, 13 Apr 2022 10:24:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PRVPlNxdJlhIAR0Ngi/AaWBllzh3RSPs9c4ayAQhwlc=; b=NDNOWddoOym8Bf
	Jir6LPhKv/lUNlMIzPjpsjeFwdkeNe3fmD3Vd24iS9Vlla4Z7ROArEMPXUz2ydVyvNx4gaUgK2EAH
	MV/cr4mHj2fmlgM/gPSLJy9n7rAi/xk6/XjE6w+xF0uSG+bBlLhaCI2pzNMHnam1CU+OXluqIOo9x
	3wLMfo0s8hn6rca6459T/aLdQHWufD/mo8L4GGVdVSZU5TKyLgPpcZlE1myN+Ik0v0DBKcw8O90FZ
	yGyp9ny2yPpaEMnUckObp+xb45wL0kkgdpZ4PxUqPzAymQJ/QJ9Y0/CjkGr8IslDSam4dFlhWQtoY
	Ky0sdj0RuFzIbylHhe1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neYGs-0000f6-FE; Wed, 13 Apr 2022 08:22:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neYGS-0000Tf-Rg
 for barebox@lists.infradead.org; Wed, 13 Apr 2022 08:22:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1neYGP-0001Za-E4; Wed, 13 Apr 2022 10:22:09 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1neYGP-002kCn-7q; Wed, 13 Apr 2022 10:22:07 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1neYGM-001nkg-Cl; Wed, 13 Apr 2022 10:22:06 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 13 Apr 2022 10:21:52 +0200
Message-Id: <20220413082205.429509-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220413082205.429509-1-o.rempel@pengutronix.de>
References: <20220413082205.429509-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_012212_933934_85E45A46 
X-CRM114-Status: GOOD (  11.22  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v5 01/14] net: add RX preprocessor support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add callback for optional rx_preprocessor. This is needed to add DSA
switch support and demultiplex traffic received from different switch ports.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/net.h |  3 +++
 net/net.c     | 11 +++++++++++
 2 files changed, 14 insertions(+)

diff --git a/include/net.h b/include/net.h
index aad28e4f4c..ca9b6cd61e 100644
--- a/include/net.h
+++ b/include/net.h
@@ -44,9 +44,12 @@ struct eth_device {
 	void (*halt) (struct eth_device*);
 	int  (*get_ethaddr) (struct eth_device*, u8 adr[6]);
 	int  (*set_ethaddr) (struct eth_device*, const unsigned char *adr);
+	int  (*rx_preprocessor) (struct eth_device*, unsigned char **packet,
+				 int *length);
 
 	struct eth_device *next;
 	void *priv;
+	void *rx_preprocessor_priv;
 
 	/* phy device may attach itself for hardware timestamping */
 	struct phy_device *phydev;
diff --git a/net/net.c b/net/net.c
index fdb9ab826c..0b8e4caa0e 100644
--- a/net/net.c
+++ b/net/net.c
@@ -708,6 +708,17 @@ int net_receive(struct eth_device *edev, unsigned char *pkt, int len)
 		goto out;
 	}
 
+	if (edev->rx_preprocessor) {
+		ret = edev->rx_preprocessor(edev, &pkt, &len);
+		if (ret == -ENOMSG)
+			return 0;
+		if (ret) {
+			pr_debug("%s: rx_preprocessor failed %pe\n", __func__,
+				 ERR_PTR(ret));
+			return ret;
+		}
+	}
+
 	switch (et_protlen) {
 	case PROT_ARP:
 		ret = net_handle_arp(edev, pkt, len);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

