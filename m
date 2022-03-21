Delivery-date: Mon, 21 Mar 2022 10:27:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWEKD-001EqM-Em
	for lore@lore.pengutronix.de; Mon, 21 Mar 2022 10:27:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWEKF-0004sf-MF
	for lore@pengutronix.de; Mon, 21 Mar 2022 10:27:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKWmPDF0fTyTQ8C6BMX63ioWGvE5C4o4JBV+yY7k+zc=; b=MYM63UBsDFLDr3
	cLkUOx244oeCBI2VZKyssOT61ftnp1DSSm7VY/EFrWX1ebcCrMIkjDvW7gCzX4JU9asorwJvRPOAY
	XYWKHQGuGvJxdEv5yxCMaSf6Vd5GE/kwn44/YlEk8qhZksF++PvWpvHHebpz/FF4oap6hqYszuc8L
	Ko5rwXfkiAwZjCVWRuZ1Kz1Kghgrq1ATaLsYKYp4bx5jfi/k6LNr84hxTpu2TiOmiM/6gAlr/OL6F
	R+71TE0GnpwobSdB7HojK30Do6Vb81nojBNP8Uz5LFBjIFojKcYvSi0lu94pbf3gc2QY0hyVklk0b
	GCxpXGJEcnpirRVmNY1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWEIw-0079P9-QZ; Mon, 21 Mar 2022 09:26:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWEIk-0079JS-2i
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 09:26:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nWEIi-0004CT-Da; Mon, 21 Mar 2022 10:26:08 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nWEIh-0067nD-PG; Mon, 21 Mar 2022 10:26:07 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 21 Mar 2022 10:25:58 +0100
Message-Id: <20220321092606.1459834-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220321092606.1459834-1-o.rempel@pengutronix.de>
References: <20220321092606.1459834-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_022610_228799_B127E677 
X-CRM114-Status: GOOD (  10.86  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 1/9] net: add RX preprocessor support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add callback for optional rx_preprocessor. This is needed to add DSA
switch support and demultiplex traffic received from different switch ports.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/net.h | 3 +++
 net/net.c     | 6 ++++++
 2 files changed, 9 insertions(+)

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
index fdb9ab826c..dd2ceb396d 100644
--- a/net/net.c
+++ b/net/net.c
@@ -708,6 +708,12 @@ int net_receive(struct eth_device *edev, unsigned char *pkt, int len)
 		goto out;
 	}
 
+	if (edev->rx_preprocessor) {
+		ret = edev->rx_preprocessor(edev, &pkt, &len);
+		if (ret == -ENOMSG)
+			return 0;
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

