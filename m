Delivery-date: Thu, 07 Apr 2022 11:17:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOGQ-00AI21-QY
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 11:17:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOGN-0001n2-1m
	for lore@pengutronix.de; Thu, 07 Apr 2022 11:17:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKWmPDF0fTyTQ8C6BMX63ioWGvE5C4o4JBV+yY7k+zc=; b=yljiQM/0vzCK8R
	YTjr5C43dUZ8ZTDgyWj1UkF/EEoNlWH+/4bnflHF1AWlTlube0a8WAlIO5Tn8YwfJW4bnGQl+DHkJ
	TLLw+zj9F5tB60okH85g+Edxu++eov4Zp7uwCmFJ4/2A32gi5DtIFXreRAZoElS/q7RB/VimTWm8V
	fq4IV3FTv2UfS9WE84GcEHBelrEllpVCcz5s6X4p1aCYNUvJDuZONJa9BF9S4U90Y+bxFfKohZC+5
	f6sz20AiTlDYweEQJQUW2tQlDSy8NH7Lh0pcmaoNOpBk+1lNoT0ayXHfLH6nd6238ErCQkueEZ6AS
	PIDIxR1rOjKi6vXJ4OlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOEn-00Aklt-7y; Thu, 07 Apr 2022 09:15:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncNx2-00AcvT-3V
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 08:57:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNwy-0005oz-Lg; Thu, 07 Apr 2022 10:57:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNwz-001Zt5-8W; Thu, 07 Apr 2022 10:57:07 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNww-003zUK-Is; Thu, 07 Apr 2022 10:57:06 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  7 Apr 2022 10:56:54 +0200
Message-Id: <20220407085705.951285-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220407085705.951285-1-o.rempel@pengutronix.de>
References: <20220407085705.951285-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_015712_204275_B4D4213F 
X-CRM114-Status: GOOD (  11.25  )
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
Subject: [PATCH v2 01/12] net: add RX preprocessor support
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

