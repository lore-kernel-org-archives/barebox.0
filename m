Delivery-date: Wed, 13 Mar 2024 12:07:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMSc-004IQU-1I
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 12:07:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMSb-0002tL-Qb
	for lore@pengutronix.de; Wed, 13 Mar 2024 12:07:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sFGhZArabXWHAFVQvAt9G29Mcrc2IJ21xwauavIy++4=; b=WpmiIy0z+zaqTa7fe1TPbRoBEJ
	SpjN7ultfWmqHRX9hzuxOIpYY8Y/iNkovZz9UFckG75FCJxBbo0ua8DsChrMuv6jjOMzDBZgpqb/K
	LJWLEiqQFPnu/2+Kk59ny5cec9nNC+pND9JEJ/7b/dKaa8s7zQ+OCJzyfM15Bdd2gxQa6s+Pfi3F1
	Olq4hveStQn1k/Bp1yOOrH7ECcv5HfB5c/AjHHArLX7U9+9eRXvfju1DGGI2xj57oIzAfslGB3aCL
	njsLjZ6+cfWV/689erazhz+867pz+wuiO1f8uztEISwP6m1Mf+qFdm5BHufYqsfkiNUiNV58VIRLm
	WsJ4GPmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMS6-00000009pNx-16FP;
	Wed, 13 Mar 2024 11:07:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMRv-00000009pFf-0DhK
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 11:07:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRt-0001sk-St; Wed, 13 Mar 2024 12:07:05 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRt-00665r-G3; Wed, 13 Mar 2024 12:07:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRs-004dIp-2u;
	Wed, 13 Mar 2024 12:07:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 12:07:00 +0100
Message-Id: <20240313110704.1095554-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313110704.1095554-1-a.fatoum@pengutronix.de>
References: <20240313110704.1095554-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_040707_183009_CB70BA61 
X-CRM114-Status: GOOD (  11.42  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/7] net: enc28j60: replace global NetRxPackets with per-interface allocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

NetRxPackets is a remnant of times, where a board had at most one
Ethernet controller. This is outdated and we should drop NetRxPackets.

The driver doesn't maintain a queue of packets, so let's just allocate
it per interface.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/enc28j60.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/enc28j60.c b/drivers/net/enc28j60.c
index 51556ae01366..9455c6f5ea99 100644
--- a/drivers/net/enc28j60.c
+++ b/drivers/net/enc28j60.c
@@ -46,6 +46,7 @@ struct enc28j60_net {
 	/* store MAC address here while hardware is in the reset state */
 	u8 hwaddr[ETH_ALEN];
 	struct mii_bus miibus;
+	void *rx_buffer;
 };
 
 /*
@@ -793,9 +794,9 @@ static void enc28j60_hw_rx(struct eth_device *edev)
 		/* copy the packet from the receive buffer */
 		enc28j60_mem_read(priv,
 			rx_packet_start(priv->next_pk_ptr),
-			len, NetRxPackets[0]);
+			len, priv->rx_buffer);
 
-		net_receive(edev, NetRxPackets[0], len);
+		net_receive(edev, priv->rx_buffer, len);
 	}
 
 	/*
@@ -931,6 +932,7 @@ static int enc28j60_probe(struct device *dev)
 	priv = xzalloc(sizeof(*priv));
 
 	priv->spi = (struct spi_device *)dev->type_data;
+	priv->rx_buffer = net_alloc_packet();
 
 	edev = &priv->edev;
 	edev->priv = priv;
-- 
2.39.2



